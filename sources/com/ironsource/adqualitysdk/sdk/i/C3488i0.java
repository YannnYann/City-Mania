package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.i0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3488i0 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C3490j0 f275;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f276;

    public C3488i0(C3490j0 c3490j0, String str) {
        this.f275 = c3490j0;
        this.f276 = str;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        WebView webView = this.f275.f279;
        String str = this.f276;
        String str2 = x0.f395;
        if (webView != null) {
            if (webView.getHandler() == null && webView.getRootView() == null) {
                return;
            }
            StringBuilder sbM1349 = AbstractC0594.m1349("8UlDrBppegvrXA+oH2tkSvpcWq9BKA==\n", "myg1zWkKCGI=\n", new StringBuilder(), str);
            sbM1349.append(StringFog.decrypt("sm6d4w==\n", "kEe02AUZ1p8=\n"));
            webView.loadUrl(sbM1349.toString());
        }
    }
}
