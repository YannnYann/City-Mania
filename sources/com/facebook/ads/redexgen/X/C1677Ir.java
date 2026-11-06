package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ir, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1677Ir extends AbstractC2635im {
    public final /* synthetic */ C7O A00;

    public C1677Ir(C7O c7o) {
        this.A00 = c7o;
    }

    private final void A00() {
        if (C7O.A1D && this.A00.A0E && this.A00.A0F) {
            AbstractC2565hb.A0D(this.A00, this.A00.A0u);
        } else {
            this.A00.A0A = true;
            this.A00.requestLayout();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2635im
    public final void A01() {
        this.A00.A1u(null);
        this.A00.A0s.A0D = true;
        this.A00.A1T();
        if (!this.A00.A00.A0J()) {
            this.A00.requestLayout();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2635im
    public final void A02(int i, int i2, Object obj) {
        this.A00.A1u(null);
        if (this.A00.A00.A0M(i, i2, obj)) {
            A00();
        }
    }
}
