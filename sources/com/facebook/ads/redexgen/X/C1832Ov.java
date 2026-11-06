package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ov, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1832Ov implements InterfaceC2180bK {
    public long A00 = -1;
    public long A01 = -1;
    public Z4 A02;
    public Z5 A03;

    public C1832Ov(Z5 z5, Z4 z4) {
        this.A03 = z5;
        this.A02 = z4;
    }

    public final void A00(long j) {
        this.A00 = j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2180bK
    public final ZK A68() {
        AbstractC1747Ln.A08(this.A00 != -1);
        return new Q6(this.A03, this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2180bK
    public final long AIa(Q9 q9) {
        if (this.A01 < 0) {
            return -1L;
        }
        long result = -(this.A01 + 2);
        this.A01 = -1L;
        return result;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2180bK
    public final void ALV(long j) {
        long[] jArr = this.A02.A01;
        this.A01 = jArr[N1.A0L(jArr, j, true, true)];
    }
}
