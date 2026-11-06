package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class NR implements ZK {
    public final int A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final C2293d9 A04;

    public NR(C2293d9 c2293d9, int i, long j, long j2) {
        this.A04 = c2293d9;
        this.A00 = i;
        this.A03 = j;
        this.A01 = (j2 - j) / ((long) c2293d9.A02);
        this.A02 = A00(this.A01);
    }

    private long A00(long j) {
        return N1.A0U(j * ((long) this.A00), 1000000L, this.A04.A04);
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final long A8U() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final ZJ A9e(long j) {
        long jA0T = N1.A0T((((long) this.A04.A04) * j) / (((long) this.A00) * 1000000), 0L, this.A01 - 1);
        long j2 = this.A03 + (((long) this.A04.A02) * jA0T);
        long jA00 = A00(jA0T);
        ZL zl = new ZL(jA00, j2);
        if (jA00 >= j || jA0T == this.A01 - 1) {
            return new ZJ(zl);
        }
        long j3 = 1 + jA0T;
        return new ZJ(zl, new ZL(A00(j3), this.A03 + (((long) this.A04.A02) * j3)));
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final boolean ABR() {
        return true;
    }
}
