package com.vungle.ads.internal.ui;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class n extends Lambda implements Function0 {
    public final /* synthetic */ WebView a;
    public final /* synthetic */ WebViewRenderProcess b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        super(0);
        this.a = webView;
        this.b = webViewRenderProcess;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("onRenderProcessUnresponsive(Title = ");
        sbA.append(this.a.getTitle());
        sbA.append(", URL = ");
        sbA.append(this.a.getOriginalUrl());
        sbA.append(", (webViewRenderProcess != null) = ");
        sbA.append(this.b != null);
        return sbA.toString();
    }
}
