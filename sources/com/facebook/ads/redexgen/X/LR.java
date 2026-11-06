package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class LR implements InterfaceC2462fu {
    public final /* synthetic */ C14057m A00;

    public LR(C14057m c14057m) {
        this.A00 = c14057m;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2462fu
    public final void AGK(AdError adError) {
        this.A00.A01.AGw(this.A00, adError);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2462fu
    public final void AGL() {
        this.A00.A0C.set(true);
        this.A00.A01.AGt(this.A00);
    }
}
