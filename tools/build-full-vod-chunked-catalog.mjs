import fs from 'node:fs/promises';
import path from 'node:path';
import zlib from 'node:zlib';
import { promisify } from 'node:util';

const gzip = promisify(zlib.gzip);

const args = new Map();
for (let i = 2; i < process.argv.length; i += 1) {
  const key = process.argv[i];
  const next = process.argv[i + 1];
  if (key.startsWith('--')) {
    args.set(key.slice(2), next && !next.startsWith('--') ? next : 'true');
    if (next && !next.startsWith('--')) i += 1;
  }
}

const tvRoot = path.resolve(args.get('tvRoot') || path.resolve(import.meta.dirname, '..'));
const catalogPath = path.resolve(args.get('catalog') || path.join(tvRoot, 'docs', 'data', 'iphone-vod-catalog.json'));
const reportPath = path.resolve(args.get('report') || path.join(tvRoot, 'docs', 'data', 'iphone-vod-catalog-report.json'));
const detailRoot = path.resolve(args.get('detailRoot') || path.join(tvRoot, 'docs', 'data', 'vod-detail'));
const includeAdult = args.get('includeAdult') !== 'false';
const sourceMatch = String(args.get('sourceMatch') || '').trim().toLowerCase();
const pageSize = Number(args.get('pageSize') || 100);
const maxSources = Number(args.get('maxSources') || 0);
const maxPagesPerSource = Number(args.get('maxPagesPerSource') || 0);
const sourceConcurrency = Number(args.get('sourceConcurrency') || 2);
const pageConcurrency = Number(args.get('pageConcurrency') || 8);
const timeoutMs = Number(args.get('timeoutMs') || 20000);
const keepExistingOnFailure = args.get('keepExistingOnFailure') !== 'false';
const detailOnly = args.get('detailOnly') === 'true';

const USER_AGENT = 'OKTV-full-chunked-catalog-builder/1.0';

function withTimeout() {
  return AbortSignal.timeout(timeoutMs);
}

async function readJson(file, fallback = null) {
  try {
    return JSON.parse(await fs.readFile(file, 'utf8'));
  } catch {
    return fallback;
  }
}

async function fetchText(url) {
  const res = await fetch(url, {
    redirect: 'follow',
    signal: withTimeout(),
    headers: {
      accept: 'application/json,text/plain,*/*',
      'user-agent': USER_AGENT,
    },
  });
  if (!res.ok) throw new Error(`HTTP ${res.status}`);
  return await res.text();
}

async function fetchJson(url) {
  const text = await fetchText(url);
  return JSON.parse(text);
}

function normalizeText(value, fallback = '') {
  return String(value ?? fallback)
    .replace(/\s+/g, ' ')
    .trim();
}

function addVodQuery(api, query) {
  const value = String(api || '').trim();
  if (!value) return '';
  if (value.endsWith('?') || value.endsWith('&')) return `${value}${query}`;
  return `${value}?${query}`;
}

function slugify(value, fallback = 'source') {
  return (
    normalizeText(value, fallback)
      .toLowerCase()
      .normalize('NFKD')
      .replace(/[^\p{Letter}\p{Number}]+/gu, '-')
      .replace(/^-+|-+$/g, '')
      .slice(0, 80) || fallback
  );
}

function imageUrl(baseUrl, value) {
  const raw = normalizeText(value);
  if (!raw) return '';
  const first = raw.split(/[,\s]+/).find(Boolean) || raw;
  try {
    return new URL(first, baseUrl).toString().replace(/^http:/i, 'https:');
  } catch {
    return first.replace(/^http:/i, 'https:');
  }
}

function parseYear(value) {
  const match = String(value || '').match(/(?:19|20)\d{2}/);
  return match ? match[0] : '';
}

function parseNumber(value) {
  const number = Number(String(value || '').match(/\d+(?:\.\d+)?/)?.[0] || 0);
  return Number.isFinite(number) ? number : 0;
}

function parseEpoch(value) {
  const raw = String(value || '').trim();
  if (!raw) return 0;
  const time = Date.parse(raw.replace(/-/g, '/'));
  return Number.isFinite(time) ? time : 0;
}

function normalizeArea(value) {
  return normalizeText(value)
    .replace(/中国大陆|中國大陸|大陆|大陸|内地|內地/g, '大陸')
    .replace(/中国香港|中國香港/g, '香港')
    .replace(/中国台湾|中國台灣/g, '台灣')
    .replace(/韩国|韓國/g, '韓國')
    .replace(/泰国|泰國/g, '泰國')
    .replace(/欧美|歐美|美国|美國|英国|英國/g, '歐美');
}

function splitClasses(value, fallback = '') {
  return [...new Set(`${value || ''},${fallback || ''}`.split(/[,\s/、]+/).map(normalizeText).filter(Boolean))];
}

function kindFromTypeName(typeName, sourceAdult = false) {
  const text = normalizeText(typeName);
  if (sourceAdult) return 'adult';
  if (/动漫|動漫|動畫|动画|番剧|番劇|卡通/i.test(text)) return 'anime';
  if (/综艺|綜藝|真人秀|脱口秀|脫口秀/i.test(text)) return 'variety';
  if (/短剧|短劇|微短剧|微短劇/i.test(text)) return 'short';
  if (/连续剧|連續劇|电视剧|電視劇|国产剧|國產劇|港台剧|日剧|韓剧|韩剧|泰剧|欧美剧|劇集|剧集/i.test(text)) {
    return 'series';
  }
  return 'movie';
}

function isDirectMediaUrl(value) {
  return /\.(m3u8|mp4|m4v|webm|mov|flv|ts)(?:$|[?#])/i.test(String(value || '').trim());
}

function parseEpisodes(playUrl) {
  const raw = String(playUrl || '').trim();
  if (!raw) return [];
  const groups = raw.split('$$$').filter(Boolean);
  const firstUsableGroup = groups.find((group) => /https?:\/\//i.test(group)) || groups[0] || '';
  return firstUsableGroup
    .split('#')
    .map((part, index) => {
      const bits = part.split('$');
      const url = bits.length > 1 ? bits.at(-1) : part;
      const name = bits.length > 1 ? bits.slice(0, -1).join('$') : `第${index + 1}集`;
      const cleanUrl = normalizeText(url);
      if (!/^https?:\/\//i.test(cleanUrl)) return null;
      if (!isDirectMediaUrl(cleanUrl)) return null;
      return {
        name: normalizeText(name, `第${index + 1}集`),
        url: cleanUrl,
      };
    })
    .filter(Boolean);
}

function textId(input, index = 0) {
  const value = normalizeText(input, `item-${index}`)
    .toLowerCase()
    .normalize('NFKD')
    .replace(/[^\p{Letter}\p{Number}]+/gu, '-')
    .replace(/^-+|-+$/g, '');
  return `${value || 'item'}-${index + 1}`;
}

function normalizeVodItem(item, source, sourceSlug, page) {
  const title = normalizeText(item.vod_name ?? item.name ?? item.title);
  if (!title) return null;
  const typeName = normalizeText(item.type_name || '');
  const episodes = parseEpisodes(item.vod_play_url || item.play_url || item.url);
  if (episodes.length === 0) return null;

  const year = parseYear(item.vod_year || item.year || item.vod_time || item.update_time || item.vod_pubdate);
  const area = normalizeArea(item.vod_area || item.area || item.region || '');
  const genre = splitClasses(item.vod_class || item.class || item.tag, typeName);
  const score = parseNumber(item.vod_score || item.score || item.douban_score);
  const views = parseNumber(item.vod_hits || item.hits || item.views || item.play_count || item.vod_up);
  const updatedAt = normalizeText(item.vod_time || item.update_time || item.vod_pubdate || item.created_at || '');
  const vodId = String(item.vod_id ?? item.id ?? '');
  const id = `${source.id}::${normalizeText(vodId || title)}`;

  return {
    id: textId(id, 0),
    sourceId: source.id,
    sourceName: source.name,
    vodId,
    title,
    originalName: normalizeText(item.vod_en || item.original_name || ''),
    kind: kindFromTypeName(`${typeName} ${genre.join(' ')}`, source.adult),
    categoryId: String(item.type_id || ''),
    categoryName: typeName,
    year,
    area,
    genre,
    remarks: normalizeText(item.vod_remarks || item.remarks || item.note || ''),
    actor: normalizeText(item.vod_actor || item.actor || ''),
    director: normalizeText(item.vod_director || item.director || ''),
    content: normalizeText(item.vod_content || item.content || item.desc || '').slice(0, 220),
    score,
    views,
    hot: views + score * 100 + parseEpoch(updatedAt) / 100000000,
    updatedAt,
    poster: imageUrl(source.api, item.vod_pic || item.pic || item.cover || item.logo),
    episodes,
    episodeCount: episodes.length,
    playable: true,
    adult: Boolean(source.adult),
    lazyEpisodes: true,
    detailPage: page,
    detailPath: `vod-detail/${sourceSlug}/page-${String(page).padStart(4, '0')}.json.gz`,
  };
}

function compactItem(item) {
  const { episodes, ...rest } = item;
  return rest;
}

function extractArray(payload) {
  if (Array.isArray(payload?.list)) return payload.list;
  if (Array.isArray(payload?.data)) return payload.data;
  if (Array.isArray(payload?.videos)) return payload.videos;
  if (Array.isArray(payload)) return payload;
  return [];
}

async function mapLimit(items, limit, worker) {
  const results = new Array(items.length);
  let next = 0;
  const workers = Array.from({ length: Math.min(limit, items.length) }, async () => {
    while (next < items.length) {
      const current = next++;
      results[current] = await worker(items[current], current);
    }
  });
  await Promise.all(workers);
  return results;
}

async function fetchSourcePage(source, sourceSlug, page) {
  const payload = await fetchJson(addVodQuery(source.api, `ac=detail&pg=${page}&pagesize=${pageSize}`));
  const rows = extractArray(payload)
    .map((item) => normalizeVodItem(item, source, sourceSlug, page))
    .filter((item) => item && item.poster);
  return {
    page,
    pagecount: Number(payload.pagecount || payload.pageCount || 1) || 1,
    total: Number(payload.total || payload.totalCount || 0) || 0,
    limit: Number(payload.limit || 0) || 0,
    rows,
  };
}

async function writeDetailPage(source, sourceSlug, pageResult, pagecount) {
  const sourceDir = path.join(detailRoot, sourceSlug);
  await fs.mkdir(sourceDir, { recursive: true });
  const detailPayload = {
    generatedAt: new Date().toISOString(),
    sourceId: source.id,
    sourceName: source.name,
    sourceKey: source.key,
    api: source.api,
    page: pageResult.page,
    pagecount,
    total: pageResult.total,
    items: pageResult.rows,
  };
  const compressed = await gzip(Buffer.from(JSON.stringify(detailPayload), 'utf8'), { level: 9 });
  await fs.writeFile(path.join(sourceDir, `page-${String(pageResult.page).padStart(4, '0')}.json.gz`), compressed);
}

function matchesSource(source) {
  if (!sourceMatch) return true;
  return normalizeText([source.id, source.key, source.name, source.api, source.host, source.origin].join(' ')).toLowerCase().includes(sourceMatch);
}

async function indexSource(source) {
  const sourceSlug = slugify(`${source.host || source.key || source.name}-${source.id}`, 'source');
  const sourceDir = path.join(detailRoot, sourceSlug);
  await fs.rm(sourceDir, { recursive: true, force: true });

  const first = await fetchSourcePage(source, sourceSlug, 1);
  const pagecount = maxPagesPerSource > 0 ? Math.min(first.pagecount, maxPagesPerSource) : first.pagecount;
  const remainingPages = Array.from({ length: Math.max(0, pagecount - 1) }, (_, index) => index + 2);
  const rest = await mapLimit(remainingPages, pageConcurrency, (page) => fetchSourcePage(source, sourceSlug, page));
  const pages = [first, ...rest].sort((a, b) => a.page - b.page);
  const compact = [];
  const seen = new Set();
  let playableCount = 0;
  let total = 0;

  for (const page of pages) {
    await writeDetailPage(source, sourceSlug, page, pagecount);
    total = Math.max(total, page.total);
    for (const item of page.rows) {
      const key = item.vodId || `${item.title}|${item.poster}`;
      if (seen.has(key)) continue;
      seen.add(key);
      compact.push(compactItem(item));
      playableCount += 1;
    }
  }

  console.log(`${source.name}: ${compact.length}/${total || compact.length} items, ${pages.length} pages`);
  return {
    source: {
      ...source,
      itemCount: compact.length,
      playableCount,
      sourceTotalCount: total || compact.length,
      indexed: compact.length > 0,
      detailMode: 'chunked-json-gzip',
      detailPathPattern: `vod-detail/${sourceSlug}/page-{page}.json.gz`,
      checks: [
        {
          label: 'full-latest-pages',
          ok: true,
          count: compact.length,
          pages: pages.length,
          pagecount,
          total: total || compact.length,
        },
      ],
      error: '',
    },
    items: detailOnly ? [] : compact,
  };
}

function recomputeTotals(items, sources) {
  return {
    sources: sources.length,
    indexedSources: sources.filter((source) => source.indexed).length,
    items: items.length,
    playableItems: items.filter((item) => item.playable).length,
    movies: items.filter((item) => item.kind === 'movie').length,
    series: items.filter((item) => item.kind === 'series').length,
    variety: items.filter((item) => item.kind === 'variety').length,
    anime: items.filter((item) => item.kind === 'anime').length,
    short: items.filter((item) => item.kind === 'short').length,
    adult: items.filter((item) => item.kind === 'adult' || item.adult).length,
  };
}

function recomputeFilters(items) {
  return {
    years: [...new Set(items.map((item) => item.year).filter(Boolean))].sort((a, b) => b.localeCompare(a)).slice(0, 24),
    areas: [...new Set(items.map((item) => item.area).filter(Boolean))].sort((a, b) => a.localeCompare(b, 'zh-Hant')).slice(0, 28),
    genres: [...new Set(items.flatMap((item) => item.genre || []).filter(Boolean))]
      .sort((a, b) => a.localeCompare(b, 'zh-Hant'))
      .slice(0, 42),
  };
}

function sourceCheck(source) {
  return {
    id: source.id,
    name: source.name,
    type: source.type,
    api: source.api,
    origin: source.origin,
    adult: source.adult,
    indexable: source.indexable,
    indexed: source.indexed,
    itemCount: source.itemCount,
    playableCount: source.playableCount,
    sourceTotalCount: source.sourceTotalCount,
    error: source.error,
    checks: source.checks,
  };
}

const existingCatalog = await readJson(catalogPath);
if (!existingCatalog) throw new Error(`Catalog not found: ${catalogPath}`);

await fs.mkdir(detailRoot, { recursive: true });
const candidateSources = (existingCatalog.sources || [])
  .filter((source) => source.indexable && /^https?:\/\//i.test(source.api || ''))
  .filter((source) => includeAdult || !source.adult)
  .filter(matchesSource);
const targetSources = maxSources > 0 ? candidateSources.slice(0, maxSources) : candidateSources;
const targetIds = new Set(targetSources.map((source) => source.id));
const existingItemsBySource = new Map();
for (const item of existingCatalog.items || []) {
  if (!existingItemsBySource.has(item.sourceId)) existingItemsBySource.set(item.sourceId, []);
  existingItemsBySource.get(item.sourceId).push(item);
}

const results = await mapLimit(targetSources, sourceConcurrency, async (source) => {
  try {
    return await indexSource(source);
  } catch (error) {
    console.warn(`${source.name}: failed: ${error.message}`);
    const keptItems = keepExistingOnFailure ? existingItemsBySource.get(source.id) || [] : [];
    return {
      source: {
        ...source,
        itemCount: keptItems.length,
        playableCount: keptItems.filter((item) => item.playable).length,
        indexed: keptItems.length > 0,
        checks: [{ label: 'full-latest-pages', ok: false, count: 0, error: error.message }],
        error: error.message,
      },
      items: keptItems,
    };
  }
});

if (detailOnly) {
  console.log(
    JSON.stringify(
      {
        detailRoot,
        sources: targetSources.length,
        completedSources: results.filter((result) => !result.source.error).length,
        failedSources: results.filter((result) => result.source.error).length,
      },
      null,
      2,
    ),
  );
  process.exit(0);
}

const updatedSourceById = new Map(results.map((result) => [result.source.id, result.source]));
const sources = (existingCatalog.sources || []).map((source) => updatedSourceById.get(source.id) || source);
const newItems = [
  ...(existingCatalog.items || []).filter((item) => !targetIds.has(item.sourceId)),
  ...results.flatMap((result) => result.items),
];

const catalog = {
  ...existingCatalog,
  generatedAt: new Date().toISOString(),
  source: {
    ...(existingCatalog.source || {}),
    fullChunkedCatalog: true,
    detailRoot: 'docs/data/vod-detail',
    pageSize,
  },
  totals: recomputeTotals(newItems, sources),
  filters: recomputeFilters(newItems),
  sources,
  items: newItems,
};

const report = {
  generatedAt: catalog.generatedAt,
  totals: catalog.totals,
  sourceChecks: sources.map(sourceCheck),
};

await fs.writeFile(catalogPath, `${JSON.stringify(catalog, null, 2)}\n`, 'utf8');
await fs.writeFile(reportPath, `${JSON.stringify(report, null, 2)}\n`, 'utf8');

console.log(
  JSON.stringify(
    {
      catalogPath,
      reportPath,
      detailRoot,
      sources: targetSources.length,
      totals: catalog.totals,
    },
    null,
    2,
  ),
);
