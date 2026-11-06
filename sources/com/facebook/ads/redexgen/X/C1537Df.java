package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Df, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1537Df implements InterfaceC3054ph {
    public final /* synthetic */ C6K A00;

    public C1537Df(C6K c6k) {
        this.A00 = c6k;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AET() {
        if (!this.A00.A02.A1d() || (!(this.A00.A02 instanceof EE) && !(this.A00.A02 instanceof C1564Eg))) {
            this.A00.A08.AH3(false);
        } else {
            this.A00.A08.AH3(true);
            this.A00.A07.setToolbarActionMode(1);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AGb(float f) {
    }
}
