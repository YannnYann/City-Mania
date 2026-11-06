package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1780Mv implements NK {
    public InterfaceC2356eB A02;
    public long A01 = 5242880;
    public int A00 = 20480;

    public final C1780Mv A00(InterfaceC2356eB interfaceC2356eB) {
        this.A02 = interfaceC2356eB;
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.NK
    public final C1779Mu A5q() {
        return new C1779Mu((InterfaceC2356eB) AbstractC1747Ln.A01(this.A02), this.A01, this.A00);
    }
}
