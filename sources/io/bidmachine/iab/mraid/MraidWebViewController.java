package io.bidmachine.iab.mraid;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.util.Base64;
import android.view.ViewGroup;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ironsource.C3522b4;
import com.ironsource.sdk.controller.f;
import io.bidmachine.iab.IabError;
import io.bidmachine.iab.bridge.JsBridgeHandler;
import io.bidmachine.iab.script.ScriptInjector;
import io.bidmachine.iab.utils.Utils;
import io.bidmachine.rendering.measurer.HtmlMeasurer;
import io.bidmachine.rendering.model.ScriptConfig;
import io.bidmachine.util.Error;
import io.bidmachine.util.ViewUtilsKt;
import java.io.ByteArrayInputStream;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class MraidWebViewController {
    public static final Companion Companion = new Companion(null);
    public final Callback a;
    public final long b;
    public final HtmlMeasurer c;
    public final MraidWebView d;
    public final AtomicBoolean e;
    public final AtomicBoolean f;
    public final AtomicBoolean g;
    public final ScriptInjector h;
    public final MraidClick i;
    public boolean j;
    public boolean k;
    public MraidViewState l;
    public MraidOrientationProperties m;

    public interface Callback {
        void onCalendarEvent(String str);

        void onClose();

        void onError(IabError iabError);

        void onExpand(String str);

        void onLoaded();

        void onOpen(String str, Point point);

        void onOpenPrivacySheet(String str);

        void onOrientation(MraidOrientationProperties mraidOrientationProperties);

        void onPageCommitVisible();

        void onPageFinished(String str);

        void onPlayVideo(String str);

        void onStorePicture(String str);

        void onUseCustomClose(boolean z);

        void onWebViewClicked();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public final class b implements MraidWebViewListener {
        public b() {
        }

        @Override // io.bidmachine.iab.mraid.MraidWebViewListener
        public void onMraidScreenMetricsChanged(MraidScreenMetrics mraidScreenMetrics) {
            Intrinsics.checkNotNullParameter(mraidScreenMetrics, "mraidScreenMetrics");
            if (!MraidWebViewController.this.f.get() || MraidWebViewController.this.l == MraidViewState.HIDDEN) {
                return;
            }
            MraidWebViewController.this.applyScreenMetrics(mraidScreenMetrics);
        }
    }

    public static final class c extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "handleJsCommand - " + this.a;
        }
    }

    public static final class d extends Lambda implements Function0 {
        public static final d a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "handleJsCommand not found";
        }
    }

    public static final class e extends Lambda implements Function0 {
        public static final e a = new e();

        public e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "Can't open url because webView wasn't clicked";
        }
    }

    public static final class f extends Lambda implements Function0 {
        public static final f a = new f();

        public f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "url is null or empty";
        }
    }

    public static final class g extends Lambda implements Function0 {
        public static final g a = new g();

        public g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "mraid.resize is not supported";
        }
    }

    public static final class h extends Lambda implements Function0 {
        public static final h a = new h();

        public h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "data is null or empty";
        }
    }

    public static final class i extends Lambda implements Function0 {
        public static final i a = new i();

        public i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "data must be base64 encoded json";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MraidWebViewController(Context context, Callback callback, long j, HtmlMeasurer htmlMeasurer) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.a = callback;
        this.b = j;
        this.c = htmlMeasurer;
        MraidWebView mraidWebView = new MraidWebView(context, this);
        this.d = mraidWebView;
        this.e = new AtomicBoolean(false);
        this.f = new AtomicBoolean(false);
        this.g = new AtomicBoolean(false);
        this.h = new ScriptInjector(mraidWebView, null, 2, 0 == true ? 1 : 0);
        this.i = new MraidClick();
        this.l = MraidViewState.LOADING;
        mraidWebView.setWebViewClient(new a());
        mraidWebView.setMraidWebViewListener(new b());
        if (htmlMeasurer != null) {
            htmlMeasurer.onViewCreated(mraidWebView);
        }
    }

    public static final void a(MraidWebViewController this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a();
    }

    public final void applyClick(Point point) {
        Intrinsics.checkNotNullParameter(point, "point");
        injectJs(this.i.getJs(point));
    }

    public final void applyLogLevel(int i2) {
        if (i2 == 3) {
            injectJs("mraid.logLevel = mraid.LogLevelEnum.DEBUG;");
            return;
        }
        if (i2 == 4) {
            injectJs("mraid.logLevel = mraid.LogLevelEnum.INFO;");
            return;
        }
        if (i2 == 5) {
            injectJs("mraid.logLevel = mraid.LogLevelEnum.WARNING;");
        } else if (i2 != 6) {
            injectJs("mraid.logLevel = mraid.LogLevelEnum.NONE;");
        } else {
            injectJs("mraid.logLevel = mraid.LogLevelEnum.ERROR;");
        }
    }

    public final void applyPlacement(MraidPlacementType mraidPlacementType) {
        if (mraidPlacementType == null) {
            return;
        }
        injectJs("mraid.setPlacementType('" + mraidPlacementType.b() + "');");
    }

    public final void applyScreenMetrics(MraidScreenMetrics mraidScreenMetrics) {
        Intrinsics.checkNotNullParameter(mraidScreenMetrics, "mraidScreenMetrics");
        Rect screenRectDp = mraidScreenMetrics.getScreenRectDp();
        Rect rootViewRectDp = mraidScreenMetrics.getRootViewRectDp();
        injectJs("mraid.setScreenSize(" + screenRectDp.width() + ',' + screenRectDp.height() + ");mraid.setMaxSize(" + rootViewRectDp.width() + ',' + rootViewRectDp.height() + ");mraid.setCurrentPosition(" + Utils.stringifyRect(mraidScreenMetrics.getCurrentAdRectDp()) + ");mraid.setDefaultPosition(" + Utils.stringifyRect(mraidScreenMetrics.getDefaultAdRectDp()) + ");mraid.fireSizeChangeEvent(" + Utils.stringifySize(mraidScreenMetrics.getCurrentAdRectDp()) + ");");
    }

    public final void applyState(MraidViewState mraidViewState) {
        Intrinsics.checkNotNullParameter(mraidViewState, "mraidViewState");
        this.l = mraidViewState;
        injectJs("mraid.fireStateChangeEvent('" + mraidViewState.toJsString() + "');");
    }

    public final void applySupportedServices(MraidNativeFeatureManager mraidNativeFeatureManager) {
        Intrinsics.checkNotNullParameter(mraidNativeFeatureManager, "mraidNativeFeatureManager");
        injectJs("mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, " + mraidNativeFeatureManager.isCalendarFeatureAvailable() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, " + mraidNativeFeatureManager.isInlineVideoFeatureAvailable() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, " + mraidNativeFeatureManager.isSmsFeatureAvailable() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, " + mraidNativeFeatureManager.isStorePictureFeatureAvailable() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, " + mraidNativeFeatureManager.isTelFeatureAvailable() + ");");
    }

    public final void applyViewable(boolean z) {
        injectJs("mraid.fireViewableChangeEvent(" + z + ");");
    }

    public final void b() {
        injectJs("mraid.nativeCallComplete();");
    }

    public final void c(String str) {
        if (this.b == 0 || System.currentTimeMillis() - this.d.getClickTimeMs() > this.b) {
            return;
        }
        this.a.onExpand(str);
    }

    public final void destroy() {
        Unit unit;
        this.g.set(true);
        this.h.destroy();
        HtmlMeasurer htmlMeasurer = this.c;
        if (htmlMeasurer != null) {
            htmlMeasurer.destroy(new Runnable() { // from class: io.bidmachine.iab.mraid.MraidWebViewController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MraidWebViewController.a(this.f$0);
                }
            });
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            a();
        }
    }

    public final MraidOrientationProperties getLastOrientationProperties() {
        return this.m;
    }

    public final MraidWebView getMraidWebView() {
        return this.d;
    }

    public final void injectJs(String str) {
        this.h.injectAtRuntime(str);
    }

    public final boolean isDestroyed() {
        return this.g.get();
    }

    public final boolean isReceivedJsError() {
        return this.k;
    }

    public final boolean isUseCustomClose() {
        return this.j;
    }

    public final void load(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.e.set(false);
        this.f.set(false);
        this.d.loadUrl(url);
    }

    public final void notifyReady() {
        injectJs("mraid.fireReadyEvent();");
    }

    public final void onAddedToContainer(ViewGroup container) {
        Intrinsics.checkNotNullParameter(container, "container");
        HtmlMeasurer htmlMeasurer = this.c;
        if (htmlMeasurer != null) {
            htmlMeasurer.onViewAddedToContainer(this.d, container);
        }
    }

    public final void onClicked() {
        HtmlMeasurer htmlMeasurer = this.c;
        if (htmlMeasurer != null) {
            htmlMeasurer.onClicked();
        }
    }

    public final void onShown() {
        HtmlMeasurer htmlMeasurer = this.c;
        if (htmlMeasurer != null) {
            htmlMeasurer.onShown();
        }
    }

    public final void onViewabilityChanged(boolean z) {
        this.d.onViewabilityChanged(z);
        if (this.f.get()) {
            applyViewable(z);
        }
    }

    public final void onWebViewClicked() {
        this.a.onWebViewClicked();
    }

    public final void a() {
        ViewUtilsKt.removeFromParent(this.d);
        this.d.destroy();
    }

    public final void b(String str) {
        if (!this.d.wasClicked()) {
            MraidLog.d("MraidWebViewController", e.a);
        } else {
            this.a.onOpen(str, this.d.getClickPoint());
            this.d.resetClicked();
        }
    }

    public final class a extends WebViewClient {

        /* JADX INFO: renamed from: io.bidmachine.iab.mraid.MraidWebViewController$a$a, reason: collision with other inner class name */
        public static final class C1163a extends Lambda implements Function0 {
            public final /* synthetic */ String a;
            public final /* synthetic */ String b;
            public final /* synthetic */ int c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1163a(String str, String str2, int i) {
                super(0);
                this.a = str;
                this.b = str2;
                this.c = i;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final String invoke() {
                return "onError: " + this.a + " / " + this.b + " / " + this.c;
            }
        }

        public static final class b extends Lambda implements Function0 {
            public static final b a = new b();

            public b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final String invoke() {
                return "onPageCommitVisible";
            }
        }

        public static final class c extends Lambda implements Function0 {
            public static final c a = new c();

            public c() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final String invoke() {
                return "onPageFinished";
            }
        }

        public static final class d extends Lambda implements Function0 {
            public static final d a = new d();

            public d() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final String invoke() {
                return "onPageStarted";
            }
        }

        public static final class e extends Lambda implements Function0 {
            public static final e a = new e();

            public e() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final String invoke() {
                return "onRenderProcessGone";
            }
        }

        public a() {
        }

        public final void a(String str, String str2, int i) {
            MraidLog.d("MraidWebViewController", new C1163a(str, str2, i));
            if (str2 == null || !StringsKt__StringsKt.contains$default((CharSequence) str2, (CharSequence) "ERR_INTERNET_DISCONNECTED", false, 2, (Object) null)) {
                return;
            }
            MraidWebViewController.this.k = true;
        }

        public final void b() {
            if (MraidWebViewController.this.e.compareAndSet(false, true)) {
                MraidLog.d("MraidWebViewController", b.a);
                MraidWebViewController.this.a.onPageCommitVisible();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            b();
            super.onPageFinished(webView, url);
            MraidLog.d("MraidWebViewController", c.a);
            if (MraidWebViewController.this.f.compareAndSet(false, true)) {
                HtmlMeasurer htmlMeasurer = MraidWebViewController.this.c;
                if (htmlMeasurer != null) {
                    htmlMeasurer.onViewReady(MraidWebViewController.this.getMraidWebView());
                }
                MraidWebViewController.this.a.onPageFinished(url);
                MraidWebViewController.this.getMraidWebView().onPageFinished();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            MraidLog.d("MraidWebViewController", d.a);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest request, WebResourceError error) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(error, "error");
            Uri url = request.getUrl();
            a(url != null ? url.toString() : null, error.getDescription().toString(), error.getErrorCode());
            super.onReceivedError(webView, request, error);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            MraidLog.d("MraidWebViewController", e.a);
            MraidWebViewController.this.destroy();
            MraidWebViewController mraidWebViewController = MraidWebViewController.this;
            IabError iabErrorInternal = IabError.internal("WebViewClient - onRenderProcessGone");
            Intrinsics.checkNotNullExpressionValue(iabErrorInternal, "internal(\"WebViewClient - onRenderProcessGone\")");
            mraidWebViewController.a(iabErrorInternal);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(request, "request");
            Uri url = request.getUrl();
            Intrinsics.checkNotNullExpressionValue(url, "request.url");
            return a(url) ? a() : super.shouldInterceptRequest(view, request);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            if (StringsKt__StringsJVMKt.startsWith$default(url, "mraid://", false, 2, null)) {
                MraidWebViewController.this.a(url);
                return true;
            }
            if (JsBridgeHandler.isHandled(url)) {
                JsBridgeHandler.handleJsCommand(MraidWebViewController.this.getMraidWebView(), url);
                return true;
            }
            MraidWebViewController.this.b(url);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageCommitVisible(WebView webView, String str) {
            super.onPageCommitVisible(webView, str);
            b();
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView view, String url) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(url, "url");
            if (a(url)) {
                return a();
            }
            return super.shouldInterceptRequest(view, url);
        }

        public final boolean a(String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            String lowerCase = url.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            Uri uri = Uri.parse(lowerCase);
            Intrinsics.checkNotNullExpressionValue(uri, "parse(url.lowercase())");
            return a(uri);
        }

        public final boolean a(Uri uri) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            return Intrinsics.areEqual("mraid.js", uri.getLastPathSegment());
        }

        public final WebResourceResponse a() {
            Charset charset = Charsets.UTF_8;
            byte[] bytes = MraidUtils.INSTANCE.obtainMraidJs().getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
            return new WebResourceResponse("text/javascript", charset.name(), new ByteArrayInputStream(bytes));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            a(str2, str, i);
            super.onReceivedError(webView, i, str, str2);
        }
    }

    public final void a(String str) {
        Map<String, String> commandUrl;
        MraidLog.d("MraidWebViewController", new c(str));
        try {
            commandUrl = MraidUtils.INSTANCE.parseCommandUrl(str);
        } catch (Throwable th) {
            MraidLog.e("MraidWebViewController", th);
        }
        if (commandUrl == null) {
            return;
        }
        String str2 = commandUrl.get(f.b.g);
        if (str2 == null) {
            MraidLog.w("MraidWebViewController", d.a);
        } else {
            a(str2, commandUrl);
            b();
        }
    }

    public final void load(String str, String htmlData, List<ScriptConfig> list) {
        String strPrepareCreativeForMeasure;
        Intrinsics.checkNotNullParameter(htmlData, "htmlData");
        this.e.set(false);
        this.f.set(false);
        if (list != null) {
            this.h.injectStart(str, list);
        }
        this.i.configure(list);
        ScriptConfig.Companion companion = ScriptConfig.Companion;
        ScriptConfig scriptConfigCreateInline = companion.createInline("mraid", 0, MraidUtils.INSTANCE.obtainMraidJs(), true);
        String strObtainJs = JsBridgeHandler.obtainJs();
        Intrinsics.checkNotNullExpressionValue(strObtainJs, "obtainJs()");
        List<ScriptConfig> listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ScriptConfig[]{scriptConfigCreateInline, ScriptConfig.Companion.createInline$default(companion, "jsbridge", 1, strObtainJs, false, 8, null)});
        String strProcessRawHtml = MraidUtils.processRawHtml(htmlData);
        HtmlMeasurer htmlMeasurer = this.c;
        if (htmlMeasurer != null && (strPrepareCreativeForMeasure = htmlMeasurer.prepareCreativeForMeasure(strProcessRawHtml)) != null) {
            strProcessRawHtml = strPrepareCreativeForMeasure;
        }
        this.d.loadDataWithBaseURL(str, this.h.modifyHtml(strProcessRawHtml, listListOf), "text/html", "UTF-8", null);
        applyLogLevel(MraidLog.logLevel);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void a(String str, Map map) {
        boolean z;
        switch (str.hashCode()) {
            case -1886160473:
                if (str.equals("playVideo")) {
                    this.a.onPlayVideo((String) map.get("url"));
                    break;
                }
                break;
            case -1700226527:
                if (str.equals("openPrivacySheet")) {
                    String str2 = (String) map.get("data");
                    if (str2 != null && str2.length() != 0) {
                        try {
                            byte[] bArrDecode = Base64.decode(str2, 2);
                            Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(base64Json, Base64.NO_WRAP)");
                            this.a.onOpenPrivacySheet(new String(bArrDecode, Charsets.UTF_8));
                        } catch (Throwable unused) {
                            MraidLog.e("MraidWebViewController", i.a);
                            return;
                        }
                    } else {
                        MraidLog.e("MraidWebViewController", h.a);
                    }
                    break;
                }
                break;
            case -1289167206:
                if (str.equals("expand")) {
                    c((String) map.get("url"));
                    break;
                }
                break;
            case -1097519099:
                if (str.equals(C3522b4.i.r)) {
                    this.a.onLoaded();
                    break;
                }
                break;
            case -1041060124:
                if (str.equals("noFill")) {
                    IabError iabErrorNoFIll = IabError.noFIll("Fired noFill event from mraid.js");
                    Intrinsics.checkNotNullExpressionValue(iabErrorNoFIll, "noFIll(\"Fired noFill event from mraid.js\")");
                    a(iabErrorNoFIll);
                    break;
                }
                break;
            case -934437708:
                if (str.equals("resize")) {
                    MraidLog.d("MraidWebViewController", g.a);
                    break;
                }
                break;
            case -733616544:
                if (str.equals("createCalendarEvent")) {
                    this.a.onCalendarEvent((String) map.get("eventJSON"));
                    break;
                }
                break;
            case 3417674:
                if (str.equals("open")) {
                    String str3 = (String) map.get("url");
                    if (str3 != null && str3.length() != 0) {
                        b(str3);
                    } else {
                        MraidLog.e("MraidWebViewController", f.a);
                    }
                    break;
                }
                break;
            case 94756344:
                if (str.equals("close")) {
                    this.a.onClose();
                    break;
                }
                break;
            case 133423073:
                if (str.equals("setOrientationProperties")) {
                    MraidOrientationProperties mraidOrientationProperties = new MraidOrientationProperties(Boolean.parseBoolean((String) map.get("allowOrientationChange")), MraidOrientationProperties.forceOrientationFromString((String) map.get("forceOrientation")));
                    this.m = mraidOrientationProperties;
                    this.a.onOrientation(mraidOrientationProperties);
                    break;
                }
                break;
            case 459238621:
                if (str.equals("storePicture")) {
                    this.a.onStorePicture((String) map.get("url"));
                    break;
                }
                break;
            case 1614272768:
                if (str.equals("useCustomClose") && this.j != (z = Boolean.parseBoolean((String) map.get("useCustomClose")))) {
                    this.j = z;
                    this.a.onUseCustomClose(z);
                }
                break;
        }
    }

    public final void a(IabError iabError) {
        HtmlMeasurer htmlMeasurer = this.c;
        if (htmlMeasurer != null) {
            String message = iabError.getMessage();
            Intrinsics.checkNotNullExpressionValue(message, "iabError.message");
            htmlMeasurer.onError(new Error(message));
        }
        this.a.onError(iabError);
    }
}
