package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DD implements InterfaceC3054ph {
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractRunnableC3004oq A01;
    public final /* synthetic */ D8 A02;
    public final /* synthetic */ C1466Am A03;

    public DD(D8 d8, int i, C1466Am c1466Am, AbstractRunnableC3004oq abstractRunnableC3004oq) {
        this.A02 = d8;
        this.A00 = i;
        this.A03 = c1466Am;
        this.A01 = abstractRunnableC3004oq;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AET() throws Throwable {
        this.A01.run();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AGb(float f) {
        this.A02.A09.setProgress(100.0f * (1.0f - (f / this.A00)));
        if (this.A03 != null) {
            C1466Am c1466Am = this.A03;
            float percentage = this.A00;
            c1466Am.A09((int) ((percentage - f) * 1000.0f));
        }
    }
}
