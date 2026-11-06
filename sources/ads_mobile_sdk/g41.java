package ads_mobile_sdk;

import android.content.Intent;
import android.net.Uri;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.common.base.Splitter;
import com.ironsource.C3522b4;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class g41 extends WebViewClient {
    public final nr1 a;
    public final r31 b;
    public final CoroutineScope c;
    public final o21 d;
    public final rb e;
    public final ex0 f;
    public final vk0 g;
    public final e01 h;
    public final tn3 i;
    public final AtomicBoolean j;
    public final AtomicBoolean k;
    public final AtomicInteger l;
    public final tn3 m;
    public final tn3 n;
    public final tn3 o;
    public final tn3 p;
    public oy1 q;
    public p24 r;
    public final tn3 s;
    public final AtomicBoolean t;
    public volatile s93 u;
    public static final /* synthetic */ KProperty[] w = {kk.a(g41.class, "loadedDeferred", "getLoadedDeferred()Lkotlinx/coroutines/CompletableDeferred;", 0), kk.a(g41.class, "encounteredError", "getEncounteredError()Lcom/google/android/libraries/ads/mobile/sdk/internal/util/GmaResult$WebError;", 0), kk.a(g41.class, "followUrls", "getFollowUrls()Z", 0), kk.a(g41.class, "isCrossProcessAdEnabled", "isCrossProcessAdEnabled()Z", 0), kk.a(g41.class, "adEventEmitter", "getAdEventEmitter()Lcom/google/android/libraries/ads/mobile/sdk/internal/event/InternalAdEventListener;", 0), kk.a(g41.class, "onJavascriptReadyListener", "getOnJavascriptReadyListener()Lcom/google/android/libraries/ads/mobile/sdk/internal/webview/JavascriptReadyListener;", 0)};
    public static final s31 v = new s31();

    public g41(nr1 jsContext, r31 gmaWebView, CoroutineScope backgroundScope, o21 gmaUtil, rb adSpamClient, ex0 flags, vk0 vk0Var, e01 httpClient) {
        Intrinsics.checkNotNullParameter(jsContext, "jsContext");
        Intrinsics.checkNotNullParameter(gmaWebView, "gmaWebView");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.a = jsContext;
        this.b = gmaWebView;
        this.c = backgroundScope;
        this.d = gmaUtil;
        this.e = adSpamClient;
        this.f = flags;
        this.g = vk0Var;
        this.h = httpClient;
        this.i = new tn3(null);
        this.j = new AtomicBoolean(false);
        this.k = new AtomicBoolean(false);
        this.l = new AtomicInteger(0);
        this.m = new tn3(null);
        Boolean bool = Boolean.FALSE;
        this.n = new tn3(bool);
        this.o = new tn3(bool);
        this.p = new tn3(null);
        this.s = new tn3(null);
        this.t = new AtomicBoolean(false);
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView view, String url) throws InterruptedException {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        Uri uri = Uri.parse(url);
        v.getClass();
        if (s31.a(uri)) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            BuildersKt__BuildersKt.runBlocking$default(null, new w31(this, uri, null), 1, null);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String url) throws InterruptedException {
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(url, "url");
        this.j.set(true);
        mr1 mr1Var = (mr1) this.s.getValue(this, w[5]);
        if (mr1Var != null) {
            f62 f62Var = (f62) mr1Var;
            BuildersKt__BuildersKt.runBlocking$default(null, new e62(f62Var.a, f62Var.b, null), 1, null);
        }
        d();
        if (this.b.k.get()) {
            CoroutineScope coroutineScope = this.c;
            z31 block = new z31(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView view, RenderProcessGoneDetail detail) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(detail, "detail");
        this.b.a(detail.rendererPriorityAtExit(), detail.didCrash());
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) throws InterruptedException {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        s31 s31Var = v;
        Uri url = request.getUrl();
        Intrinsics.checkNotNullExpressionValue(url, "getUrl(...)");
        s31Var.getClass();
        if (s31.a(url)) {
            Uri uri = request.getUrl();
            Intrinsics.checkNotNullExpressionValue(uri, "getUrl(...)");
            Intrinsics.checkNotNullParameter(uri, "uri");
            BuildersKt__BuildersKt.runBlocking$default(null, new w31(this, uri, null), 1, null);
            return true;
        }
        if (((Boolean) this.n.getValue(this, w[2])).booleanValue()) {
            Uri url2 = request.getUrl();
            Intrinsics.checkNotNullExpressionValue(url2, "getUrl(...)");
            if (s31.b(url2)) {
                s93 s93Var = this.u;
                if (s93Var != null && !s93Var.f()) {
                    BuildersKt__Builders_commonKt.launch$default(this.c, null, null, new e41(this, request, null), 3, null);
                    return true;
                }
                if (!this.t.getAndSet(true)) {
                    xs3.a(this.c, new f41(this, request, null));
                }
                return super.shouldOverrideUrlLoading(view, request);
            }
        }
        if (!this.b.willNotDraw()) {
            Uri url3 = request.getUrl();
            Intrinsics.checkNotNullExpressionValue(url3, "getUrl(...)");
            a(url3);
            return true;
        }
        Splitter splitter = f01.a;
        f01.b("Non-creative WebView unable to handle URL: " + request.getUrl(), null);
        return true;
    }

    public final void d() {
        tn3 tn3Var = this.m;
        KProperty[] kPropertyArr = w;
        s01 s01Var = (s01) tn3Var.getValue(this, kPropertyArr[1]);
        if (s01Var != null) {
            CompletableDeferred completableDeferred = (CompletableDeferred) this.i.getValue(this, kPropertyArr[0]);
            if (completableDeferred != null) {
                completableDeferred.complete(s01Var);
            }
            this.i.setValue(this, kPropertyArr[0], null);
            return;
        }
        if (this.b.k.get()) {
            u01 u01Var = u01.c;
            CompletableDeferred completableDeferred2 = (CompletableDeferred) this.i.getValue(this, kPropertyArr[0]);
            if (completableDeferred2 != null) {
                completableDeferred2.complete(u01Var);
            }
            this.i.setValue(this, kPropertyArr[0], null);
            return;
        }
        if (this.k.get()) {
            u01 u01Var2 = u01.c;
            CompletableDeferred completableDeferred3 = (CompletableDeferred) this.i.getValue(this, kPropertyArr[0]);
            if (completableDeferred3 != null) {
                completableDeferred3.complete(u01Var2);
            }
            this.i.setValue(this, kPropertyArr[0], null);
            return;
        }
        if (!this.j.get() || this.l.get() > 0) {
            return;
        }
        q01 q01Var = new q01(Unit.INSTANCE);
        CompletableDeferred completableDeferred4 = (CompletableDeferred) this.i.getValue(this, kPropertyArr[0]);
        if (completableDeferred4 != null) {
            completableDeferred4.complete(q01Var);
        }
        this.i.setValue(this, kPropertyArr[0], null);
    }

    public final ex0 b() {
        return this.f;
    }

    public final vk0 a() {
        return this.g;
    }

    public final void a(Uri url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(this.e.a(url, this.b));
        s93 s93Var = this.u;
        if (s93Var != null && !s93Var.f()) {
            BuildersKt__Builders_commonKt.launch$default(this.c, null, null, new t31(this, url, null), 3, null);
            return;
        }
        if (this.d.a(intent)) {
            if (!this.t.getAndSet(true)) {
                CoroutineScope coroutineScope = this.c;
                u31 block = new u31(this, url, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            }
            if (((Boolean) this.o.getValue(this, w[3])).booleanValue()) {
                CoroutineScope coroutineScope2 = this.c;
                v31 block2 = new v31(this, null);
                EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
                Intrinsics.checkNotNullParameter(context2, "context");
                Intrinsics.checkNotNullParameter(block2, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
            }
        }
    }

    public final p24 c() {
        return this.r;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        this.m.setValue(this, w[1], new s01(i, str, str2));
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url = webResourceRequest != null ? webResourceRequest.getUrl() : null;
        if (url == null) {
            return null;
        }
        if (!Intrinsics.areEqual(url.toString(), "https://googlemobileads.com/warmup")) {
            BuildersKt__Builders_commonKt.launch$default(this.c, null, null, new a41(url, webResourceRequest, this, null), 3, null);
            oy1 oy1Var = this.q;
            WebResourceResponse webResourceResponse = oy1Var != null ? (WebResourceResponse) BuildersKt__BuildersKt.runBlocking$default(null, new d41(oy1Var, this, webResourceRequest, null), 1, null) : null;
            if (webResourceResponse != null) {
                return webResourceResponse;
            }
            ex0 ex0Var = this.f;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads_analytics_events_via_webview_requests", C3522b4.i.W);
            return ((Boolean) ex0Var.a("gads_analytics_events_via_webview_requests", Boolean.FALSE, yr.b)).booleanValue() ? (WebResourceResponse) BuildersKt__BuildersKt.runBlocking$default(null, new b41(url, webResourceRequest, this, null), 1, null) : (WebResourceResponse) BuildersKt__BuildersKt.runBlocking$default(null, new c41(url, webResourceRequest, this, null), 1, null);
        }
        List listEmptyList = (List) this.b.A.poll();
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        v.getClass();
        return s31.a(listEmptyList);
    }
}
