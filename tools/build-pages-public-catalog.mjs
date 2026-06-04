import fs from 'node:fs/promises';
import path from 'node:path';
import zlib from 'node:zlib';
import { promisify } from 'node:util';

const gunzip = promisify(zlib.gunzip);

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
const pagesRoot = path.resolve(args.get('pagesRoot') || path.resolve(tvRoot, '..', 'TV-gh-pages'));
const catalogPath = path.resolve(args.get('catalog') || path.join(tvRoot, 'docs', 'data', 'iphone-vod-catalog.json'));
const smallCatalogPath = path.resolve(args.get('smallCatalog') || catalogPath);
const output = path.resolve(args.get('output') || path.join(pagesRoot, 'docs', 'data', 'iphone-vod-catalog.json'));
const reportOutput = path.resolve(
  args.get('reportOutput') || path.join(pagesRoot, 'docs', 'data', 'iphone-vod-catalog-report.json'),
);
const preservePreviousPublicSources = args.get('preservePreviousPublicSources') === 'true';

function normalizeText(value, fallback = '') {
  return String(value ?? fallback)
    .replace(/\s+/g, ' ')
    .trim();
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

function sourceSlug(source) {
  return slugify(`${source.host || source.key || source.name}-${source.id}`, 'source');
}

function normalizeApi(value) {
  const raw = normalizeText(value).toLowerCase();
  if (!raw) return '';
  try {
    const url = new URL(raw);
    url.hash = '';
    url.search = '';
    return url.toString().replace(/\/$/g, '');
  } catch {
    return raw.replace(/\/$/g, '');
  }
}

async function readJson(file, fallback = null) {
  try {
    return JSON.parse(await fs.readFile(file, 'utf8'));
  } catch {
    return fallback;
  }
}

async function readMaybeGzipJson(file) {
  const data = await fs.readFile(file);
  const text = /\.gz$/i.test(file) ? (await gunzip(data)).toString('utf8') : data.toString('utf8');
  return JSON.parse(text);
}

async function listNames(dir, options = {}) {
  try {
    return (await fs.readdir(dir, { withFileTypes: true }))
      .filter((row) => (options.files ? row.isFile() : row.isDirectory()))
      .map((row) => row.name);
  } catch {
    return [];
  }
}

function emptyKindTotals() {
  return { movies: 0, series: 0, variety: 0, anime: 0, short: 0, adult: 0, other: 0 };
}

function addKind(totals, item) {
  if (item.kind === 'series') totals.series += 1;
  else if (item.kind === 'variety') totals.variety += 1;
  else if (item.kind === 'anime') totals.anime += 1;
  else if (item.kind === 'short') totals.short += 1;
  else if (item.kind === 'adult' || item.adult) totals.adult += 1;
  else if (item.kind === 'other') totals.other += 1;
  else totals.movies += 1;
}

function sourceCheck(source) {
  return {
    id: source.id,
    name: source.name,
    type: source.type,
    api: source.api,
    origin: source.origin,
    adult: source.adult,
    indexed: source.indexed,
    complete: source.complete,
    itemCount: source.itemCount,
    playableCount: source.playableCount,
    sourceTotalCount: source.sourceTotalCount,
    detailPageCount: source.detailPageCount,
    detailExpectedPages: source.detailExpectedPages,
    indexPath: source.indexPath,
    detailPathPattern: source.detailPathPattern,
    error: source.error,
  };
}

function detailDirFromPattern(pattern) {
  const match = normalizeText(pattern).match(/vod-detail\/([^/]+)\/page-\{page\}\.json\.gz/i);
  return match?.[1] || '';
}

async function copyDirIfExists(from, to) {
  try {
    await fs.access(from);
  } catch {
    return false;
  }
  await fs.mkdir(path.dirname(to), { recursive: true });
  await fs.cp(from, to, { recursive: true, force: true });
  return true;
}

async function copyFileIfExists(from, to) {
  try {
    await fs.access(from);
  } catch {
    return false;
  }
  await fs.mkdir(path.dirname(to), { recursive: true });
  await fs.copyFile(from, to);
  return true;
}

async function publishIndexedSpiderData(fullCatalog, pagesDataRoot) {
  const repoDataRoot = path.join(tvRoot, 'docs', 'data');
  let detailDirs = 0;
  let indexFiles = 0;
  for (const source of fullCatalog.sources || []) {
    if (Number(source.type) !== 3 || !source.indexed || !source.spiderEngine) continue;
    const slug = detailDirFromPattern(source.detailPathPattern) || sourceSlug(source);
    if (await copyDirIfExists(path.join(repoDataRoot, 'vod-detail', slug), path.join(pagesDataRoot, 'vod-detail', slug))) {
      detailDirs += 1;
    }
    if (source.indexPath) {
      const indexFile = path.basename(source.indexPath);
      if (await copyFileIfExists(path.join(repoDataRoot, 'vod-index', indexFile), path.join(pagesDataRoot, 'vod-index', indexFile))) {
        indexFiles += 1;
      }
    }
  }
  return { detailDirs, indexFiles };
}

const fullCatalog = await readJson(catalogPath);
if (!fullCatalog) throw new Error(`Catalog not found: ${catalogPath}`);
const smallCatalog = (await readJson(smallCatalogPath)) || { items: [] };
const previousPublicSources = preservePreviousPublicSources ? smallCatalog.sources || [] : [];
const previousPublicSourceById = new Map(previousPublicSources.map((source) => [source.id, source]));
const previousPublicSourceBySlug = new Map();
const previousPublicSourceByApi = new Map();
for (const source of previousPublicSources) {
  const slug = detailDirFromPattern(source.detailPathPattern) || sourceSlug(source);
  if (slug && !previousPublicSourceBySlug.has(slug)) previousPublicSourceBySlug.set(slug, source);
  const api = normalizeApi(source.api);
  if (api && !previousPublicSourceByApi.has(api)) previousPublicSourceByApi.set(api, source);
}

const pagesDataRoot = path.join(pagesRoot, 'docs', 'data');
const publishedSpiderData = await publishIndexedSpiderData(fullCatalog, pagesDataRoot);
const detailRoot = path.join(pagesDataRoot, 'vod-detail');
const indexRoot = path.join(pagesDataRoot, 'vod-index');
const publishedDetailDirs = new Set(await listNames(detailRoot));
const publishedIndexFiles = new Set(await listNames(indexRoot, { files: true }));

const publishedSourceIds = new Set();
const usedPreviousPublicSourceIds = new Set();
const inlineSourceIds = new Set((fullCatalog.items || []).map((item) => item.sourceId).filter(Boolean));
const sources = (fullCatalog.sources || []).map((source) => {
  const slug = sourceSlug(source);
  const hasDetail = publishedDetailDirs.has(slug);
  const indexFile = source.indexPath ? path.basename(source.indexPath) : `${slug}.json.gz`;
  const hasIndex = publishedIndexFiles.has(indexFile);
  const previousPublicSource =
    previousPublicSourceById.get(source.id) ||
    previousPublicSourceBySlug.get(slug) ||
    previousPublicSourceByApi.get(normalizeApi(source.api));
  if (previousPublicSource) usedPreviousPublicSourceIds.add(previousPublicSource.id);

  if (!hasDetail) {
    const hasInlineItems = inlineSourceIds.has(source.id);
    const next = {
      ...source,
      indexed: hasInlineItems ? Boolean(source.indexed) : false,
      complete: false,
      itemCount: hasInlineItems ? source.itemCount || 0 : 0,
      playableCount: hasInlineItems ? source.playableCount || 0 : 0,
      publishMode: hasInlineItems ? 'inline-seed' : 'not-published',
      error: hasInlineItems ? source.error || '' : source.error || '未發布到 Pages：大型資料採精簡發布',
    };
    delete next.indexPath;
    delete next.detailPathPattern;
    delete next.detailMode;
    delete next.indexMode;
    return next;
  }

  const previousSlug = previousPublicSource ? detailDirFromPattern(previousPublicSource.detailPathPattern) || sourceSlug(previousPublicSource) : '';
  const preservePreviousIdentity = Boolean(
    previousPublicSource?.indexed && previousPublicSource.id !== source.id && previousSlug === slug,
  );
  const sourceForPublish = preservePreviousIdentity
    ? {
        ...source,
        id: previousPublicSource.id,
        key: previousPublicSource.key || source.key,
        detailPathPattern: previousPublicSource.detailPathPattern || source.detailPathPattern,
        indexPath: previousPublicSource.indexPath || source.indexPath,
      }
    : source;

  publishedSourceIds.add(sourceForPublish.id);
  const next = {
    ...sourceForPublish,
    indexed: true,
    publishMode: 'static-detail',
    detailMode: 'chunked-json-gzip',
    detailPathPattern: sourceForPublish.detailPathPattern || `vod-detail/${slug}/page-{page}.json.gz`,
  };
  if (previousPublicSource?.indexed) {
    for (const key of ['itemCount', 'playableCount', 'sourceTotalCount', 'detailPageCount', 'detailExpectedPages']) {
      next[key] = Math.max(Number(next[key] || 0), Number(previousPublicSource[key] || 0));
    }
    if (previousPublicSource.complete && !next.complete) next.complete = previousPublicSource.complete;
  }
  if (hasIndex) {
    next.indexMode = 'chunked-json-gzip';
    next.indexPath = sourceForPublish.indexPath || `vod-index/${indexFile}`;
  } else {
    delete next.indexMode;
    delete next.indexPath;
  }
  return next;
});

const sourceIds = new Set(sources.map((source) => source.id));
if (preservePreviousPublicSources) {
  for (const previous of previousPublicSources) {
    if (sourceIds.has(previous.id) || usedPreviousPublicSourceIds.has(previous.id)) continue;
    const slug = detailDirFromPattern(previous.detailPathPattern) || sourceSlug(previous);
    if (!publishedDetailDirs.has(slug)) continue;
    publishedSourceIds.add(previous.id);
    sources.push({
      ...previous,
      indexed: true,
      publishMode: 'static-detail',
      detailMode: previous.detailMode || 'chunked-json-gzip',
      detailPathPattern: previous.detailPathPattern || `vod-detail/${slug}/page-{page}.json.gz`,
      preservedFromPublicCatalog: true,
    });
  }
}

const kindTotals = emptyKindTotals();
let indexedItems = 0;
let playableItems = 0;
for (const source of sources) {
  if (!source.indexed) continue;
  indexedItems += Number(source.itemCount || 0);
  playableItems += Number(source.playableCount || source.itemCount || 0);
  if (!source.indexPath) continue;
  try {
    const payload = await readMaybeGzipJson(path.join(pagesDataRoot, source.indexPath));
    for (const item of payload.items || []) addKind(kindTotals, item);
  } catch {
    // Keep source-level totals even when a legacy source has only detail pages published.
  }
}

const seedCatalog = preservePreviousPublicSources ? smallCatalog : fullCatalog;
const seedItems = (seedCatalog.items || []).filter((item) => publishedSourceIds.has(item.sourceId) || sourceIds.has(item.sourceId));
for (const item of seedItems) addKind(kindTotals, item);

const nextCatalog = {
  ...fullCatalog,
  generatedAt: new Date().toISOString(),
  source: {
    ...(fullCatalog.source || {}),
    pagesLeanPublish: true,
    preservePreviousPublicSources,
    fullCatalogItems: fullCatalog.totals?.items || 0,
  },
  totals: {
    sources: sources.length,
    indexedSources: sources.filter((source) => source.indexed).length,
    items: indexedItems,
    playableItems,
    ...kindTotals,
  },
  sources,
  items: seedItems,
};

const report = {
  generatedAt: nextCatalog.generatedAt,
  mode: 'pages-lean-publish',
  fullCatalogTotals: fullCatalog.totals,
  publicTotals: nextCatalog.totals,
  publishedDetailDirs: publishedDetailDirs.size,
  publishedIndexFiles: publishedIndexFiles.size,
  preservePreviousPublicSources,
  publishedSpiderData,
  sourceChecks: sources.map(sourceCheck),
};

await fs.mkdir(path.dirname(output), { recursive: true });
await fs.writeFile(output, `${JSON.stringify(nextCatalog, null, 2)}\n`, 'utf8');
await fs.writeFile(reportOutput, `${JSON.stringify(report, null, 2)}\n`, 'utf8');

console.log(
  JSON.stringify(
    {
      output,
      reportOutput,
      fullCatalogTotals: fullCatalog.totals,
      publicTotals: nextCatalog.totals,
      publishedDetailDirs: publishedDetailDirs.size,
      publishedIndexFiles: publishedIndexFiles.size,
      publishedSpiderData,
      seedItems: seedItems.length,
    },
    null,
    2,
  ),
);
