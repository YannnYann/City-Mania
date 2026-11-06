package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Oa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1811Oa implements Comparable<C1811Oa> {
    public int A00;
    public long A01;
    public Object A02;
    public final PS A03;

    public C1811Oa(PS ps) {
        this.A03 = ps;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final int compareTo(C1811Oa c1811Oa) {
        if ((this.A02 == null) != (c1811Oa.A02 == null)) {
            return this.A02 != null ? -1 : 1;
        }
        if (this.A02 == null) {
            return 0;
        }
        int i = this.A00 - c1811Oa.A00;
        if (i != 0) {
            return i;
        }
        int comparePeriodIndex = N1.A08(this.A01, c1811Oa.A01);
        return comparePeriodIndex;
    }

    public final void A01(int i, long j, Object obj) {
        this.A00 = i;
        this.A01 = j;
        this.A02 = obj;
    }
}
