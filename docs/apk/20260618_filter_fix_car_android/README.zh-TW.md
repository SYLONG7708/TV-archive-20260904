# OKTV iPhone 車載安卓分類修正版

日期：2026-06-18

## APK

- 檔案：`OKTV_iPhone_filter_fix_car_android_20260618_debug.apk`
- SHA256：`6572EC05AA64559BA45C92D7AC530827DB1BD88A707638EEEB2900FFF4190054`
- App ID：`com.yingshi.player`
- 版本：`1.1-online` (`versionCode=2`)
- min SDK：24
- target SDK：36
- 簽章：Android Debug，APK Signature Scheme v2 驗證通過

## 本次修正

- 分類 chips 不再使用全域 catalog 內的髒 filters，改由目前載入影片動態產生。
- 年份只保留有效年份，會移除 `2030`、`2056` 這類來源髒值。
- 地區會拆分並清理 `: 大陸`、`: 日本`、`：台灣` 這類前綴符號。
- 類型會移除 `_M`、純標點、成人片名片段與明顯不屬於類型的文字。
- Android Capacitor WebView 會優先讀 GitHub Pages 最新線上資料，再回退內建資料。
- Gradle 已加入 `android.overridePathCheck=true`，避免 Windows 中文路徑阻擋建置。

## 已驗證

- `public/iphone/index.html` module syntax OK。
- `npm run build` 通過。
- `dist/iphone/` 瀏覽器煙霧測試通過，分類與篩選器 chips 無髒值。
- `npm run android:debug` 通過並產生 APK。
- `aapt dump badging` 可讀取 APK metadata。
- `apksigner verify --verbose --print-certs` 通過。
