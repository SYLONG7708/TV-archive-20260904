package tw.com.sylong.tvcar;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.ConsoleMessage;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONObject;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MainActivity extends Activity {
    private static final String TAG = "YingshiCar";
    private static final String HOME_URL = "https://sylong7708.github.io/TV/docs/iphone/index.html";
    private static final String COMPAT_ASSET = "iphone/index.html";
    private static final String APP_USER_AGENT_TOKEN = "YingshiCar/3.0";
    private static final int ONLINE_MODULE_MIN_CHROME = 89;
    private static final boolean USE_BUNDLED_UI = true;
    private static final long BOOT_TIMEOUT_MS = 22000L;
    public static final String ACTION_VOICE_COMMAND = "tw.com.sylong.tvcar.action.VOICE_COMMAND";
    public static final String EXTRA_VOICE_COMMAND = "tw.com.sylong.tvcar.extra.VOICE_COMMAND";
    public static final String EXTRA_VOICE_QUERY = "tw.com.sylong.tvcar.extra.VOICE_QUERY";
    private static final String DIRECT_PACKAGE = "tw.com.sylong.tvcar.direct";
    private static final int MAX_PENDING_VOICE_COMMANDS = 8;
    private static final Set<String> SUPPORTED_VOICE_COMMANDS = new HashSet<>(Arrays.asList(
            "OPEN", "HOME", "MOVIE", "SERIES", "SHORT", "ANIME", "VARIETY",
            "SEARCH", "PLAY_SEARCH", "LIVE", "PLAY_LIVE", "FULLSCREEN_ON",
            "FULLSCREEN_OFF", "PLAY", "PAUSE", "NEXT", "PREVIOUS", "STOP",
            "CLOSE_PLAYER", "SEEK_FORWARD", "SEEK_BACKWARD", "RESTART"
    ));

    private FrameLayout root;
    private WebView webView;
    private TextView statusView;
    private View customView;
    private FrameLayout customViewContainer;
    private WebChromeClient.CustomViewCallback customViewCallback;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private volatile boolean serveBundledPage;
    private boolean pageReady;
    private int webViewChromeMajor;
    private int bootGeneration;
    private final ArrayDeque<VoiceRequest> pendingVoiceRequests = new ArrayDeque<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);

        root = new FrameLayout(this);
        root.setBackgroundColor(0xff050507);
        setContentView(root);

        statusView = new TextView(this);
        statusView.setText("影視 載入中");
        statusView.setTextColor(0xfff5f5f7);
        statusView.setTextSize(18f);
        statusView.setGravity(Gravity.CENTER);
        statusView.setBackgroundColor(0xff050507);
        root.addView(statusView, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));

        hideSystemUi();
        receiveVoiceIntent(getIntent());
        handleLicenseIntent(getIntent());
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        receiveVoiceIntent(intent);
        handleLicenseIntent(intent);
    }

    @Override
    protected void onResume() {
        super.onResume();
        hideSystemUi();
        if (webView != null) {
            webView.onResume();
            webView.resumeTimers();
        }
    }

    @Override
    protected void onPause() {
        if (webView != null) {
            webView.onPause();
            webView.pauseTimers();
        }
        super.onPause();
    }

    @Override
    protected void onDestroy() {
        if (customView != null) {
            hideCustomView();
        }
        if (webView != null) {
            root.removeView(webView);
            webView.stopLoading();
            webView.setWebChromeClient(null);
            webView.setWebViewClient(null);
            webView.destroy();
            webView = null;
        }
        bootGeneration += 1;
        mainHandler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            hideSystemUi();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        hideSystemUi();
        if (webView != null) {
            injectDeviceProfile(webView);
        }
    }

    @Override
    public void onTrimMemory(int level) {
        super.onTrimMemory(level);
        if (webView != null && level >= TRIM_MEMORY_RUNNING_LOW) {
            webView.clearCache(false);
        }
    }

    @Override
    public void onLowMemory() {
        if (webView != null) {
            webView.clearCache(false);
        }
        super.onLowMemory();
    }

    @Override
    public void onBackPressed() {
        if (customView != null) {
            hideCustomView();
            return;
        }
        if (webView != null && webView.canGoBack()) {
            webView.goBack();
            return;
        }
        moveTaskToBack(true);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (webView != null && event.getAction() == KeyEvent.ACTION_UP && event.getKeyCode() == KeyEvent.KEYCODE_MENU) {
            reloadLatest();
            return true;
        }
        return super.dispatchKeyEvent(event);
    }

    private void handleLicenseIntent(Intent intent) {
        if (!BuildConfig.REQUIRE_LICENSE) {
            startWebView();
            return;
        }
        if (DeviceLicenseManager.isLicensed(this)) {
            startWebView();
        } else if (forwardVoiceToDirectVariant(intent)) {
            finish();
        } else {
            startActivity(new Intent(this, CloudLicenseActivity.class));
            finish();
        }
    }

    private boolean forwardVoiceToDirectVariant(Intent source) {
        if (source == null || !ACTION_VOICE_COMMAND.equals(source.getAction())
                || DIRECT_PACKAGE.equals(getPackageName())) {
            return false;
        }
        try {
            if (!getPackageManager().getApplicationInfo(DIRECT_PACKAGE, 0).enabled) {
                return false;
            }
            Intent forwarded = new Intent(ACTION_VOICE_COMMAND);
            forwarded.setComponent(new android.content.ComponentName(DIRECT_PACKAGE, MainActivity.class.getName()));
            forwarded.putExtra(EXTRA_VOICE_COMMAND, source.getStringExtra(EXTRA_VOICE_COMMAND));
            forwarded.putExtra(EXTRA_VOICE_QUERY, source.getStringExtra(EXTRA_VOICE_QUERY));
            forwarded.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                    | Intent.FLAG_ACTIVITY_CLEAR_TOP
                    | Intent.FLAG_ACTIVITY_SINGLE_TOP);
            startActivity(forwarded);
            Log.i(TAG, "voice_forwarded_to_direct reason=cloud_license_unavailable");
            return true;
        } catch (PackageManager.NameNotFoundException | ActivityNotFoundException | SecurityException error) {
            Log.i(TAG, "voice_direct_fallback_unavailable");
            return false;
        }
    }

    private void startWebView() {
        if (webView != null) {
            drainVoiceRequests();
            return;
        }
        webView = new WebView(this);
        configureWebView(webView);
        root.addView(webView, 0, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        statusView.setText("影視 載入中");
        statusView.setVisibility(View.VISIBLE);
        hideSystemUi();
        loadHome(false);
    }

    private void receiveVoiceIntent(Intent intent) {
        if (intent == null || !ACTION_VOICE_COMMAND.equals(intent.getAction())) {
            return;
        }
        String command = safeVoiceValue(intent.getStringExtra(EXTRA_VOICE_COMMAND), 40).toUpperCase(java.util.Locale.ROOT);
        String query = safeVoiceValue(intent.getStringExtra(EXTRA_VOICE_QUERY), 200);
        if (!SUPPORTED_VOICE_COMMANDS.contains(command)) {
            Log.w(TAG, "voice_rejected command=" + command);
            return;
        }
        if (pendingVoiceRequests.size() >= MAX_PENDING_VOICE_COMMANDS) {
            pendingVoiceRequests.removeFirst();
        }
        pendingVoiceRequests.addLast(new VoiceRequest(command, query));
        Log.i(TAG, "voice_received command=" + command + " queryLength=" + query.length());
        drainVoiceRequests();
    }

    private String safeVoiceValue(String value, int maximumLength) {
        String safe = value == null ? "" : value.trim();
        if (safe.length() > maximumLength) {
            safe = safe.substring(0, maximumLength);
        }
        return safe;
    }

    private void drainVoiceRequests() {
        if (!pageReady || webView == null || pendingVoiceRequests.isEmpty()) {
            return;
        }
        while (!pendingVoiceRequests.isEmpty()) {
            VoiceRequest request = pendingVoiceRequests.removeFirst();
            String script = "(function(){if(!window.YingshiVoice||typeof window.YingshiVoice.execute!=='function')"
                    + "{return 'bridge_not_ready';}window.YingshiVoice.execute("
                    + JSONObject.quote(request.command) + "," + JSONObject.quote(request.query)
                    + ");return 'queued';})()";
            webView.evaluateJavascript(script, value -> Log.i(TAG,
                    "voice_dispatched command=" + request.command + " result=" + value));
        }
    }

    private static final class VoiceRequest {
        final String command;
        final String query;

        VoiceRequest(String command, String query) {
            this.command = command;
            this.query = query;
        }
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    @SuppressLint("SetJavaScriptEnabled")
    private void configureWebView(WebView view) {
        WebSettings settings = view.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(false);
        settings.setLoadsImagesAutomatically(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setSupportMultipleWindows(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSupportZoom(false);
        settings.setBuiltInZoomControls(false);
        settings.setDisplayZoomControls(false);
        settings.setTextZoom(100);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setCacheMode(WebSettings.LOAD_DEFAULT);
        settings.setSaveFormData(false);
        settings.setGeolocationEnabled(false);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            settings.setSafeBrowsingEnabled(true);
        }
        String originalUserAgent = settings.getUserAgentString();
        webViewChromeMajor = chromeMajor(originalUserAgent);
        serveBundledPage = USE_BUNDLED_UI || webViewChromeMajor == 0 || webViewChromeMajor < ONLINE_MODULE_MIN_CHROME;
        settings.setUserAgentString(originalUserAgent + " " + APP_USER_AGENT_TOKEN);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            settings.setMixedContentMode(WebSettings.MIXED_CONTENT_COMPATIBILITY_MODE);
            CookieManager.getInstance().setAcceptThirdPartyCookies(view, true);
        }
        CookieManager.getInstance().setAcceptCookie(true);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            settings.setOffscreenPreRaster(false);
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            view.setRendererPriorityPolicy(WebView.RENDERER_PRIORITY_IMPORTANT, true);
        }
        if (BuildConfig.DEBUG) {
            WebView.setWebContentsDebuggingEnabled(true);
        }

        view.setBackgroundColor(0xff050507);
        view.setKeepScreenOn(true);
        view.setFocusable(true);
        view.setFocusableInTouchMode(true);
        view.setScrollBarStyle(View.SCROLLBARS_INSIDE_OVERLAY);
        view.setOverScrollMode(View.OVER_SCROLL_NEVER);
        view.setLayerType(View.LAYER_TYPE_HARDWARE, null);
        view.setDownloadListener(downloadListener());
        view.addJavascriptInterface(new PageBridge(), "CarBridge");
        view.setWebViewClient(new CarWebViewClient());
        view.setWebChromeClient(new CarWebChromeClient());
    }

    private int chromeMajor(String userAgent) {
        Matcher matcher = Pattern.compile("(?:Chrome|CriOS)/(\\d+)").matcher(userAgent == null ? "" : userAgent);
        if (!matcher.find()) {
            return 0;
        }
        try {
            return Integer.parseInt(matcher.group(1));
        } catch (NumberFormatException ignored) {
            return 0;
        }
    }

    private void loadHome(boolean forceCompatibility) {
        if (webView == null) {
            return;
        }
        serveBundledPage = USE_BUNDLED_UI || forceCompatibility || webViewChromeMajor == 0 || webViewChromeMajor < ONLINE_MODULE_MIN_CHROME;
        pageReady = false;
        statusView.setText(serveBundledPage ? "影視 正在啟動相容模式" : "影視 載入中");
        statusView.setVisibility(View.VISIBLE);
        final int generation = ++bootGeneration;
        webView.loadUrl(buildHomeUrl());
        mainHandler.postDelayed(() -> {
            if (webView == null || pageReady || generation != bootGeneration) {
                return;
            }
            if (!serveBundledPage) {
                loadHome(true);
            } else {
                statusView.setText("影視 載入逾時，按 MENU 重新載入");
                statusView.setVisibility(View.VISIBLE);
            }
        }, BOOT_TIMEOUT_MS);
    }

    private void handlePageFailure(String message) {
        runOnUiThread(() -> {
            if (pageReady || webView == null) {
                return;
            }
            if (!serveBundledPage) {
                loadHome(true);
                return;
            }
            statusView.setText(message == null || message.isEmpty() ? "影視 載入失敗，按 MENU 重新載入" : message);
            statusView.setVisibility(View.VISIBLE);
        });
    }

    private String buildHomeUrl() {
        String stamp = String.valueOf(System.currentTimeMillis());
        DisplayMetrics metrics = getResources().getDisplayMetrics();
        Configuration config = getResources().getConfiguration();
        int widthPx = Math.max(metrics.widthPixels, metrics.heightPixels);
        int heightPx = Math.min(metrics.widthPixels, metrics.heightPixels);
        int shortestDp = Math.min(config.screenWidthDp, config.screenHeightDp);
        String screenClass = screenClass(widthPx, heightPx, shortestDp);
        String deviceProfile = deviceProfile(widthPx, heightPx);

        return HOME_URL +
                "?car_apk=1" +
                "&v=" + encode(BuildConfig.VERSION_NAME) +
                "&boot=" + stamp +
                "&screen=" + encode(screenClass) +
                "&profile=" + encode(deviceProfile) +
                "&w=" + widthPx +
                "&h=" + heightPx +
                "&sw_dp=" + shortestDp +
                "&density=" + encode(String.format(java.util.Locale.US, "%.2f", metrics.density)) +
                "&dpi=" + metrics.densityDpi +
                "&sdk=" + Build.VERSION.SDK_INT +
                "&wv=" + webViewChromeMajor +
                "&compat=" + (serveBundledPage ? "1" : "0");
    }

    private String screenClass(int widthPx, int heightPx, int shortestDp) {
        if (widthPx >= 1900 && heightPx >= 1200) {
            return "car-2k";
        }
        if (widthPx >= 1700 || shortestDp >= 900) {
            return "car-xl";
        }
        if (widthPx >= 1200 || shortestDp >= 600) {
            return "car-wide";
        }
        return "compact";
    }

    private String deviceProfile(int widthPx, int heightPx) {
        String identity = (Build.DEVICE + " " + Build.PRODUCT + " " + Build.MODEL + " " + Build.HARDWARE)
                .toLowerCase(java.util.Locale.US);
        if (widthPx >= 1900 && heightPx >= 1200 && identity.contains("7870")) {
            return "uis7870-129";
        }
        return "universal";
    }

    private void injectDeviceProfile(WebView view) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.KITKAT) {
            return;
        }
        DisplayMetrics metrics = getResources().getDisplayMetrics();
        Configuration config = getResources().getConfiguration();
        int widthPx = Math.max(metrics.widthPixels, metrics.heightPixels);
        int heightPx = Math.min(metrics.widthPixels, metrics.heightPixels);
        int shortestDp = Math.min(config.screenWidthDp, config.screenHeightDp);
        String screenClass = screenClass(widthPx, heightPx, shortestDp);
        String deviceProfile = deviceProfile(widthPx, heightPx);
        String script = "(function(){var e=document.documentElement;" +
                "e.dataset.longTvCar='1';" +
                "e.dataset.longTvScreen='" + screenClass + "';" +
                "e.dataset.longTvProfile='" + deviceProfile + "';" +
                "e.dataset.longTvWidth='" + widthPx + "';" +
                "e.dataset.longTvHeight='" + heightPx + "';" +
                "e.dataset.longTvShortestDp='" + shortestDp + "';" +
                "e.classList.add('long-tv-car','long-tv-" + screenClass + "','long-tv-" + deviceProfile + "');" +
                "})();";
        view.evaluateJavascript(script, null);
    }

    private void injectPlaybackEnhancements(WebView view) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.KITKAT) {
            return;
        }
        view.evaluateJavascript(playbackEnhancementScript(), null);
    }

    private String playbackEnhancementScript() {
        return "(function(){"
                + "function install(){"
                + "if(window.__yingshiFullscreenPatch){window.__yingshiFullscreenPatch.refresh();return;}"
                + "var css=["
                + "'#playerSheet .sheet-head{grid-template-columns:minmax(0,1fr) auto auto!important;}',"
                + "'#playerSheet .yingshi-fullscreen-btn{width:44px!important;height:44px!important;display:inline-flex!important;align-items:center!important;justify-content:center!important;font-size:24px!important;font-weight:700!important;line-height:1!important;}',"
                + "'body.yingshi-player-fullscreen{overflow:hidden!important;overscroll-behavior:none!important;}',"
                + "'#playerSheet.yingshi-fill-screen{position:fixed!important;inset:0!important;z-index:2147483647!important;background:#000!important;}',"
                + "'#playerSheet.yingshi-fill-screen .sheet-backdrop{display:none!important;}',"
                + "'#playerSheet.yingshi-fill-screen .sheet-panel{position:fixed!important;inset:0!important;left:0!important;bottom:auto!important;transform:none!important;width:100vw!important;height:100vh!important;max-height:100vh!important;border:0!important;border-radius:0!important;background:#000!important;padding:0!important;}',"
                + "'#playerSheet.yingshi-fill-screen .sheet-head{position:absolute!important;top:0!important;left:0!important;right:0!important;z-index:4!important;min-height:54px!important;padding:8px 12px!important;background:linear-gradient(180deg,rgba(0,0,0,.88),rgba(0,0,0,.34),transparent)!important;}',"
                + "'#playerSheet.yingshi-fill-screen video,#playerSheet.yingshi-fill-screen .player-frame{position:absolute!important;inset:0!important;width:100vw!important;height:100vh!important;max-height:100vh!important;aspect-ratio:auto!important;border-radius:0!important;object-fit:contain!important;}',"
                + "'#playerSheet.yingshi-fill-screen .yingshi-fullscreen-btn{position:relative!important;z-index:5!important;}'"
                + "].join('');"
                + "if(!document.querySelector('style[data-yingshi-fullscreen]')){var style=document.createElement('style');style.setAttribute('data-yingshi-fullscreen','1');style.textContent=css;document.head.appendChild(style);}"
                + "function sheet(){return document.querySelector('#playerSheet');}"
                + "function activeMedia(){return document.querySelector('#playerFrame:not(.hidden),#player:not(.hidden)');}"
                + "function allowFrames(){try{document.querySelectorAll('iframe').forEach(function(frame){frame.setAttribute('allowfullscreen','');frame.setAttribute('webkitallowfullscreen','');frame.setAttribute('mozallowfullscreen','');var allow=(frame.getAttribute('allow')||'').split(';').map(function(v){return v.trim();}).filter(Boolean);['autoplay','fullscreen','encrypted-media','picture-in-picture'].forEach(function(v){if(allow.indexOf(v)<0){allow.push(v);}});frame.setAttribute('allow',allow.join('; '));});}catch(e){}}"
                + "function isNativeFullscreen(){return !!(document.fullscreenElement||document.webkitFullscreenElement);}"
                + "function isVisualFullscreen(){var s=sheet();return !!(s&&s.classList.contains('yingshi-fill-screen'));}"
                + "function syncButton(){var b=document.querySelector('button[data-yingshi-fullscreen]');if(!b)return;var on=isNativeFullscreen()||isVisualFullscreen();b.setAttribute('aria-pressed',on?'true':'false');b.setAttribute('aria-label',on?'還原':'放大');b.title=on?'還原':'放大';b.innerHTML=on?'&#x2922;':'&#x26F6;';}"
                + "function enterVisual(){var s=sheet();if(!s)return;document.body.classList.add('yingshi-player-fullscreen');s.classList.add('yingshi-fill-screen');syncButton();}"
                + "function exitVisual(){var s=sheet();document.body.classList.remove('yingshi-player-fullscreen');if(s)s.classList.remove('yingshi-fill-screen');syncButton();}"
                + "function requestNative(target){if(!target)return false;var fn=target.requestFullscreen||target.webkitRequestFullscreen||target.msRequestFullscreen;if(!fn)return false;try{fn.call(target);return true;}catch(e){return false;}}"
                + "function enter(){allowFrames();enterVisual();var target=activeMedia();try{if(target&&target.tagName==='VIDEO'){target.play().catch(function(){});}}catch(e){}requestNative(target);}"
                + "function exit(){try{if(document.fullscreenElement&&document.exitFullscreen){document.exitFullscreen();}else if(document.webkitFullscreenElement&&document.webkitExitFullscreen){document.webkitExitFullscreen();}}catch(e){}exitVisual();}"
                + "function ensureButton(){var head=document.querySelector('#playerSheet .sheet-head');if(!head)return;var existing=head.querySelector('button[data-yingshi-fullscreen]');if(existing){syncButton();return;}var btn=document.createElement('button');btn.type='button';btn.className='icon-btn yingshi-fullscreen-btn';btn.setAttribute('data-yingshi-fullscreen','1');btn.addEventListener('click',function(event){event.preventDefault();event.stopPropagation();if(isNativeFullscreen()||isVisualFullscreen()){exit();}else{enter();}});var close=head.querySelector('[data-close-player]');if(close){head.insertBefore(btn,close);}else{head.appendChild(btn);}syncButton();}"
                + "document.addEventListener('fullscreenchange',function(){if(isNativeFullscreen()){enterVisual();}else{exitVisual();}});"
                + "document.addEventListener('webkitfullscreenchange',function(){if(isNativeFullscreen()){enterVisual();}else{exitVisual();}});"
                + "window.__yingshiFullscreenPatch={refresh:function(){ensureButton();allowFrames();syncButton();},enter:enter,exit:exit};"
                + "ensureButton();allowFrames();"
                + "}"
                + "setTimeout(install,2000);"
                + "})();";
    }

    private static String encode(String value) {
        try {
            return URLEncoder.encode(value, "UTF-8");
        } catch (Exception ignored) {
            return value;
        }
    }

    private DownloadListener downloadListener() {
        return (url, userAgent, contentDisposition, mimeType, contentLength) -> {
            try {
                Uri uri = Uri.parse(url);
                String scheme = uri.getScheme();
                if (!"http".equalsIgnoreCase(scheme) && !"https".equalsIgnoreCase(scheme)) {
                    Toast.makeText(this, "已阻擋不支援的下載連結", Toast.LENGTH_SHORT).show();
                    return;
                }
                Intent intent = new Intent(Intent.ACTION_VIEW, uri);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                startActivity(intent);
            } catch (ActivityNotFoundException error) {
                Toast.makeText(this, "沒有可開啟此下載的 App", Toast.LENGTH_SHORT).show();
            }
        };
    }

    private void reloadLatest() {
        if (webView == null) {
            return;
        }
        webView.clearCache(false);
        loadHome(false);
        Toast.makeText(this, "正在重新載入最新內容", Toast.LENGTH_SHORT).show();
    }

    private void recoverWebView() {
        if (webView != null) {
            root.removeView(webView);
            webView.stopLoading();
            webView.setWebChromeClient(null);
            webView.setWebViewClient(null);
            webView.destroy();
        }
        statusView.setText("影視 正在恢復播放環境");
        statusView.setVisibility(View.VISIBLE);
        webView = new WebView(this);
        configureWebView(webView);
        root.addView(webView, 0, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        hideSystemUi();
        loadHome(false);
    }

    private void showCustomView(View view, WebChromeClient.CustomViewCallback callback) {
        if (customView != null) {
            hideCustomView();
        }
        customView = view;
        customViewCallback = callback;

        customViewContainer = new FrameLayout(this);
        customViewContainer.setBackgroundColor(0xff000000);
        customViewContainer.setKeepScreenOn(true);
        customViewContainer.setFocusable(true);
        customViewContainer.setFocusableInTouchMode(true);
        customViewContainer.addView(customView, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT,
                Gravity.CENTER));

        root.addView(customViewContainer, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        if (webView != null) {
            webView.setVisibility(View.GONE);
        }
        statusView.setVisibility(View.GONE);
        enterEmbeddedFullscreen();
        customViewContainer.requestFocus();
    }

    private void hideCustomView() {
        if (customView == null) {
            return;
        }
        if (customViewContainer != null) {
            customViewContainer.removeAllViews();
            root.removeView(customViewContainer);
            customViewContainer = null;
        } else {
            root.removeView(customView);
        }
        customView = null;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            customViewCallback = null;
        }
        if (webView != null) {
            webView.setVisibility(View.VISIBLE);
        }
        exitEmbeddedFullscreen();
    }

    private void hideSystemUi() {
        getWindow().getDecorView().setSystemUiVisibility(
                View.SYSTEM_UI_FLAG_FULLSCREEN |
                        View.SYSTEM_UI_FLAG_HIDE_NAVIGATION |
                        View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY |
                        View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN |
                        View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION |
                        View.SYSTEM_UI_FLAG_LAYOUT_STABLE);
    }

    private void enterEmbeddedFullscreen() {
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN | WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        hideSystemUi();
    }

    private void exitEmbeddedFullscreen() {
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        hideSystemUi();
    }

    private final class CarWebViewClient extends WebViewClient {
        @Override
        public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
            if (!request.isForMainFrame()) {
                return false;
            }
            return handleTopLevelNavigation(request.getUrl());
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            return handleTopLevelNavigation(Uri.parse(url));
        }

        @Override
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            statusView.setText("影視 載入中");
            statusView.setVisibility(View.VISIBLE);
            super.onPageStarted(view, url, favicon);
        }

        @Override
        public void onPageFinished(WebView view, String url) {
            injectDeviceProfile(view);
            hideSystemUi();
            super.onPageFinished(view, url);
        }

        @Override
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            if (isHomeDocument(Uri.parse(failingUrl))) {
                handlePageFailure("網路異常，按 MENU 重新載入");
            }
            super.onReceivedError(view, errorCode, description, failingUrl);
        }

        @Override
        public void onReceivedHttpError(WebView view, WebResourceRequest request, WebResourceResponse errorResponse) {
            if (request.isForMainFrame()) {
                handlePageFailure("頁面讀取失敗，按 MENU 重新載入");
            }
            super.onReceivedHttpError(view, request, errorResponse);
        }

        @Override
        public boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
            if (customView != null) {
                hideCustomView();
            }
            if (view == webView) {
                root.removeView(view);
                webView = null;
            }
            view.setWebChromeClient(null);
            view.setWebViewClient(null);
            view.destroy();
            pageReady = false;
            boolean crashed = Build.VERSION.SDK_INT >= Build.VERSION_CODES.O && detail.didCrash();
            statusView.setText(crashed ? "影視 播放核心異常，正在自動恢復" : "影視 記憶體已釋放，正在自動恢復");
            statusView.setVisibility(View.VISIBLE);
            mainHandler.post(MainActivity.this::recoverWebView);
            return true;
        }

        @Override
        public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
            WebResourceResponse response = compatibilityResponse(request.getUrl());
            return response != null ? response : super.shouldInterceptRequest(view, request);
        }

        @Override
        public WebResourceResponse shouldInterceptRequest(WebView view, String url) {
            WebResourceResponse response = compatibilityResponse(Uri.parse(url));
            return response != null ? response : super.shouldInterceptRequest(view, url);
        }

        private WebResourceResponse compatibilityResponse(Uri uri) {
            if (!serveBundledPage || !isHomeDocument(uri)) {
                return null;
            }
            try {
                return new WebResourceResponse("text/html", "UTF-8", getAssets().open(COMPAT_ASSET));
            } catch (IOException error) {
                handlePageFailure("內建相容頁讀取失敗");
                return null;
            }
        }

    }

    private boolean handleTopLevelNavigation(Uri uri) {
        if (uri == null) {
            return true;
        }
        String scheme = uri.getScheme();
        if (scheme == null) {
            return false;
        }
        if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
            if (isHomeDocument(uri)) {
                return false;
            }
            return openExternalUri(uri);
        }
        if ("about".equalsIgnoreCase(scheme) && "about:blank".equalsIgnoreCase(uri.toString())) {
            return false;
        }
        if ("intent".equalsIgnoreCase(scheme)) {
            try {
                Intent parsed = Intent.parseUri(uri.toString(), Intent.URI_INTENT_SCHEME);
                Uri target = parsed.getData();
                if (target != null) {
                    return openExternalUri(target);
                }
                String fallback = parsed.getStringExtra("browser_fallback_url");
                if (fallback != null) {
                    return openExternalUri(Uri.parse(fallback));
                }
            } catch (Exception ignored) {
                // The unsupported intent is consumed below.
            }
            Toast.makeText(this, "無法開啟外部連結", Toast.LENGTH_SHORT).show();
            return true;
        }
        if (!isAllowedExternalScheme(scheme)) {
            Toast.makeText(this, "已阻擋不支援的外部連結", Toast.LENGTH_SHORT).show();
            return true;
        }
        return openExternalUri(uri);
    }

    private boolean openExternalUri(Uri uri) {
        if (uri == null) {
            return true;
        }
        String scheme = uri.getScheme();
        boolean web = "http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme);
        if (!web && !isAllowedExternalScheme(scheme)) {
            Toast.makeText(this, "已阻擋不支援的外部連結", Toast.LENGTH_SHORT).show();
            return true;
        }
        try {
            Intent intent = new Intent(Intent.ACTION_VIEW, uri);
            intent.addCategory(Intent.CATEGORY_BROWSABLE);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            startActivity(intent);
        } catch (ActivityNotFoundException ignored) {
            Toast.makeText(this, "無法開啟外部連結", Toast.LENGTH_SHORT).show();
        }
        return true;
    }

    private boolean isAllowedExternalScheme(String scheme) {
        return "market".equalsIgnoreCase(scheme)
                || "tel".equalsIgnoreCase(scheme)
                || "mailto".equalsIgnoreCase(scheme)
                || "geo".equalsIgnoreCase(scheme)
                || "sms".equalsIgnoreCase(scheme)
                || "smsto".equalsIgnoreCase(scheme);
    }

    private boolean isHomeDocument(Uri uri) {
        return uri != null
                && "sylong7708.github.io".equalsIgnoreCase(uri.getHost())
                && "/TV/docs/iphone/index.html".equals(uri.getPath());
    }

    private boolean isTrustedUiPage() {
        if (webView == null) {
            return false;
        }
        String currentUrl = webView.getUrl();
        return currentUrl != null && isHomeDocument(Uri.parse(currentUrl));
    }

    private final class PageBridge {
        @JavascriptInterface
        public void onBootStarted(String message) {
            runOnUiThread(() -> {
                if (!isTrustedUiPage()) {
                    return;
                }
                if (!pageReady) {
                    statusView.setText(serveBundledPage ? "影視 相容模式載入中" : "影視 資料載入中");
                    statusView.setVisibility(View.VISIBLE);
                }
            });
        }

        @JavascriptInterface
        public void onAppReady(String message) {
            runOnUiThread(() -> {
                boolean trusted = isTrustedUiPage();
                Log.i(TAG, "page_ready_callback trusted=" + trusted + " message=" + safeVoiceValue(message, 160));
                if (!trusted) {
                    return;
                }
                pageReady = true;
                bootGeneration += 1;
                statusView.setVisibility(View.GONE);
                hideSystemUi();
                if (webView != null) {
                    webView.requestFocus();
                }
                drainVoiceRequests();
            });
        }

        @JavascriptInterface
        public void onVoiceResult(String message) {
            runOnUiThread(() -> {
                if (isTrustedUiPage()) {
                    Log.i(TAG, "voice_result=" + safeVoiceValue(message, 500));
                }
            });
        }

        @JavascriptInterface
        public void onAppError(String message) {
            runOnUiThread(() -> {
                if (isTrustedUiPage()) {
                    handlePageFailure("影視 相容模式載入失敗，按 MENU 重新載入");
                }
            });
        }
    }

    private final class CarWebChromeClient extends WebChromeClient {
        @Override
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            if (consoleMessage != null) {
                Log.i(TAG, "web_console level=" + consoleMessage.messageLevel()
                        + " line=" + consoleMessage.lineNumber()
                        + " message=" + safeVoiceValue(consoleMessage.message(), 500));
            }
            return true;
        }

        @Override
        public void onShowCustomView(View view, CustomViewCallback callback) {
            showCustomView(view, callback);
        }

        @Override
        public void onShowCustomView(View view, int requestedOrientation, CustomViewCallback callback) {
            showCustomView(view, callback);
        }

        @Override
        public void onHideCustomView() {
            hideCustomView();
        }

        @Override
        public boolean onJsAlert(WebView view, String url, String message, JsResult result) {
            Toast.makeText(MainActivity.this, message, Toast.LENGTH_LONG).show();
            result.confirm();
            return true;
        }

        @Override
        public boolean onCreateWindow(WebView view, boolean isDialog, boolean isUserGesture, android.os.Message resultMsg) {
            if (!isUserGesture) {
                return false;
            }
            WebView popup = new WebView(MainActivity.this);
            WebSettings popupSettings = popup.getSettings();
            popupSettings.setJavaScriptEnabled(false);
            popupSettings.setDomStorageEnabled(false);
            popupSettings.setDatabaseEnabled(false);
            popupSettings.setAllowFileAccess(false);
            popupSettings.setAllowContentAccess(false);
            popupSettings.setSupportMultipleWindows(false);
            popup.setWebViewClient(new WebViewClient() {
                private boolean consumed;

                private boolean consume(WebView popupView, Uri uri) {
                    if (!consumed) {
                        consumed = true;
                        if (!handleTopLevelNavigation(uri)) {
                            openExternalUri(uri);
                        }
                    }
                    popupView.stopLoading();
                    mainHandler.post(popupView::destroy);
                    return true;
                }

                @Override
                public boolean shouldOverrideUrlLoading(WebView popupView, WebResourceRequest request) {
                    return consume(popupView, request.getUrl());
                }

                @Override
                public boolean shouldOverrideUrlLoading(WebView popupView, String url) {
                    return consume(popupView, Uri.parse(url));
                }
            });
            WebView.WebViewTransport transport = (WebView.WebViewTransport) resultMsg.obj;
            transport.setWebView(popup);
            resultMsg.sendToTarget();
            return true;
        }
    }
}
