package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Zg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2079Zg {
    public final ZP A00;

    public abstract boolean A0B(C1769Mk c1769Mk) throws L9;

    public abstract boolean A0C(C1769Mk c1769Mk, long j) throws L9;

    public AbstractC2079Zg(ZP zp) {
        this.A00 = zp;
    }

    public final boolean A00(C1769Mk c1769Mk, long j) throws L9 {
        return A0B(c1769Mk) && A0C(c1769Mk, j);
    }
}
