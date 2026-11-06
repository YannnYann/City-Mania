package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class LT implements InterfaceC2735kO {
    public final /* synthetic */ C14057m A00;

    public LT(C14057m c14057m) {
        this.A00 = c14057m;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2735kO
    public final void ADt() {
        this.A00.A0C.set(true);
        this.A00.A01.AGt(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2735kO
    public final void ADu() {
        this.A00.A01.AGw(this.A00, AdError.CACHE_ERROR);
    }
}
