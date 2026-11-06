package com.vungle.ads.internal.ui;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class o extends WebViewRenderProcessClient {
    public com.vungle.ads.internal.ui.view.o a;

    public o(com.vungle.ads.internal.ui.view.o oVar) {
        this.a = oVar;
    }

    public final void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        Intrinsics.checkNotNullParameter(webView, "webView");
    }

    public final void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        boolean z = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.a("VungleWebClient", new n(webView, webViewRenderProcess));
        com.vungle.ads.internal.ui.view.o oVar = this.a;
        if (oVar != null) {
            ((com.vungle.ads.internal.presenter.r) oVar).f();
        }
    }
}
