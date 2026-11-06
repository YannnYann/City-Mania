package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class P0 {
    public static String[] A09 = {"MmCYZgBPri8bmVXa", "J3inhn0J44grqBzsgHfl", "luxmx", "aD89Cmw6ZMy3IRLE5Jpd1StHj7IjoKmQ", "vvXCP", "MmSeJsvfII2Tg6FOzoJQIYN", "VDoaGMZnHNSgWJ9xUvi1", "eI"};
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final C1887Rk A04;
    public final boolean A05;
    public final boolean A06;
    public final boolean A07;
    public final boolean A08;

    @MetaExoPlayerCustomization
    public P0(C1887Rk c1887Rk, long j, long j2, long j3, long j4, boolean z, boolean z2) {
        this.A04 = c1887Rk;
        this.A03 = j;
        this.A01 = j2;
        this.A02 = j3;
        this.A00 = j4;
        this.A07 = z;
        this.A05 = z2;
        this.A06 = false;
        this.A08 = false;
    }

    @MetaExoPlayerCustomization
    public P0(C1887Rk c1887Rk, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.A04 = c1887Rk;
        this.A03 = j;
        this.A02 = j2;
        this.A01 = j3;
        this.A00 = j4;
        this.A06 = z;
        this.A07 = z2;
        this.A08 = z3;
        this.A05 = z4;
    }

    public final P0 A00(long j) {
        if (j == this.A03) {
            return this;
        }
        return new P0(this.A04, j, this.A02, this.A01, this.A00, this.A06, this.A07, this.A08, this.A05);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r5 = 1
            if (r6 != r7) goto L4
            return r5
        L4:
            r3 = 0
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.P0.A09
            r0 = 5
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 1
            if (r1 == r0) goto L98
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P0.A09
            java.lang.String r1 = "QgrbeDZix4AeaffD"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "DNzUJYhBqjbejkLXkccI"
            r0 = 1
            r2[r0] = r1
            if (r7 == 0) goto L29
            java.lang.Class r1 = r6.getClass()
            java.lang.Class r0 = r7.getClass()
            if (r1 == r0) goto L2a
        L29:
            return r3
        L2a:
            com.facebook.ads.redexgen.X.P0 r7 = (com.facebook.ads.redexgen.X.P0) r7
            long r3 = r6.A03
            long r1 = r7.A03
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 != 0) goto L96
            long r3 = r6.A02
            long r1 = r7.A02
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 != 0) goto L96
            long r3 = r6.A01
            long r1 = r7.A01
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 != 0) goto L96
            long r3 = r6.A00
            long r1 = r7.A00
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 != 0) goto L96
            boolean r1 = r6.A06
            boolean r0 = r7.A06
            if (r1 != r0) goto L96
            boolean r1 = r6.A07
            boolean r0 = r7.A07
            if (r1 != r0) goto L96
            boolean r4 = r6.A08
            boolean r3 = r7.A08
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.P0.A09
            r0 = 5
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 1
            if (r1 == r0) goto L87
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P0.A09
            java.lang.String r1 = "PW4PujGLkAdsS5e1"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "uJZYz5auQLLxJuAPKnp5"
            r0 = 1
            r2[r0] = r1
            if (r4 != r3) goto L96
        L76:
            boolean r1 = r6.A05
            boolean r0 = r7.A05
            if (r1 != r0) goto L96
            com.facebook.ads.redexgen.X.Rk r1 = r6.A04
            com.facebook.ads.redexgen.X.Rk r0 = r7.A04
            boolean r0 = com.facebook.ads.redexgen.X.N1.A1E(r1, r0)
            if (r0 == 0) goto L96
        L86:
            return r5
        L87:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P0.A09
            java.lang.String r1 = "N0101jdjAMvBEvtR"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "dSSvaMoaZvMqSLv8mM1N"
            r0 = 1
            r2[r0] = r1
            if (r4 != r3) goto L96
            goto L76
        L96:
            r5 = 0
            goto L86
        L98:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P0.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return (((((((((((((((((17 * 31) + this.A04.hashCode()) * 31) + ((int) this.A03)) * 31) + ((int) this.A02)) * 31) + ((int) this.A01)) * 31) + ((int) this.A00)) * 31) + (this.A06 ? 1 : 0)) * 31) + (this.A07 ? 1 : 0)) * 31) + (this.A08 ? 1 : 0)) * 31) + (this.A05 ? 1 : 0);
    }
}
