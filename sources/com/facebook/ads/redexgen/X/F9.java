package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class F9 implements InterfaceC3285tQ {
    public final /* synthetic */ F8 A00;

    public F9(F8 f8) {
        this.A00 = f8;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3285tQ
    public final void AE7(boolean z) {
        this.A00.A0D(z);
        if (this.A00.A0A && this.A00.A00 != null) {
            this.A00.A00.setEnabled(z);
            this.A00.A00.setAlpha(z ? 1.0f : 0.3f);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3285tQ
    public final void AF0(boolean z) {
        this.A00.A0D(z);
        if (this.A00.A0A && this.A00.A02 != null) {
            this.A00.A02.setEnabled(z);
            this.A00.A02.setAlpha(z ? 1.0f : 0.3f);
        }
    }
}
