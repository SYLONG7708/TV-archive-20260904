# OKTV iPhone 點播／直播安全與韌性檢測報告

- 檢測日期：2026-07-11
- 範圍：`docs/iphone/index.html`、點播建置工具、三個 GitHub Actions 更新／監測工作流
- 結論：未留下 Critical／High 等級的已知安全漏洞；本次發現的資料完整性、供應鏈與瀏覽器注入風險均已修復。仍有兩項 GitHub Pages／YouTube 嵌入的低風險限制，以及第三方來源可用性的外部限制。

## 已修復項目

### REL-001 — Critical — 局部索引可覆寫完整 845 萬筆統計

稀疏更新執行器只取得各來源前 2–10 頁，舊流程卻把局部筆數視為完整筆數，造成公開統計降至約 55 萬。新增雙基準覆蓋守門、每來源 90% 與全域 95% 保留門檻、100 萬絕對下限；不足時保留完整來源並讓不合格發佈直接失敗。

- `tools/guard-vod-catalog-coverage.mjs:125-243`
- `tools/build-pages-public-catalog.mjs:28-30,345-436`
- `.github/workflows/update-lunatv-vod.yml:206-221,359-370`

### REL-002 — High — 最新影片指向未發佈的漂移詳情頁

最新項目可能已移到新的分頁，但完整快取仍是舊分頁，導致卡片有集數、點開卻無法播放。工作流現在為每來源最新 3 部直接嵌入完整集數；既有項目則由完整搜尋索引回查正確詳情路徑。

- `tools/build-iphone-vod-latest.mjs:24,52-79,109-128`
- `.github/workflows/update-lunatv-vod.yml:194-200`
- `docs/iphone/index.html:1398-1444`

### SEC-001 — Medium — 外部媒體／iframe URL 未集中驗證

所有圖片、影片、外部開啟與 iframe URL 現在經 HTTPS 驗證並移除帳密；嵌入播放器只接受 YouTube 指定主機與 `/embed/` 路徑。外部視窗使用 `noopener,noreferrer`。

- `docs/iphone/index.html:3871-3893,4841,5090-5113`

### SEC-002 — Medium — 缺少嚴格 CSP、SRI 與安全事件綁定

新增無 `unsafe-inline`／`unsafe-eval` 的雜湊 CSP；hls.js 與 pako 使用固定版本及 SHA-384 SRI；移除 inline event/style attribute，圖片錯誤改由委派事件處理。CSP 雜湊由工具產生並在工作流及測試中驗證。

- `docs/iphone/index.html:5,14-15,1095-1102`
- `tools/update-iphone-csp.mjs`
- `tests/iphone-static-security.test.mjs`

### SEC-003 — Medium — GitHub Action 使用可變標籤

三個工作流的 `actions/checkout` 已固定至完整 commit SHA，避免上游標籤遭替換造成供應鏈風險。

- `.github/workflows/check-public-freshness.yml:22`
- `.github/workflows/update-lunatv-vod.yml:24`
- `.github/workflows/update-youtube-live.yml:37`

### REL-003 — Medium — 無變更時工作流誤判失敗／反覆觸發

PowerShell 現在明確保存 `git diff --cached --quiet` 結束碼；直播更新寫入最後嘗試時間；新鮮度監測分開判斷 VOD／Live，只補觸發真正過期的工作流，不再用故意失敗表示已補救。

- `.github/workflows/update-lunatv-vod.yml:303-309,379-385`
- `.github/workflows/update-youtube-live.yml:158,179-185,232-238`
- `tools/check-public-freshness.mjs:48,79-90`
- `.github/workflows/check-public-freshness.yml:45-66`

## 保留風險與外部限制

### LOW-001 — GitHub Pages 僅能使用 meta CSP

GitHub Pages 無法由此儲存庫自訂完整 HTTP 安全標頭，因此 `frame-ancestors`、CSP reporting 等只能由反向代理或自訂網域前端補強。現有 meta CSP 仍封鎖 object、base、form，並限制 script/frame 來源。

### LOW-002 — YouTube iframe 需要 `allow-scripts` 與 `allow-same-origin`

Chrome 會顯示一般性 sandbox 警告，但缺少 `allow-same-origin` 時 YouTube Cache API 會失效、播放器無法初始化。風險由 `frame-src` 指定主機、`safeEmbedUrl()` 路徑白名單、跨來源隔離及 sandbox 其他限制共同降低。

- `docs/iphone/index.html:5,991,3886-3893`

### OPS-001 — 第三方來源健康度不是本儲存庫可完全控制

候選檢測中 78 個點播來源有 73 個 API 正常、5 個受 403／防護頁／格式錯誤影響；系統會保留其最後完整快取，不再因一次失敗刪除數百萬筆資料。直播清單為 58／58 可呈現與播放。

## 驗證紀錄

- Node 測試：11／11 通過（完整度守門、局部索引保護、CSP/SRI、URL 白名單、最新集數嵌入）。
- YAML：Prettier 3.6.2 `--debug-check` 三個工作流通過。
- SRI：即時下載 hls.js 1.6.15、pako 2.1.0 後重新計算 SHA-384，兩者完全相符。
- 資料樹：78／78 `vod-index`、78／78 `vod-search`；總數 8,458,047、可播放 8,445,444。
- 手機瀏覽器：390×844 實測完整計數、搜尋、詳情索引回查、2,831 集分頁、VOD 播放器與 YouTube iframe；YouTube 畫面成功渲染，無 JavaScript error。
- 機密掃描：變更檔與新增程式未發現 API key、密碼、Bearer token 或私鑰；`YOUTUBE_COOKIES_B64` 僅以 GitHub Secret 名稱引用。
