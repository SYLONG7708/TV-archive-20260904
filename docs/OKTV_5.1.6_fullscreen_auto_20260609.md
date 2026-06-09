# OKTV 5.1.6 點播全螢幕與自動畫面適配修補

日期：2026-06-09

## 成品

- APK：`releases/OKTV_5.1.6_builtin_sources_fullscreen_auto_20260609.apk`
- 補丁備份：`patches/VideoActivity.fullscreen_auto_20260609.smali`

## 修改內容

- 點播影片預設畫面比例由 `Default` 改為自動放大 `Zoom`，新開影片會優先填滿螢幕。
- 若單部影片曾記錄 `16:9`、`4:3`、`Fill` 或 `Zoom`，仍保留使用者手動選擇。
- 進入點播全螢幕時，會同步把 Media3 `PlayerView` 與 IJK `IjkVideoView` 設為 `Zoom`，避免外層容器已全螢幕但影片仍停留小畫面或黑邊過大。
- 控制列比例選項第一項顯示由 `Default` 改為 `Auto`。

## 驗證

- `apktool b` 重建成功。
- `zipalign -c -p 4` 通過。
- `apksigner verify --verbose` 通過 v1 / v2 / v3。
- `aapt dump badging` 可讀取，包名仍為 `com.fongmi.android.tv`，版本仍為 `5.1.6`。

## 安裝提醒

此 APK 使用 debug keystore 重新簽名，不能直接覆蓋不同簽名的舊 APK。若安裝失敗，請先移除手機或電視盒上的舊版 OKTV，再安裝此版本。
