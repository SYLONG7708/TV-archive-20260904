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
const input = path.resolve(args.get('input') || path.join(repoRoot, 'sources', 'All on-demand sources'));
const output = path.resolve(args.get('output') || path.join(repoRoot, 'sources', 'TVBOX'));

async function readJson(file) {
  const text = await fs.readFile(file, 'utf8');
  return JSON.parse(text.replace(/^\uFEFF/, ''));
}

function trimString(value) {
  return String(value || '').trim();
}

function normalizeInt(value, fallback) {
  const number = Number(value);
  return Number.isFinite(number) ? number : fallback;
}

function normalizeCategories(value) {
  if (!Array.isArray(value)) return undefined;
  const seen = new Set();
  const categories = [];
  for (const item of value) {
    const category = trimString(item);
    if (!category || seen.has(category)) continue;
    seen.add(category);
    categories.push(category);
  }
  return categories.length ? categories : undefined;
}

function normalizeSite(site, index) {
  const key = trimString(site.key || site.name || `vod-${index + 1}`);
  const name = trimString(site.name || key);
  const api = trimString(site.api);
  const ext = trimString(site.ext);
  const categories = normalizeCategories(site.categories);

  const normalized = {
    key,
    name,
    type: normalizeInt(site.type, 1),
    api,
    searchable: normalizeInt(site.searchable, 1),
    quickSearch: normalizeInt(site.quickSearch, 1),
    filterable: normalizeInt(site.filterable, 1),
  };

  if (ext) normalized.ext = ext;
  if (categories) normalized.categories = categories;
  if (site.changeable !== undefined) normalized.changeable = normalizeInt(site.changeable, site.changeable);
  if (site.playerType !== undefined) normalized.playerType = normalizeInt(site.playerType, site.playerType);
  if (site.timeout !== undefined) normalized.timeout = normalizeInt(site.timeout, site.timeout);

  return normalized;
}

function normalizeList(value) {
  return Array.isArray(value) ? value : [];
}

const source = await readJson(input);
const sourceSites = Array.isArray(source) ? source : normalizeList(source.sites);
const seenKeys = new Set();
const sites = [];

for (const sourceSite of sourceSites) {
  const site = normalizeSite(sourceSite, sites.length);
  if (!site.key || !site.api || seenKeys.has(site.key)) continue;
  seenKeys.add(site.key);
  sites.push(site);
}

const tvbox = {
  spider: trimString(source.spider),
  logo:
    trimString(source.logo) ||
    'https://raw.githubusercontent.com/SYLONG7708/TV/main/branding/icon-tech-20260528.png',
  wallpaper: trimString(source.wallpaper) || 'http://tool.teyonds.com/api',
  warningText:
    trimString(source.warningText) ||
    'OKTV TVBox on-demand sources. Auto refreshed every 3 days.',
  sites,
  parses: normalizeList(source.parses),
  lives: normalizeList(source.lives),
  ads: normalizeList(source.ads),
};

await fs.mkdir(path.dirname(output), { recursive: true });
await fs.writeFile(output, `${JSON.stringify(tvbox, null, 2)}\n`, 'utf8');

console.log(
  JSON.stringify(
    {
      output,
      input,
      sites: sites.length,
      parses: tvbox.parses.length,
      lives: tvbox.lives.length,
      ads: tvbox.ads.length,
    },
    null,
    2,
  ),
);
