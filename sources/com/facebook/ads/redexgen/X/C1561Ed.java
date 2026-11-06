package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ed, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1561Ed implements InterfaceC3054ph {
    public final /* synthetic */ C13746h A00;

    public C1561Ed(C13746h c13746h) {
        this.A00 = c13746h;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AET() {
        this.A00.A04 = false;
        if (this.A00.A09 != null) {
            this.A00.A09.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AGb(float f) {
        if (this.A00.A09 != null) {
            this.A00.A09.setProgressImmediate(100.0f * (1.0f - (f / this.A00.getAdInfo().A0L().A00())));
        }
    }
}
