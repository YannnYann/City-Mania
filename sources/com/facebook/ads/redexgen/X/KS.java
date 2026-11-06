package com.facebook.ads.redexgen.X;

import android.webkit.WebView;
import com.facebook.ads.AdError;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class KS implements InterfaceC2763kr {
    public final C2443fb A00;
    public final InterfaceC2462fu A01;
    public final C2771kz A02;
    public final C1643Hi A03;
    public final boolean A04;

    public KS(C1643Hi c1643Hi, InterfaceC2462fu interfaceC2462fu, C2771kz c2771kz, C2443fb c2443fb, boolean z) {
        this.A03 = c1643Hi;
        this.A01 = interfaceC2462fu;
        this.A02 = c2771kz;
        this.A00 = c2443fb;
        this.A04 = z;
    }

    private final void A00() {
        WebView webView = new WebView(this.A03);
        webView.getSettings().setCacheMode(1);
        C2463fv playableWebViewClient = new C2463fv(this.A00, this.A01, this.A04);
        webView.setWebViewClient(playableWebViewClient);
        webView.loadUrl(this.A00.A0M());
        playableWebViewClient.A03();
    }

    private void A01(boolean z) {
        if (this.A00.A0G() == EnumC2444fc.A05) {
            A00();
            return;
        }
        String strA0M = this.A00.A0M();
        if (z) {
            C2771kz c2771kz = this.A02;
            String markupUrlResult = this.A00.A0M();
            strA0M = c2771kz.A0S(markupUrlResult);
        }
        this.A00.A0U(strA0M);
        this.A01.AGL();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2763kr
    public final void AEJ() {
        if (this.A04) {
            this.A01.AGK(AdError.CACHE_ERROR);
        } else {
            A01(false);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2763kr
    public final void AEU() {
        A01(true);
    }
}
