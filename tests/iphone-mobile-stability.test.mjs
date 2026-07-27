import assert from 'node:assert/strict';
import fs from 'node:fs/promises';
import path from 'node:path';
import test from 'node:test';

const repoRoot = path.resolve(import.meta.dirname, '..');
const html = await fs.readFile(path.join(repoRoot, 'docs', 'iphone', 'index.html'), 'utf8');

test('mobile search uses abortable query shards instead of full source indexes', () => {
  const searchLoader = html.match(
    /function triggerSearchIndexLoad\(\) \{([\s\S]*?)\n      function numericValue\(/,
  )?.[1];
  assert.ok(searchLoader, 'search loader is present');
  assert.match(searchLoader, /new AbortController\(\)/);
  assert.match(searchLoader, /loadQueryShard\(/);
  assert.doesNotMatch(searchLoader, /ensureFullSourceIndex\(/);
  assert.match(html, /QUERY_MANIFEST_URL = '\.\.\/data\/vod-query\/manifest\.json'/);
  assert.match(html, /QUERY_SHARD_CACHE_LIMIT = 6/);
});

test('search input remains mounted and no polling loop is used', () => {
  assert.match(html, /state\.renderLayoutKey !== layoutKey/);
  assert.match(html, /id="vodGrid"/);
  assert.doesNotMatch(html, /setInterval\(/);
  assert.doesNotMatch(html, /searchPollTimer/);
});

test('detail view reports only hydrated episodes and supports signal fallback', () => {
  assert.match(html, /async function resolvePlayableSignal\(/);
  assert.match(html, /AUTO_SIGNAL_FALLBACK_LIMIT = 8/);
  assert.match(html, /const total = item\.episodes\?\.length \|\| 0/);
  assert.doesNotMatch(html, /item\.episodes\?\.length \|\| item\.episodeCount/);
});

test('compressed indexes are binary and iframe sandbox has supported flags', async () => {
  const attributes = await fs.readFile(path.join(repoRoot, '.gitattributes'), 'utf8');
  assert.match(attributes, /^\*\.gz binary$/m);
  const iframe = html.match(/<iframe id="playerFrame"[^>]+>/)?.[0] || '';
  assert.ok(iframe);
  assert.doesNotMatch(iframe, /allow-presentation/);
});
