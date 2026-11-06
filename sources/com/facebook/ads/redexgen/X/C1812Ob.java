package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ob, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1812Ob {
    public int A00;
    public int A01;
    public PO A02;
    public boolean A03;

    public C1812Ob() {
    }

    public final void A03(int i) {
        this.A01 += i;
    }

    public final void A04(int i) {
        if (this.A03 && this.A00 != 4) {
            AbstractC1747Ln.A07(i == 4);
        } else {
            this.A03 = true;
            this.A00 = i;
        }
    }

    public final void A05(PO po) {
        this.A02 = po;
        this.A01 = 0;
        this.A03 = false;
    }

    public final boolean A06(PO po) {
        return po != this.A02 || this.A01 > 0 || this.A03;
    }
}
