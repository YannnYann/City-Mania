package com.vungle.ads.internal.ui;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class u extends Lambda implements Function0 {
    public final /* synthetic */ WebView a;
    public final /* synthetic */ RenderProcessGoneDetail b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        super(0);
        this.a = webView;
        this.b = renderProcessGoneDetail;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("onRenderProcessGone url: ");
        WebView webView = this.a;
        sbA.append(webView != null ? webView.getUrl() : null);
        sbA.append(", did crash: ");
        RenderProcessGoneDetail renderProcessGoneDetail = this.b;
        sbA.append(renderProcessGoneDetail != null ? Boolean.valueOf(renderProcessGoneDetail.didCrash()) : null);
        return sbA.toString();
    }
}
