package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1486Bg extends AbstractRunnableC3004oq {
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ C1484Be A02;

    public C1486Bg(C1484Be c1484Be, int i, int i2) {
        this.A02 = c1484Be;
        this.A00 = i;
        this.A01 = i2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        this.A02.A0C.A02(new BA(this.A00, this.A01));
    }
}
