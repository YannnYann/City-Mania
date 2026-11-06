package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class Q4 implements ZK {
    public final long A00;
    public final ZJ A01;

    public Q4(long j) {
        this(j, 0L);
    }

    public Q4(long j, long j2) {
        this.A00 = j;
        this.A01 = new ZJ(j2 == 0 ? ZL.A03 : new ZL(0L, j2));
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final long A8U() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final ZJ A9e(long j) {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final boolean ABR() {
        return false;
    }
}
