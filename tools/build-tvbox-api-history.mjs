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
const output = path.resolve(args.get('output') || path.join(repoRoot, 'sources', 'TVBOX'));
const sourceReportPath = path.resolve(
  args.get('sourceReport') || path.join(repoRoot, 'sources', 'All on-demand sources-report.json'),
);
const validationReportPath = path.resolve(
  args.get('validationReport') || path.join(repoRoot, 'sources', 'vod-lunatv-full-report.json'),
);
const keyword = args.get('keyword') || '\u4F60\u597D';
const date = args.get('date') || todayInShanghai();
const okMark = '\u2705';
const failMark = '\u274C';

function todayInShanghai() {
  const parts = new Intl.DateTimeFormat('en-CA', {
    timeZone: 'Asia/Shanghai',
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
  }).formatToParts(new Date());
  const byType = Object.fromEntries(parts.map((part) => [part.type, part.value]));
  return `${byType.year}-${byType.month}-${byType.day}`;
}

async function readJson(file, fallback = null) {
  try {
    const text = await fs.readFile(file, 'utf8');
    return JSON.parse(text.replace(/^\uFEFF/, ''));
  } catch {
    return fallback;
  }
}

function normalizeApi(value) {
  const raw = String(value || '').trim();
  if (!raw) return '';
  try {
    const url = new URL(raw);
    url.hash = '';
    if (url.searchParams.has('ac') && url.searchParams.size === 1) url.search = '';
    return url.toString().replace(/\/$/g, '').toLowerCase();
  } catch {
    return raw.replace(/\/$/g, '').toLowerCase();
  }
}

function displayApi(value) {
  return String(value || '').trim().replace(/\/$/g, '');
}

function cleanName(value, fallback = '') {
  return String(value || fallback || '')
    .replace(/\uFF5C\u8FFD\u5287/u, '')
    .replace(/^Luna\s*\d+\s*/iu, '')
    .replace(/^\s*-+\s*/u, '')
    .replace(/\s*-+\s*$/u, '')
    .trim();
}

function sourceSucceeded(source) {
  const status = String(source.status || source.categoryStatus || '').toLowerCase();
  if (['failed', 'error', 'invalid'].includes(status)) return false;
  return true;
}

const sourceReport = await readJson(sourceReportPath, {});
const validationReport = await readJson(validationReportPath, {});
const checksByApi = new Map();
for (const check of validationReport.checks || []) {
  checksByApi.set(normalizeApi(check.api), check);
}

const results = [];
const seen = new Set();
for (const source of sourceReport.sources || []) {
  const api = displayApi(source.api);
  const apiKey = normalizeApi(api);
  if (!apiKey || seen.has(apiKey)) continue;
  seen.add(apiKey);

  const check = checksByApi.get(apiKey);
  const success = sourceSucceeded(source);
  const searchStatus = check ? (check.searchOk ? okMark : failMark) : success ? okMark : failMark;

  results.push({
    name: cleanName(source.name, source.key),
    api,
    disabled: false,
    success,
    searchStatus,
  });
}

const history = await readJson(output, []);
const records = Array.isArray(history) ? history : [];
const nextRecord = { date, keyword, results };
const existingIndex = records.findIndex((record) => record?.date === date && record?.keyword === keyword);
if (existingIndex >= 0) records[existingIndex] = nextRecord;
else records.push(nextRecord);

records.sort((left, right) => String(left.date || '').localeCompare(String(right.date || '')));
await fs.mkdir(path.dirname(output), { recursive: true });
await fs.writeFile(output, `${JSON.stringify(records, null, 2)}\n`, 'utf8');

console.log(
  JSON.stringify(
    {
      output,
      date,
      keyword,
      records: records.length,
      results: results.length,
    },
    null,
    2,
  ),
);
