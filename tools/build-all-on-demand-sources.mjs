import fs from 'node:fs/promises';
import path from 'node:path';

const args = new Map();
for (let i = 2; i < process.argv.length; i += 1) {
  const key = process.argv[i];
  const next = process.argv[i + 1];
  if (key.startsWith('--')) {
    args.set(key.slice(2), next && !next.startsWith('--') ? next : 'true');
    if (next && !next.startsWith('--')) i += 1;
  }
}

const repoRoot = path.resolve(args.get('repoRoot') || path.resolve(import.meta.dirname, '..'));
const reportUrl = args.get('reportUrl') || 'https://raw.githubusercontent.com/hafrey1/LunaTV-config/main/report.md';
const output = path.resolve(args.get('output') || path.join(repoRoot, 'sources', 'All on-demand sources'));
const reportOutput = path.resolve(args.get('reportOutput') || path.join(repoRoot, 'sources', 'All on-demand sources-report.json'));
const docsVodOutput = path.resolve(args.get('docsVodOutput') || path.join(repoRoot, 'docs', 'data', 'vod-sources.json'));
const timeoutMs = Number(args.get('timeoutMs') || 10000);
const concurrency = Number(args.get('concurrency') || 10);
const defaultExtraConfigUrls = [
  'https://raw.githubusercontent.com/FGBLH/GHK/a1c46cb76810cd6d53b73e1c6f0a0789586151c5/%E6%B5%B7%E8%B1%9A%E5%BD%B1%E8%A7%86.json',
];
const extraConfigUrls = String(args.get('extraConfigUrls') || defaultExtraConfigUrls.join(','))
  .split(/[,\s]+/)
  .map((item) => item.trim())
  .filter(Boolean);

const USER_AGENT = 'OKTV-all-on-demand-builder/1.0';
const DEFAULT_CATEGORIES = [
  '国产剧',
  '短剧',
  '韩国剧',
  '香港剧',
  '台湾剧',
  '欧美剧',
  '动作片',
  '科幻片',
  '战争片',
  '奇幻片',
  '喜剧片',
  '爱情片',
  '恐怖片',
  '犯罪片',
  '悬疑片',
  '惊悚片',
  '剧情片',
  '冒险片',
  '记录片',
  '日本剧',
  '泰剧',
  '国产综艺',
  '港台综艺',
  '欧美综艺',
  '日韩综艺',
  '国产动漫',
  '港台动漫',
  '日韩动漫',
];

function withTimeout() {
  return AbortSignal.timeout(timeoutMs);
}

async function fetchText(url, accept = 'text/plain,*/*') {
  const res = await fetch(url, {
    redirect: 'follow',
    signal: withTimeout(),
    headers: {
      accept,
      'user-agent': USER_AGENT,
    },
  });
  if (!res.ok) throw new Error(`HTTP ${res.status}`);
  return await res.text();
}

function normalizeText(value, fallback = '') {
  return String(value ?? fallback)
    .replace(/\s+/g, ' ')
    .trim();
}

function cleanSourceName(value) {
  const text = normalizeText(value)
    .replace(/^[^\p{Letter}\p{Number}]+/u, '')
    .replace(/^\s*-+\s*/, '')
    .replace(/-+$/g, '')
    .trim();
  return text || '點播源';
}

function cleanConfigSourceName(value, fallback = '') {
  const text = cleanSourceName(value || fallback)
    .replace(/🔞/g, '18+')
    .replace(/[🐬🦊]/gu, '')
    .replace(/\s*海豚影视.*$/i, '')
    .replace(/\s*海豚影視.*$/i, '')
    .replace(/[｜|]\s*$/g, '')
    .trim();
  return text || cleanSourceName(fallback) || '點播源';
}

function displayNameBase(value) {
  return cleanConfigSourceName(value)
    .replace(/[｜|].*$/g, '')
    .replace(/\s+海豚.*$/g, '')
    .replace(/\s+/g, '')
    .toLowerCase();
}

function sourceKey(name, index) {
  const clean = cleanSourceName(name)
    .replace(/[｜|]+.*$/g, '')
    .replace(/\s+/g, '');
  return clean || `點播源${index + 1}`;
}

function keyId(value, index) {
  const id = normalizeText(value, `source-${index + 1}`)
    .toLowerCase()
    .normalize('NFKD')
    .replace(/[^\p{Letter}\p{Number}]+/gu, '_')
    .replace(/^_+|_+$/g, '');
  return id || `source_${index + 1}`;
}

function apiType(api) {
  return /(?:xml|\/at\/xml|feifei)/i.test(api) ? 0 : 1;
}

function normalizeApi(api) {
  const raw = normalizeText(api);
  if (!raw) return '';
  if (/[?&]url=/i.test(raw)) return raw;
  if (/\/provide\/vod$/i.test(raw)) return `${raw}/`;
  return raw;
}

function normalizeDedupeApi(api) {
  const raw = normalizeApi(api).toLowerCase();
  try {
    const url = new URL(raw);
    url.hash = '';
    if (url.searchParams.has('ac') && url.searchParams.size === 1) url.search = '';
    return url.toString().replace(/\/$/g, '');
  } catch {
    return raw.replace(/\/$/g, '');
  }
}

function sourceDedupeKey(row) {
  return `${normalizeDedupeApi(row.api)}|${normalizeText(row.ext).toLowerCase()}`;
}

function addVodQuery(api, query) {
  const value = String(api || '').trim();
  if (!value) return '';
  if (value.endsWith('?') || value.endsWith('&')) return `${value}${query}`;
  return `${value}?${query}`;
}

function extractLink(cell) {
  return normalizeText(cell).match(/\[Link\]\(([^)]+)\)/)?.[1] || '';
}

function parseStatus(cell) {
  return cell.includes('✅') ? 'ok' : cell.includes('❌') ? 'failed' : 'unknown';
}

function parseSearchable(cell) {
  const text = normalizeText(cell);
  return text.includes('✅') ? 1 : 1;
}

function parseReportTable(markdown) {
  const rows = [];
  const lines = markdown.split(/\r?\n/);
  for (const line of lines) {
    if (!line.startsWith('|')) continue;
    if (/^\|\s*-+/.test(line)) continue;
    if (line.includes('资源名称') || line.includes('狀態') || line.includes('状态')) continue;
    const cells = line
      .split('|')
      .slice(1, -1)
      .map((cell) => cell.trim());
    if (cells.length < 9) continue;
    const api = extractLink(cells[3]);
    const name = cleanSourceName(cells[1]);
    if (!api || !name) continue;
    rows.push({
      status: parseStatus(cells[0]),
      name,
      site: extractLink(cells[2]),
      api,
      searchable: parseSearchable(cells[4]),
      successCount: Number(cells[5] || 0),
      failedCount: Number(cells[6] || 0),
      successRate: cells[7],
      trend: cells[8],
      adult: /🔞|成人|麻豆|番号|黄色|情色|大奶|丝袜|仓库|杏吧|色猫|桃花|香蕉|AV|91md|hsck|xgav|fhapi|dadiapi|lbapi/i.test(cells[1] + api),
    });
  }
  return rows;
}

function extractArray(payload) {
  if (Array.isArray(payload?.list)) return payload.list;
  if (Array.isArray(payload?.data)) return payload.data;
  if (Array.isArray(payload)) return payload;
  return [];
}

function normalizeCategories(rows, fallbackAdult = false) {
  const categories = rows
    .map((item) => normalizeText(typeof item === 'string' ? item : item.type_name ?? item.name ?? item.type ?? item.title))
    .filter(Boolean);
  const unique = [...new Set(categories)];
  if (unique.length) return unique.slice(0, 80);
  return fallbackAdult ? ['成人18+', ...DEFAULT_CATEGORIES] : DEFAULT_CATEGORIES;
}

async function fetchCategories(row) {
  const type = Number(row.type ?? apiType(row.api));
  const provided = normalizeCategories(row.categories || [], row.adult);
  if (!new Set([0, 1]).has(type)) {
    return {
      categories: provided,
      ok: true,
      skipped: true,
      error: '',
    };
  }
  try {
    const text = await fetchText(addVodQuery(row.api, 'ac=list'), 'application/json,text/plain,*/*');
    const json = JSON.parse(text);
    return {
      categories: normalizeCategories(extractArray(json), row.adult),
      ok: true,
      error: '',
    };
  } catch (error) {
    return {
      categories: provided,
      ok: false,
      error: error.message,
    };
  }
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

function hostOf(value) {
  try {
    const url = new URL(value);
    if (url.searchParams.has('url')) return new URL(url.searchParams.get('url')).host;
    return url.host;
  } catch {
    return '';
  }
}

function isAdultSource(site) {
  const text = `${site.key || ''} ${site.name || ''} ${site.api || ''} ${site.ext || ''}`;
  return /🔞|18\+|成人|麻豆|番号|黃色|黄色|情色|大奶|丝袜|絲襪|仓库|倉庫|杏吧|色猫|桃花|香蕉|AV|91md|hsck|xgav|fhapi|dadiapi|lbapi/i.test(
    text,
  );
}

function configSiteRow(site, index, originUrl) {
  const type = Number(site.type ?? apiType(site.api));
  const key = cleanSourceName(site.key || site.name || `海豚來源${index + 1}`);
  const name = cleanConfigSourceName(site.name || key, key);
  return {
    status: 'ok',
    name,
    key,
    site: '',
    api: normalizeText(site.api),
    ext: normalizeText(site.ext),
    type,
    searchable: Number(site.searchable ?? 1),
    quickSearch: Number(site.quickSearch ?? 1),
    filterable: site.filterable === undefined ? undefined : Number(site.filterable),
    categories: Array.isArray(site.categories) ? site.categories : [],
    successRate: 'external',
    trend: '',
    origin: originUrl,
    adult: isAdultSource(site),
  };
}

async function loadExtraConfigRows(url) {
  const text = await fetchText(url, 'application/json,text/plain,*/*');
  const config = JSON.parse(text);
  const sites = Array.isArray(config?.sites) ? config.sites : [];
  return sites.map((site, index) => configSiteRow(site, index, url)).filter((row) => row.api && row.name);
}

const markdown = await fetchText(reportUrl, 'text/markdown,text/plain,*/*');
const parsedRows = parseReportTable(markdown);
const iqiyiIndex = parsedRows.findIndex((row) => /爱奇艺|愛奇藝/i.test(row.name));
const reportRows = iqiyiIndex > 0 ? [...parsedRows.slice(iqiyiIndex), ...parsedRows.slice(0, iqiyiIndex)] : parsedRows;
const dedupedRows = [];
const duplicateRows = [];
const extraConfigErrors = [];
const seenSourceKeys = new Set();
const seenNameBases = new Set();

function addSourceRow(row, { enforceName = false } = {}) {
  const sourceKeyValue = sourceDedupeKey(row);
  const nameBase = displayNameBase(row.name || row.key);
  if (!sourceKeyValue.replace(/\|$/g, '') || seenSourceKeys.has(sourceKeyValue)) {
    duplicateRows.push({ ...row, duplicateReason: 'duplicate_api_or_ext' });
    return;
  }
  if (enforceName && nameBase && seenNameBases.has(nameBase)) {
    duplicateRows.push({ ...row, duplicateReason: 'duplicate_name' });
    return;
  }
  seenSourceKeys.add(sourceKeyValue);
  if (nameBase) seenNameBases.add(nameBase);
  dedupedRows.push(row);
}

for (const row of reportRows) {
  addSourceRow({ ...row, type: apiType(row.api), ext: '', categories: [], origin: reportUrl });
}

for (const url of extraConfigUrls) {
  try {
    const rows = await loadExtraConfigRows(url);
    for (const row of rows) addSourceRow(row, { enforceName: true });
  } catch (error) {
    extraConfigErrors.push({ url, error: error.message });
  }
}

const categoryChecks = await mapLimit(dedupedRows, concurrency, async (row) => fetchCategories(row));
const sites = dedupedRows.map((row, index) => {
  const categories = categoryChecks[index]?.categories || DEFAULT_CATEGORIES;
  const key = row.key ? cleanSourceName(row.key) : sourceKey(row.name, index);
  const site = {
    key,
    name: row.name && /[｜|]/.test(row.name) ? row.name : `${cleanConfigSourceName(row.name || key, key)}｜追劇`,
    type: Number(row.type ?? apiType(row.api)),
    api: normalizeApi(row.api),
    searchable: Number(row.searchable ?? 1),
    quickSearch: Number(row.quickSearch ?? 1),
    categories,
  };
  if (row.ext) site.ext = row.ext;
  if (row.filterable !== undefined) site.filterable = row.filterable;
  return site;
});

const outputJson = {
  spider: '',
  logo: 'https://raw.githubusercontent.com/SYLONG7708/TV/main/branding/icon-tech-20260528.png',
  wallpaper: 'http://tool.teyonds.com/api',
  warningText: '影視OKTV all on-demand sources. Auto refreshed from LunaTV-config report.md every hour.',
  sites,
};

const report = {
  generatedAt: new Date().toISOString(),
  reportUrl,
  totalRows: reportRows.length,
  totalSources: sites.length,
  extraConfigUrls,
  extraConfigErrors,
  duplicateSources: duplicateRows.length,
  adultSources: dedupedRows.filter((row) => row.adult).length,
  okRows: dedupedRows.filter((row) => row.status === 'ok').length,
  failedRows: dedupedRows.filter((row) => row.status === 'failed').length,
  categoriesOk: categoryChecks.filter((row) => row.ok).length,
  categoriesFailed: categoryChecks.filter((row) => !row.ok).length,
  sources: dedupedRows.map((row, index) => ({
    key: sites[index].key,
    name: sites[index].name,
    api: sites[index].api,
    ext: sites[index].ext || '',
    host: hostOf(sites[index].api),
    adult: row.adult,
    origin: row.origin || reportUrl,
    status: row.status,
    successRate: row.successRate,
    categories: sites[index].categories,
    categoriesOk: categoryChecks[index]?.ok || false,
    categoriesSkipped: categoryChecks[index]?.skipped || false,
    categoriesError: categoryChecks[index]?.error || '',
  })),
  duplicates: duplicateRows.map((row) => ({
    key: row.key || sourceKey(row.name, 0),
    name: row.name,
    api: row.api,
    ext: row.ext || '',
    origin: row.origin || '',
    adult: row.adult,
    duplicateReason: row.duplicateReason,
  })),
};

const docsVod = sites.map((site, index) => ({
  id: keyId(`${site.key}-${site.api}`, index),
  key: site.key,
  name: site.name,
  type: site.type,
  typeLabel: site.type === 0 ? 'CMS XML/API' : 'CMS JSON/API',
  mode: 'api',
  api: site.api,
  searchable: true,
  quickSearch: true,
  categories: site.categories,
  endpointHost: hostOf(site.api),
  hasExt: false,
  enabled: true,
  status: 'enabled',
  origin: 'All on-demand sources',
}));

await fs.mkdir(path.dirname(output), { recursive: true });
await fs.mkdir(path.dirname(reportOutput), { recursive: true });
await fs.mkdir(path.dirname(docsVodOutput), { recursive: true });
await fs.writeFile(output, `${JSON.stringify(outputJson, null, 2)}\n`, 'utf8');
await fs.writeFile(reportOutput, `${JSON.stringify(report, null, 2)}\n`, 'utf8');
await fs.writeFile(docsVodOutput, `${JSON.stringify(docsVod, null, 2)}\n`, 'utf8');

console.log(
  JSON.stringify(
    {
      output,
      reportOutput,
      docsVodOutput,
      totalSources: sites.length,
      adultSources: report.adultSources,
      categoriesOk: report.categoriesOk,
      categoriesFailed: report.categoriesFailed,
    },
    null,
    2,
  ),
);
