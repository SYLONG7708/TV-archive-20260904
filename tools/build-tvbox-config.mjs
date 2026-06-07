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

const ADULT_SITE_IDENTITY_RE =
  /18\+|avzy|souav|swag|91md|155api|apiyutu|fhapi|apilsb|yytv4|xiaojizy|hsck|apidanaizi|jkunzy|lbapi|naixxzy|slapibf|apilj|shayuapi|douapi|ddapi|heiliao|bwzyz|thzy|jingpin|ckzy|xxibao|xiangjiao|msnii|pgxdy|kxgav|xingba|dadiapi|semaozy|aosika|siwazy|truvaze|fqzy|\u6210\u4eba|\u9ebb\u8c46|\u756a\u53f7|\u9ec4\u8272|\u9ec3\u8272|\u60c5\u8272|\u8001\u8272|\u5927\u5976|\u4e1d\u889c|\u7d72\u896a|\u4ed3\u5e93|\u5009\u5eab|\u674f\u5427|\u8272\u732b|\u9ed1\u6599|\u7cbe\u54c1|\u5965\u65af\u5361|\u5967\u65af\u5361|\bAV\b/i;
const ADULT_CATEGORY_RE =
  /\u6210\u4eba|\u9ebb\u8c46|\u756a\u53f7|\u9ec4\u8272|\u9ec3\u8272|\u60c5\u8272|\u8001\u8272|\u5927\u5976|\u4e1d\u889c|\u7d72\u896a|\u4ed3\u5e93|\u5009\u5eab|\u674f\u5427|\u8272\u732b|\u6843\u82b1|\u9999\u8549|\u5976\u9999|\u9ed1\u6599|\u7cbe\u54c1|\u65e0\u7801|\u7121\u78bc|\u4e71\u4f26|\u4e82\u502b|\u798f\u5229|\u4e3b\u64ad|\u5f3a\u5978|\u841d\u8389|\u863f\u8389|\u5236\u670d|\u4f26\u7406|\u502b\u7406|\u6deb|\u91cc\u756a|\u91cc\u756a\u52a8\u6f2b|\u91cc\u756a\u52d5\u6f2b|\u65e5\u672c\u6709\u7801|\u65e5\u672c\u7121\u78bc|\u65e5\u672c\u65e0\u7801|\u4e2d\u6587\u5b57\u5e55|\u56fd\u4ea7\u81ea\u62cd|\u570b\u7522\u81ea\u62cd|\u5077\u62cd|\u5ad6\u5993|\u5b66\u751f\u59b9|\u5b78\u751f\u59b9|\u4eba\u59bb|\u98ce\u4fd7|\u98a8\u4fd7|\u4e09\u7ea7|\u4e09\u7d1a|AI\u6362\u8138|AI\u63db\u81c9|\bAV\b/i;

function nestedUrl(value) {
  try {
    return new URL(String(value || '')).searchParams.get('url') || '';
  } catch {
    return '';
  }
}

function isAdultSite(site) {
  const identityText = [site.key, site.name, site.api, site.ext, nestedUrl(site.api), nestedUrl(site.ext)]
    .map((value) => String(value || ''))
    .join(' ');
  if (ADULT_SITE_IDENTITY_RE.test(identityText)) return true;
  const categories = Array.isArray(site.categories) ? site.categories : [];
  if (!categories.length) return false;
  const matches = categories.filter((category) => ADULT_CATEGORY_RE.test(String(category || ''))).length;
  return matches >= 3 && matches / categories.length >= 0.35;
}

function adultName(name) {
  return /^\s*\uD83D\uDD1E/u.test(name) ? name : `\uD83D\uDD1E ${name}`;
}

function normalizeSite(site, index) {
  const key = trimString(site.key || site.name || `vod-${index + 1}`);
  const adult = Boolean(site.adult || isAdultSite(site));
  const name = adult ? adultName(trimString(site.name || key)) : trimString(site.name || key);
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
  if (adult) normalized.adult = true;
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
