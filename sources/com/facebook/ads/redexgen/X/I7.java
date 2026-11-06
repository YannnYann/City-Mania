package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class I7 extends AbstractRunnableC2991od {
    public final /* synthetic */ I6 A00;

    public I7(I6 i6) {
        this.A00 = i6;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2991od
    public final void A01() {
        if (this.A00.A01.A01.A00() != null) {
            this.A00.A01.A01.A00().onAdsLoaded();
        }
    }
}
