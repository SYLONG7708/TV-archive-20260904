# TVBOX API 更新暫停續跑紀錄

時間：2026-06-12 01:54:53 +08:00

## 使用者目標

更新 https://raw.githubusercontent.com/SYLONG7708/TV/refs/heads/main/sources/TVBOX 裡所有點播源的資訊 API，保存每個名稱 API 的全部內容，並支援 3 個 Codex 視窗分工續跑。

## 目前狀態

- repo：$repo
- 分工清單：$workDir\tvbox-sites-workplan.md
- 站點總數：91；分工為 window-1 31 個、window-2 30 個、window-3 30 個。
- uild-iphone-vod-catalog.mjs 已完成：catalog generatedAt $(@{generatedAt=2026-06-11T17:17:00.408Z; source=; totals=; filters=; sources=System.Object[]; items=System.Object[]}.generatedAt)；sources $(@{generatedAt=2026-06-11T17:17:00.408Z; source=; totals=; filters=; sources=System.Object[]; items=System.Object[]}.totals.sources)；indexedSources $(@{generatedAt=2026-06-11T17:17:00.408Z; source=; totals=; filters=; sources=System.Object[]; items=System.Object[]}.totals.indexedSources)；sample items $(@{generatedAt=2026-06-11T17:17:00.408Z; source=; totals=; filters=; sources=System.Object[]; items=System.Object[]}.totals.items)；adult $(@{generatedAt=2026-06-11T17:17:00.408Z; source=; totals=; filters=; sources=System.Object[]; items=System.Object[]}.totals.adult)。
- 全量 detail 抓取程序已自然結束；目前沒有 uild-full-vod-chunked-catalog Node 程序在跑。
- docs/data/vod-detail 目前 source dirs：38，gzip files：14925，總大小約 1.336 GB。
- Git 目前 tracked vod-detail files：14925；tracked vod-index files：18。
- 尚未執行 ssemble-vod-index-from-detail.mjs，所以目前不應把 detail 半成品當作正式完成版發布。

## 已執行重點命令

`powershell
node .\tools\build-iphone-vod-catalog.mjs --appRoot <repo> --tvRoot <repo> --output <repo>\docs\data\iphone-vod-catalog.json --reportOutput <repo>\docs\data\iphone-vod-catalog-report.json --timeoutMs 15000 --concurrency 10 --fetchPageConcurrency 8 --maxSources 120 --maxItemsPerSource 120 --maxCategoriesPerSource 8 --maxPagesPerQuery 1 --includeAdult true
node .\tools\build-full-vod-chunked-catalog.mjs --tvRoot . --catalog .\docs\data\iphone-vod-catalog.json --report .\docs\data\iphone-vod-catalog-report.json --detailRoot .\docs\data\vod-detail --includeAdult true --includeEmptySeedSources true --pageSize 100 --sourceConcurrency 3 --pageConcurrency 12 --outputPageSize 500 --fetchRetries 2 --timeoutMs 25000 --detailOnly true
`

## 下一次續跑步驟

1. 先讀本檔與 TVBOX_API更新_20260612\tvbox-sites-workplan.md。
2. 確認沒有重複的全量程序：

`powershell
Get-CimInstance Win32_Process | Where-Object { $_.Name -eq 'node.exe' -and $_.CommandLine -match 'build-full-vod-chunked-catalog' }
`

3. 若要接續完成正式索引，從 repo 執行：

`powershell
cd "C:\Users\Administrator\Desktop\CODEX 專案資料夾\github\TV"
node .\tools\assemble-vod-index-from-detail.mjs --tvRoot . --catalog .\docs\data\iphone-vod-catalog.json --report .\docs\data\iphone-vod-catalog-report.json --detailRoot .\docs\data\vod-detail --indexRoot .\docs\data\vod-index
node .\tools\apply-vod-kind-rules.mjs --tvRoot .
node .\tools\build-tvbox-config.mjs --repoRoot . --input .\sources\All on-demand sources --output .\sources\TVBOX
`

4. 驗證：

`powershell
node -e "JSON.parse(require('fs').readFileSync('sources/TVBOX','utf8')); JSON.parse(require('fs').readFileSync('docs/data/iphone-vod-catalog.json','utf8')); JSON.parse(require('fs').readFileSync('docs/data/iphone-vod-catalog-report.json','utf8')); console.log('json ok')"
git status --short --branch
`

## 當前 git 狀態摘要

`	ext

`

## 注意

本次因用量不足暫停，沒有把大型 detail 半成品全部 commit。雲端只更新 checkpoint 紀錄，避免發布未組索引的半成品。下一次應先完成 assemble 與驗證，再決定是否 commit/push 大型 od-detail 與 od-index。
