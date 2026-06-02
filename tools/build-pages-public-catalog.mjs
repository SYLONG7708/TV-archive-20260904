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

const fullCatalog = await readJson(catalogPath);
if (!fullCatalog) throw new Error(`Catalog not found: ${catalogPath}`);
const smallCatalog = (await readJson(smallCatalogPath)) || { items: [] };

const pagesDataRoot = path.join(pagesRoot, 'docs', 'data');
const detailRoot = path.join(pagesDataRoot, 'vod-detail');
const indexRoot = path.join(pagesDataRoot, 'vod-index');
const publishedDetailDirs = new Set(await listNames(detailRoot));
const publishedIndexFiles = new Set(await listNames(indexRoot, { files: true }));

const publishedSourceIds = new Set();
const sources = (fullCatalog.sources || []).map((source) => {
  const slug = sourceSlug(source);
  const hasDetail = publishedDetailDirs.has(slug);
  const indexFile = source.indexPath ? path.basename(source.indexPath) : `${slug}.json.gz`;
  const hasIndex = publishedIndexFiles.has(indexFile);

  if (!hasDetail) {
    const next = {
      ...source,
      indexed: false,
      complete: false,
      itemCount: 0,
      playableCount: 0,
      publishMode: 'not-published',
      error: source.error || '未發布到 Pages：大型資料採精簡發布',
    };
    delete next.indexPath;
    delete next.detailPathPattern;
    delete next.detailMode;
    delete next.indexMode;
    return next;
  }

  publishedSourceIds.add(source.id);
  const next = {
    ...source,
    indexed: true,
    publishMode: 'static-detail',
    detailMode: 'chunked-json-gzip',
    detailPathPattern: source.detailPathPattern || `vod-detail/${slug}/page-{page}.json.gz`,
  };
  if (hasIndex) {
    next.indexMode = 'chunked-json-gzip';
    next.indexPath = source.indexPath || `vod-index/${indexFile}`;
  } else {
    delete next.indexMode;
    delete next.indexPath;
  }
  return next;
});

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

const seedItems = (smallCatalog.items || []).filter((item) => publishedSourceIds.has(item.sourceId));
for (const item of seedItems) addKind(kindTotals, item);

const nextCatalog = {
  ...fullCatalog,
  generatedAt: new Date().toISOString(),
  source: {
    ...(fullCatalog.source || {}),
    pagesLeanPublish: true,
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
      seedItems: seedItems.length,
    },
    null,
    2,
  ),
);
