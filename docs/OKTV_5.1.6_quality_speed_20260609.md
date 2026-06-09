# OKTV 5.1.6 點播畫質與播放速度優化紀錄

日期：2026-06-09

## 目標

基於 `OKTV_5.1.6_builtin_sources_fullscreen_auto_20260609.apk`，改善點播類影片在全螢幕自動縮放後畫質變差的問題，並提升啟播與重緩衝反應速度。

## 修改內容

1. `VideoActivity.smali`
   - 取消進入播放器時固定套用 `U0(4)` 的 Zoom 模式。
   - 改為呼叫 `l0()` 套用使用者或預設縮放設定。
   - 將預設縮放值從 `4` 改為 `0`，讓 Auto 預設保留比例適應畫面，避免低解析片源被一律放大裁切。

2. `F3/f.smali`
   - Exo `bufferForPlaybackMs` 從 `1000ms` 調整為 `300ms`。
   - Exo `bufferForPlaybackAfterRebufferMs` 從 `2000ms` 調整為 `800ms`。
   - `video_prefer` 預設從 false 改為 true，讓內建擴充影片 renderer 預設可優先使用，提高部分格式與高碼率片源的相容性。

## 產出 APK

`releases/OKTV_5.1.6_builtin_sources_fullscreen_auto_quality_speed_20260609.apk`

SHA256：

`827247524BE21A4C33C02CB1E13928D77DA3B133F3F578B93B94612B75E67530`

## 驗證

使用 Android SDK build-tools 36.0.0：

- `apktool b`：成功
- `zipalign -c -p 4`：成功
- `apksigner verify --verbose`：v1/v2/v3 簽章驗證成功
- `aapt dump badging`：
  - package：`com.fongmi.android.tv`
  - versionCode：`516`
  - versionName：`5.1.6`
  - app label：`影視`

## 注意

此版能避免因強制 Zoom 導致的過度放大、裁切與畫質劣化，並提升啟播/重緩衝反應。若某些點播來源本身只提供低解析度或低碼率串流，APK 無法把來源內容真正升級成高清，只能減少播放器端造成的額外畫質損失。
