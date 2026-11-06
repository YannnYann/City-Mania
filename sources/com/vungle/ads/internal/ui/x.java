package com.vungle.ads.internal.ui;

import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ironsource.C3522b4;
import com.ironsource.R6;
import com.unity3d.services.core.network.model.HttpRequest;
import com.vungle.ads.BuildConfig;
import com.vungle.ads.OutOfMemory;
import com.vungle.ads.VungleError;
import com.vungle.ads.WebViewRenderingProcessGone;
import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.model.i0;
import com.vungle.ads.internal.model.j3;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.z;
import java.util.concurrent.ExecutorService;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.json.JsonElementBuildersKt;
import kotlinx.serialization.json.JsonObjectBuilder;

/* JADX INFO: loaded from: classes4.dex */
public final class x extends WebViewClient implements com.vungle.ads.internal.util.w {
    public final i0 a;
    public final j3 b;
    public final ExecutorService c;
    public final com.vungle.ads.internal.platform.f d;
    public final com.vungle.ads.internal.load.f e;
    public final Long f;
    public final Lazy g;
    public boolean h;
    public String i;
    public String j;
    public String k;
    public String l;
    public WebView m;
    public boolean n;
    public com.vungle.ads.internal.ui.view.n o;
    public com.vungle.ads.internal.ui.view.o p;
    public com.vungle.ads.internal.omsdk.f q;
    public Boolean r;

    public /* synthetic */ x(i0 i0Var, j3 j3Var, ExecutorService executorService, com.vungle.ads.internal.platform.f fVar) {
        this(i0Var, j3Var, executorService, fVar, null, null);
    }

    public static final void b(x this$0, WebView webView) throws Throwable {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.vungle.ads.internal.load.f fVar = this$0.e;
        if (fVar != null) {
            fVar.b();
        }
        this$0.a(webView, "window.vungle.mraidBridge.notifyCommandComplete()");
    }

    public static final void c(x this$0, WebView webView) throws Throwable {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.vungle.ads.internal.load.f fVar = this$0.e;
        if (fVar != null) {
            fVar.a();
        }
        this$0.a(webView, "window.vungle.mraidBridge.notifyCommandComplete()");
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        boolean z = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.a("VungleWebClient", s.a);
        if (webView == null) {
            return;
        }
        this.m = webView;
        webView.setVisibility(0);
        a();
        if (Build.VERSION.SDK_INT >= 29) {
            webView.setWebViewRenderProcessClient(new o(this.p));
        }
        com.vungle.ads.internal.omsdk.f fVar = this.q;
        if (fVar != null) {
            ((com.vungle.ads.internal.omsdk.e) fVar).a(webView);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String description, String failingUrl) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        super.onReceivedError(webView, i, description, failingUrl);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        String strValueOf = String.valueOf(webResourceResponse != null ? Integer.valueOf(webResourceResponse.getStatusCode()) : null);
        String strValueOf2 = String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null);
        boolean z = false;
        boolean z2 = webResourceRequest != null && webResourceRequest.isForMainFrame();
        boolean z3 = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.b("VungleWebClient", "Http Error desc " + strValueOf + ' ' + z2 + " for URL " + strValueOf2);
        if ((strValueOf2.length() > 0 ? this.a.a(strValueOf2) : false) && z2) {
            z = true;
        }
        String str = strValueOf2 + ' ' + strValueOf;
        com.vungle.ads.internal.ui.view.o oVar = this.p;
        if (oVar != null) {
            ((com.vungle.ads.internal.presenter.r) oVar).a(z, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        this.m = null;
        if (Build.VERSION.SDK_INT < 26) {
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("VungleWebClient", new t(webView));
            com.vungle.ads.internal.ui.view.o oVar = this.p;
            if (oVar != null) {
                ((com.vungle.ads.internal.presenter.r) oVar).a((VungleError) new WebViewRenderingProcessGone("didCrash=true"), true, (String) null);
            }
            return true;
        }
        boolean z2 = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.a("VungleWebClient", new u(webView, renderProcessGoneDetail));
        com.vungle.ads.internal.ui.view.o oVar2 = this.p;
        if (oVar2 != null) {
            Boolean boolValueOf = renderProcessGoneDetail != null ? Boolean.valueOf(renderProcessGoneDetail.didCrash()) : null;
            com.vungle.ads.internal.presenter.r rVar = (com.vungle.ads.internal.presenter.r) oVar2;
            boolean zBooleanValue = boolValueOf != null ? boolValueOf.booleanValue() : true;
            rVar.a(new WebViewRenderingProcessGone("didCrash=" + zBooleanValue), zBooleanValue, (String) null);
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return a(webView, str, true);
    }

    public x(i0 advertisement, j3 placement, ExecutorService offloadExecutor, com.vungle.ads.internal.platform.f fVar, com.vungle.ads.internal.load.f fVar2, Long l) {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(offloadExecutor, "offloadExecutor");
        this.a = advertisement;
        this.b = placement;
        this.c = offloadExecutor;
        this.d = fVar;
        this.e = fVar2;
        this.f = l;
        this.g = LazyKt__LazyJVMKt.lazy(p.a);
    }

    public final void a(int i) {
        ((com.vungle.ads.internal.util.j) this.g.getValue()).a(this.m, i, new q(this));
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url;
        return a(webView, (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) ? null : url.toString(), webResourceRequest != null ? webResourceRequest.isForMainFrame() : true);
    }

    public final void b(boolean z) {
        this.r = Boolean.valueOf(z);
        WebView webView = this.m;
        if (webView != null) {
            JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
            JsonElementBuildersKt.put(jsonObjectBuilder, C3522b4.i.o, Boolean.valueOf(z));
            a(webView, "window.vungle.mraidBridge.notifyPropertiesChange(" + jsonObjectBuilder.build() + ')');
        }
    }

    public final void a(boolean z, String str, String str2, String str3, String str4) {
        this.h = z;
        this.i = str;
        this.j = str2;
        this.k = str3;
        this.l = str4;
    }

    public final void a(com.vungle.ads.internal.ui.view.n nVar) {
        this.o = nVar;
    }

    public final boolean a(WebView webView, String str, boolean z) {
        boolean zA;
        String host;
        try {
            boolean z2 = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("VungleWebClient", "MRAID Command " + str + " mainFrame=" + z);
            if (str != null && str.length() != 0) {
                Uri uri = Uri.parse(str);
                Intrinsics.checkNotNullExpressionValue(uri, "parse(this)");
                String scheme = uri.getScheme();
                if (scheme != null && scheme.length() != 0) {
                    if (!z) {
                        if (Intrinsics.areEqual(scheme, "mraid")) {
                            host = uri.getHost();
                        } else if (!StringsKt__StringsJVMKt.equals(scheme, "http", true) && !StringsKt__StringsJVMKt.equals(scheme, HttpRequest.DEFAULT_SCHEME, true)) {
                            host = "unknownScheme";
                        } else {
                            host = "openNonMraid";
                        }
                        if (host != null) {
                            com.vungle.ads.internal.ui.view.n nVar = this.o;
                            if (nVar != null) {
                                ((com.vungle.ads.internal.presenter.r) nVar).a(host, str);
                            }
                            return true;
                        }
                    }
                    if (Intrinsics.areEqual(scheme, "mraid")) {
                        zA = a(webView, uri);
                    } else {
                        zA = (StringsKt__StringsJVMKt.equals(scheme, "http", true) || StringsKt__StringsJVMKt.equals(scheme, HttpRequest.DEFAULT_SCHEME, true)) ? a(str) : false;
                    }
                    if (zA) {
                        return true;
                    }
                    com.vungle.ads.internal.util.u.a("VungleWebClient", new r(str));
                }
                return false;
            }
            com.vungle.ads.internal.util.u.b("VungleWebClient", "Invalid URL ");
            return false;
        } catch (Throwable th) {
            if (th instanceof OutOfMemoryError) {
                new OutOfMemory(com.iab.omid.library.vungle.d.a("mraid:", str)).logErrorNoReturnValue$vungle_ads_release();
            }
            return false;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        String strValueOf = String.valueOf(webResourceError != null ? webResourceError.getDescription() : null);
        String strValueOf2 = String.valueOf(webResourceRequest != null ? webResourceRequest.getUrl() : null);
        boolean z = false;
        boolean z2 = webResourceRequest != null && webResourceRequest.isForMainFrame();
        boolean z3 = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.b("VungleWebClient", "Error desc " + strValueOf + ' ' + z2 + " for URL " + strValueOf2);
        if ((strValueOf2.length() > 0 ? this.a.a(strValueOf2) : false) && z2) {
            z = true;
        }
        String str = strValueOf2 + ' ' + strValueOf;
        com.vungle.ads.internal.ui.view.o oVar = this.p;
        if (oVar != null) {
            ((com.vungle.ads.internal.presenter.r) oVar).a(z, str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(final android.webkit.WebView r5, android.net.Uri r6) {
        /*
            r4 = this;
            java.lang.String r0 = r6.getHost()
            if (r0 != 0) goto L8
            r5 = 0
            return r5
        L8:
            int r1 = r0.hashCode()
            r2 = -1943542072(0xffffffff8c27e6c8, float:-1.293466E-31)
            r3 = 1
            if (r1 == r2) goto L45
            r2 = 88409791(0x54506bf, float:9.2641345E-36)
            if (r1 == r2) goto L31
            r2 = 119543762(0x72017d2, float:1.2044062E-34)
            if (r1 == r2) goto L1d
            goto L5e
        L1d:
            java.lang.String r1 = "readyToPlay"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L26
            goto L5e
        L26:
            java.util.concurrent.ExecutorService r6 = r4.c
            com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda0 r0 = new com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda0
            r0.<init>()
            r6.execute(r0)
            goto L61
        L31:
            java.lang.String r1 = "failToLoad"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L3a
            goto L5e
        L3a:
            java.util.concurrent.ExecutorService r6 = r4.c
            com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda1 r0 = new com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda1
            r0.<init>()
            r6.execute(r0)
            goto L61
        L45:
            java.lang.String r1 = "propertiesChangeCompleted"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L5e
            boolean r6 = r4.n
            if (r6 != 0) goto L61
            r4.n = r3
            java.util.concurrent.ExecutorService r6 = r4.c
            com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda2 r0 = new com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda2
            r0.<init>()
            r6.execute(r0)
            goto L61
        L5e:
            r4.a(r5, r6, r0)
        L61:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.ui.x.a(android.webkit.WebView, android.net.Uri):boolean");
    }

    public static final void a(x this$0, WebView webView) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(webView, "window.vungle.mraidBridge.notifyReadyEvent(" + this$0.a.g() + ')');
    }

    public final void a(final WebView webView, final Uri uri, final String str) {
        final com.vungle.ads.internal.ui.view.n nVar = this.o;
        if (nVar == null) {
            a(webView, "window.vungle.mraidBridge.notifyCommandComplete()");
        } else {
            this.c.execute(new Runnable() { // from class: com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    x.a(nVar, str, this, webView, uri);
                }
            });
        }
    }

    public final boolean a(final String str) {
        boolean z = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.a("VungleWebClient", "Open URL" + str);
        final com.vungle.ads.internal.ui.view.n nVar = this.o;
        if (nVar == null) {
            return true;
        }
        this.c.execute(new Runnable() { // from class: com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                x.a(nVar, str);
            }
        });
        return true;
    }

    public final void a() {
        final boolean z = true;
        this.c.execute(new Runnable() { // from class: com.vungle.ads.internal.ui.x$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                x.a(z, this);
            }
        });
    }

    public final void a(long j, long j2) {
        WebView webView = this.m;
        if (webView != null) {
            a(webView, "window.vungle.mraidBridgeExt.notifyAvailableDiskSpace(" + j + '+' + j2 + ')');
        }
    }

    public final void a(String errorMessage, int i) {
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        WebView webView = this.m;
        if (webView != null) {
            a(webView, "window.vungle.mraidBridgeExt.notifyBlackScreenResult(" + i + ')');
        }
        boolean z = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.a("VungleWebClient", "Returning black screen result: " + i + '%');
        if (i >= 0) {
            AnalyticsClient.a(AnalyticsClient.INSTANCE, Sdk.SDKMetric.SDKMetricType.BLACK_SCREEN_IS_DETECTED, i, this.a.q(), null, 8);
        } else {
            AnalyticsClient.INSTANCE.c(Sdk.SDKError.Reason.BLACK_SCREEN_DETECTION_ERROR, errorMessage, this.a.q());
        }
    }

    @Override // com.vungle.ads.internal.util.w
    public final void a(boolean z) {
        WebView webView = this.m;
        if (webView != null) {
            JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
            JsonElementBuildersKt.put(jsonObjectBuilder, "isSilent", Boolean.valueOf(z));
            a(webView, "window.vungle.mraidBridge.notifyPropertiesChange(" + jsonObjectBuilder.build() + ')');
        }
    }

    public final void a(com.vungle.ads.internal.ui.view.o errorHandler) {
        Intrinsics.checkNotNullParameter(errorHandler, "errorHandler");
        this.p = errorHandler;
    }

    public final void a(com.vungle.ads.internal.omsdk.e eVar) {
        this.q = eVar;
    }

    public final void a(WebView webView, String str) {
        boolean z = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.a("VungleWebClient", new v(str));
        Handler handler = z.a;
        z.a(new w(this, webView, str));
    }

    public static final void a(com.vungle.ads.internal.ui.view.n mraidDelegateSnapshot, String command, x this$0, WebView webView, Uri uri) {
        Intrinsics.checkNotNullParameter(mraidDelegateSnapshot, "$mraidDelegateSnapshot");
        Intrinsics.checkNotNullParameter(command, "$command");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(uri, "$uri");
        try {
            try {
                JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
                for (String param : uri.getQueryParameterNames()) {
                    Intrinsics.checkNotNullExpressionValue(param, "param");
                    JsonElementBuildersKt.put(jsonObjectBuilder, param, uri.getQueryParameter(param));
                }
                ((com.vungle.ads.internal.presenter.r) mraidDelegateSnapshot).a(command, jsonObjectBuilder.build());
            } catch (Exception e) {
                boolean z = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.a("VungleWebClient", "MRAID command failed", e);
            }
            this$0.a(webView, "window.vungle.mraidBridge.notifyCommandComplete()");
        } catch (Throwable th) {
            this$0.a(webView, "window.vungle.mraidBridge.notifyCommandComplete()");
            throw th;
        }
    }

    public static final void a(com.vungle.ads.internal.ui.view.n mraidDelegateSnapshot, String url) {
        Intrinsics.checkNotNullParameter(mraidDelegateSnapshot, "$mraidDelegateSnapshot");
        Intrinsics.checkNotNullParameter(url, "$url");
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        JsonElementBuildersKt.put(jsonObjectBuilder, "url", url);
        ((com.vungle.ads.internal.presenter.r) mraidDelegateSnapshot).a("openNonMraid", jsonObjectBuilder.build());
    }

    public static final void a(boolean z, x this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        JsonObjectBuilder jsonObjectBuilder = new JsonObjectBuilder();
        JsonElementBuildersKt.put(jsonObjectBuilder, "placementType", this$0.a.D());
        Boolean bool = this$0.r;
        if (bool != null) {
            JsonElementBuildersKt.put(jsonObjectBuilder, C3522b4.i.o, bool);
        }
        JsonElementBuildersKt.put(jsonObjectBuilder, R6.F, "android");
        JsonElementBuildersKt.put(jsonObjectBuilder, "osVersion", String.valueOf(Build.VERSION.SDK_INT));
        JsonElementBuildersKt.put(jsonObjectBuilder, "incentivized", Boolean.valueOf(this$0.b.j()));
        com.vungle.ads.internal.platform.f fVar = this$0.d;
        if (fVar != null) {
            JsonElementBuildersKt.put(jsonObjectBuilder, "isSilent", Boolean.valueOf(((com.vungle.ads.internal.platform.c) fVar).n()));
        }
        Long l = this$0.f;
        if (l != null) {
            JsonElementBuildersKt.put(jsonObjectBuilder, "timeLoaded", l);
        }
        if (this$0.h) {
            JsonElementBuildersKt.put(jsonObjectBuilder, "consentRequired", Boolean.TRUE);
            JsonElementBuildersKt.put(jsonObjectBuilder, "consentTitleText", this$0.i);
            JsonElementBuildersKt.put(jsonObjectBuilder, "consentBodyText", this$0.j);
            JsonElementBuildersKt.put(jsonObjectBuilder, "consentAcceptButtonText", this$0.k);
            JsonElementBuildersKt.put(jsonObjectBuilder, "consentDenyButtonText", this$0.l);
        } else {
            JsonElementBuildersKt.put(jsonObjectBuilder, "consentRequired", Boolean.FALSE);
        }
        JsonElementBuildersKt.put(jsonObjectBuilder, "sdkVersion", BuildConfig.VERSION_NAME);
        String str = "window.vungle.mraidBridge.notifyPropertiesChange(" + jsonObjectBuilder.build() + ',' + z + ')';
        WebView webView = this$0.m;
        if (webView != null) {
            this$0.a(webView, str);
        }
    }
}
