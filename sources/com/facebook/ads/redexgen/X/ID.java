package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ID implements InterfaceC3054ph {
    public final /* synthetic */ int A00;
    public final /* synthetic */ IC A01;

    public ID(IC ic, int i) {
        this.A01 = ic;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AET() {
        this.A01.A0C.A0F().ACO();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AGb(float f) {
        float f2 = 1.0f - (f / this.A00);
        if (this.A01.A0G != null) {
            this.A01.A0G.setProgressWithAnimation(100.0f * f2);
        }
    }
}
