package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2009Wj {
    public final int A00;
    public final C1951Tx A01;
    public final Object A02;
    public final C1839Ph[] A03;
    public final RA[] A04;

    public C2009Wj(C1839Ph[] c1839PhArr, RA[] raArr, C1951Tx c1951Tx, Object obj) {
        this.A03 = c1839PhArr;
        this.A04 = (RA[]) raArr.clone();
        this.A01 = c1951Tx;
        this.A02 = obj;
        this.A00 = c1839PhArr.length;
    }

    public final boolean A00(int i) {
        return this.A03[i] != null;
    }

    public final boolean A01(C2009Wj c2009Wj, int i) {
        return c2009Wj != null && N1.A1E(this.A03[i], c2009Wj.A03[i]) && N1.A1E(this.A04[i], c2009Wj.A04[i]);
    }
}
