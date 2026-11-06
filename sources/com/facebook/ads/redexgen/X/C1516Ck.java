package com.facebook.ads.redexgen.X;

import com.unity3d.ads.core.domain.WebViewScreenCapture;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ck, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1516Ck implements InterfaceC3081q8 {
    public final /* synthetic */ C13565p A00;

    public C1516Ck(C13565p c13565p) {
        this.A00 = c13565p;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3081q8
    public final void AGA(String str) {
        this.A00.A0K.postDelayed(new RunnableC3182rl(this), WebViewScreenCapture.CACHE_TTL_MS);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3081q8
    public final void AGB(String str) {
        this.A00.A0J(EnumC2916nN.A0c);
    }
}
