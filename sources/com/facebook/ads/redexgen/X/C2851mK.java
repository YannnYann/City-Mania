package com.facebook.ads.redexgen.X;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2851mK extends WebViewClient {
    public final /* synthetic */ CallableC2852mL A00;

    public C2851mK(CallableC2852mL callableC2852mL) {
        this.A00 = callableC2852mL;
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AbstractC3292tX.A0D(AbstractC2811lf.A2j);
        return true;
    }
}
