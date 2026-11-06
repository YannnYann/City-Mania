package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Pj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1841Pj {
    public final long A00;
    public final long A01;
    public static String[] A02 = {"SLZ5bt2", "TxmLMeH058DekG56M7wy4nR5KMq5pMPh", "eBbdgg1", "qYRnZmHlNNOmdhzPczecuBQTrVXdvPhL", "XHrw677fMneecKWCQwAKaoAXefA0whbX", "TfeBQ6bu34UKNE7Gc9tjiUBuIN8abPgz", "lPJVSIPfqeQvwQkHJHYX1ciyqzvm8k2w", "F39FrC2LczUQ7fzRYqAV4ggGr8hXBi6w"};
    public static final C1841Pj A05 = new C1841Pj(0, 0);
    public static final C1841Pj A03 = new C1841Pj(Long.MAX_VALUE, Long.MAX_VALUE);
    public static final C1841Pj A07 = new C1841Pj(Long.MAX_VALUE, 0);
    public static final C1841Pj A06 = new C1841Pj(0, Long.MAX_VALUE);
    public static final C1841Pj A04 = A05;

    public C1841Pj(long j, long j2) {
        AbstractC1747Ln.A07(j >= 0);
        AbstractC1747Ln.A07(j2 >= 0);
        this.A01 = j;
        this.A00 = j2;
    }

    public final long A00(long minPositionUs, long j, long j2) {
        if (this.A01 == 0 && this.A00 == 0) {
            return minPositionUs;
        }
        long jA0V = N1.A0V(minPositionUs, this.A01, Long.MIN_VALUE);
        long jA0S = N1.A0S(minPositionUs, this.A00, Long.MAX_VALUE);
        boolean z = true;
        boolean z2 = jA0V <= j && j <= jA0S;
        if (jA0V > j2 || j2 > jA0S) {
            z = false;
        }
        if (z2 && z) {
            long jAbs = Math.abs(j - minPositionUs);
            long maxPositionUs = Math.abs(j2 - minPositionUs);
            if (jAbs <= maxPositionUs) {
                return j;
            }
            return j2;
        }
        if (z2) {
            return j;
        }
        if (z) {
            return j2;
        }
        return jA0V;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (A02[4].charAt(13) == 'J') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[5] = "nyvPka8FxV5magz4P2aOgFXOCbZI4PbG";
        strArr[3] = "SXRLMRY4P0Iz3ySZjOtsK8erpvbOKPV5";
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1841Pj c1841Pj = (C1841Pj) obj;
        return this.A01 == c1841Pj.A01 && this.A00 == c1841Pj.A00;
    }

    public final int hashCode() {
        return (((int) this.A01) * 31) + ((int) this.A00);
    }
}
