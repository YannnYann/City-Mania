package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Eb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1559Eb implements InterfaceC3054ph {
    public final /* synthetic */ C13726f A00;

    public C1559Eb(C13726f c13726f) {
        this.A00 = c13726f;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AET() {
        this.A00.A0D = false;
        if (this.A00.A05 != null) {
            this.A00.A05.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3054ph
    public final void AGb(float f) {
        if (this.A00.A05 != null) {
            this.A00.A05.setProgressImmediate(100.0f * (1.0f - (f / this.A00.getAdInfo().A0L().A00())));
        }
    }
}
