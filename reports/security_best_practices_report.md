# 影視 OKTV 搜尋穩定版安全檢查報告

- 日期：2026-08-30
- 範圍：`docs/iphone/index.html`、Android Capacitor 專案、npm 相依套件與最終 APK
- 結論：已修正本次發現的高／中風險項目；程式碼目前沒有未處理的高風險或中風險弱點。保留兩項交付與外部來源的營運風險，詳列於下方。

## 已修正項目

### OKTV-AVAIL-001 — 高風險 — 相同搜尋在完成後反覆重啟

- 位置：`docs/iphone/index.html:4606`
- 證據：完成、逾時或取消後若畫面再次 render，舊邏輯會對相同查詢重新啟動；壓力診斷曾觀察同一查詢重啟 556 次。
- 影響：CPU、網路與記憶體持續消耗，表現為「分析很久、斷線、重新連線」。
- 修正：將 `scopeKey` 與 `complete`、`timed-out`、`cancelled` 終止狀態一起比對，相同查詢不再重啟。
- 緩解：搜尋另有 15 秒總期限、6 秒分片期限與明確取消操作。
- 誤判說明：這是可重現的可用性阻斷，不是單純測試環境延遲。

### OKTV-AVAIL-002 — 高風險 — 壓縮索引可能造成資源耗盡

- 位置：`docs/iphone/index.html:1181-1210`
- 證據：來源索引是外部 gzip；未設上限時，巨大檔案或高壓縮比資料可能長時間解壓或耗盡記憶體。
- 影響：頁面凍結、WebView 被系統終止，或搜尋斷線。
- 修正：壓縮輸入上限 8 MiB、解壓後上限 64 MiB、瀏覽器解壓期限 2.5 秒；優先使用已固定版本與 SRI 的 pako。
- 緩解：分片掃描定期讓出主執行緒並檢查 AbortSignal。
- 誤判說明：正常索引遠低於限制，不會受影響。

### OKTV-WEB-003 — 中風險 — 第三方 iframe 權限過寬

- 位置：`docs/iphone/index.html:1028`
- 證據：原 sandbox 同時允許 script 與 same-origin，會削弱隔離。
- 影響：受信任邊界不清楚時，第三方嵌入頁面可能取得較多能力。
- 修正：移除 `allow-same-origin`，只保留播放所需的 `allow-scripts allow-popups`；嵌入網址另限制為 YouTube embed 主機。
- 緩解：CSP `frame-src` 只允許 YouTube 與 youtube-nocookie。
- 誤判說明：此項是預防性強化，未發現已被利用的證據。

### OKTV-MOBILE-004 — 中風險 — Android 備份與明文流量設定

- 位置：`android/app/src/main/AndroidManifest.xml:6-14`、`capacitor.config.ts:18-19`
- 證據：預設備份可能帶走 WebView 狀態；明文 HTTP 會遭攔截或竄改。
- 影響：裝置轉移／雲端備份外洩本機狀態，或媒體與索引遭中間人修改。
- 修正：`allowBackup=false`、完整 data extraction 排除規則、`usesCleartextTraffic=false`、Capacitor HTTPS scheme 與 `cleartext=false`。
- 緩解：網頁 `safeHttpUrl` 會把 HTTP 升級為 HTTPS，並拒絕非 HTTPS 協定。
- 誤判說明：目前 localStorage 只保存來源選擇，但仍採最小資料暴露設定。

### OKTV-SUPPLY-005 — 中風險 — 套件供應鏈版本與已知弱點

- 位置：`package.json:19-34`
- 證據：初始開發相依含舊版資產工具鏈與稽核警告。
- 影響：建置環境可能受已知套件弱點影響。
- 修正：移除未使用的 `@capacitor/assets`，將主要相依固定到精確版本，加入 `uuid 11.1.1` override。
- 驗證：`npm audit` 與 `npm audit --omit=dev` 均為 0 vulnerabilities。
- 誤判說明：此項主要影響建置供應鏈，不代表舊 APK 已被入侵。

### OKTV-XSS-006 — 中風險 — 外部來源文字進入動態 HTML

- 位置：`docs/iphone/index.html:3938-3989` 與各 render 函式
- 證據：片名、簡介、演員、來源名稱與 URL 都由外部資料提供，頁面多處使用 `innerHTML` 組版。
- 影響：若輸出未編碼，惡意來源可造成 XSS 或危險 URL 導航。
- 修正：文字統一經 `escapeHtml`／`displayHtml`；來源簡介先以不建立 DOM 的方式轉為純文字；媒體 URL 經 HTTPS 驗證，embed URL 再做主機與路徑 allowlist。
- 緩解：CSP 禁止 `unsafe-inline`、`unsafe-eval`、object 與 form；測試禁止 inline event handler 與 style attribute。
- 誤判說明：`innerHTML` 本身不是漏洞；目前可變資料均經輸出編碼或固定模板產生。

## 保留風險

### OKTV-REL-001 — 中風險 — 本次 APK 使用 Debug 憑證

- 證據：APK Signature Scheme v2 驗證成功，憑證為 `CN=Android Debug`。
- 影響：適合私人側載測試，不適合 Play Store 或正式公開散布；Debug key 不能作為長期身分保證。
- 建議：公開發佈前建立離線保管的 release keystore、啟用 v2/v3 簽章並保存升級金鑰。
- 誤判說明：這不影響本次私人安裝的完整性驗證，但屬正式發佈阻擋項。

### OKTV-NET-002 — 低風險 — 媒體／資料來源允許任意 HTTPS 主機

- 證據：影音聚合器必須讀取多個 HTTPS 來源，因此 CSP 的 `connect-src`、`media-src` 與 `img-src` 保留 `https:`。
- 影響：第三方來源仍可記錄使用者 IP，來源失效、追蹤或 CORS 限制也不受本程式控制。
- 建議：若轉為公開服務，改用已簽章來源清單與網域 allowlist，並提供來源隱私揭露。
- 現有緩解：不執行遠端 JAR、DEX、Python、Spider 或任意 script；外部資料只作索引、圖片與媒體用途。

## 驗證摘要

- 網頁測試：17/17 通過；CSP hash current；`git diff --check` 通過。
- 真實瀏覽器：搜尋、取消、詳情補載、集數、播放器開啟、來源失敗提示、390px 無溢位均通過；最終無 CSP 違規。
- Android：單元測試 1/1；App Lint 0 issue；Gradle clean build 成功。
- 套件：`npm audit` 0 vulnerabilities。
- APK：簽章驗證成功；只要求 INTERNET 與 Android 自動產生的 non-exported receiver 權限。
- 排除範圍：未執行或植入使用者指定 `config.bin` 內的不明 Spider、遠端 JAR、Python 或解析站程式碼。
