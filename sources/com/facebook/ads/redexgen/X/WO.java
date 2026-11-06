package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class WO implements Comparable<WO> {
    public final boolean A00;
    public final boolean A01;

    public WO(VC vc, int i) {
        this.A00 = (vc.A0H & 1) != 0;
        this.A01 = C14248h.A0S(i, false);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final int compareTo(WO wo) {
        return AbstractC1999Vy.A01().A09(this.A01, wo.A01).A09(this.A00, wo.A00).A05();
    }
}
