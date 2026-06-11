# 2026-06-12 TVBOX 點播源 API 更新暫停續作紀錄

時間：2026-06-12 01:53:15 +08:00

## 目標
- 更新 https://raw.githubusercontent.com/SYLONG7708/TV/refs/heads/main/sources/TVBOX 內所有點播源的資訊 API。
- 保留每個 API 名稱對應的完整內容資料，之後可續跑補齊。

## 已完成
- 已 git pull --ff-only 同步 SYLONG7708/TV main。
- 已重建：
  - sources/All on-demand sources
  - sources/All on-demand sources-report.json
  - sources/TVBOX
  - docs/data/vod-sources.json
  - docs/data/iphone-vod-catalog.json
  - docs/data/iphone-vod-catalog-report.json
- sources/TVBOX JSON 已可解析，站點數：91。
- iPhone/VOD 基礎 catalog：sources 87，items 7349。
- 全量明細已部分落盤：docs/data/vod-detail 目前 38 個來源資料夾、14925 個 .json.gz 分頁檔。

## 已暫停
- 因用量限制，背景程序 PID 3204 已停止，不再繼續消耗。
- 暫停時仍在跑的三個大型來源最後進度約：
  - 優質資源：2800/4709 source pages，111 detail pages，55968 items。
  - 無盡影視：2100/5651 source pages，83 detail pages，41959 items。
  - 量子影視：2600/6907 source pages，103 detail pages，51984 items。

## 需要補跑/重試
目前錯誤 log 記錄的失敗類型：
- HTTP 429：茅台資源、iKun 資源、暴風資源。
- HTTP 520：飄零資源、最大點播。
- timeout：光速資源。

## 續跑建議
先補跑暫停中的大型來源與錯誤來源，建議低併發，避免再次 429/520：

`powershell
cd 'C:\Users\Administrator\Desktop\CODEX 專案資料夾\github\TV'
node .\tools\build-full-vod-chunked-catalog.mjs --tvRoot . --catalog .\docs\data\iphone-vod-catalog.json --report .\docs\data\iphone-vod-catalog-report.json --detailRoot .\docs\data\vod-detail --includeAdult true --includeEmptySeedSources true --pageSize 100 --sourceConcurrency 1 --pageConcurrency 2 --outputPageSize 500 --fetchRetries 5 --timeoutMs 45000 --detailOnly true --sourceMatch '<API 名稱或網址關鍵字>'
`

補齊後再組索引：

`powershell
node .\tools\assemble-vod-index-from-detail.mjs --tvRoot . --catalog .\docs\data\iphone-vod-catalog.json --report .\docs\data\iphone-vod-catalog-report.json --detailRoot .\docs\data\vod-detail --indexRoot .\docs\data\vod-index
`

## 本次暫停前 log
- .patch-work/vod-api-refresh-20260612/full-vod-detail.out.log
- .patch-work/vod-api-refresh-20260612/full-vod-detail.err.log
- .patch-work/vod-api-refresh-20260612/full-vod-detail.pid

## 後續讀取順序
1. 先看本檔或本機 archive 同名紀錄。
2. 看 .patch-work/vod-api-refresh-20260612/*.log 確認最後進度。
3. 補跑上面暫停/失敗來源。
4. 跑 assemble 產出 docs/data/vod-index。
5. 最後再驗證並推送完整更新。
