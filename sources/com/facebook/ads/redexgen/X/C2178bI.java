package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2178bI {
    public static String[] A05 = {"7HPX5QbBl7E5EbUQPcKmEzjWCG4LrmwT", "ygyGCkLJvoZBhmle1B6JVDDau9ImKpku", "DHdl1NsMKs5M8l", "rSeDRL8ka", "MxStOy49MCB4pDgnTOrwxDHe8KkSLg5r", "7C69duVQ4AUme6rB11qfzHoDidqUT7yE", "uwct2hFMWSb4Fkjvm", "vR4EpVshYRBKG4fumVmPB58VuXbddHmx"};
    public int A01;
    public boolean A02;
    public final C2179bJ A04 = new C2179bJ();
    public final C1769Mk A03 = new C1769Mk(new byte[65025], 0);
    public int A00 = -1;

    /* JADX WARN: Incorrect condition in loop: B:4:0x000b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int A00(int r5) {
        /*
            r4 = this;
            r0 = 0
            r4.A01 = r0
            r3 = 0
        L4:
            int r1 = r4.A01
            int r1 = r1 + r5
            com.facebook.ads.redexgen.X.bJ r0 = r4.A04
            int r0 = r0.A02
            if (r1 >= r0) goto L1f
            com.facebook.ads.redexgen.X.bJ r0 = r4.A04
            int[] r2 = r0.A09
            int r1 = r4.A01
            int r0 = r1 + 1
            r4.A01 = r0
            int r1 = r1 + r5
            r1 = r2[r1]
            int r3 = r3 + r1
            r0 = 255(0xff, float:3.57E-43)
            if (r1 == r0) goto L4
        L1f:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2178bI.A00(int):int");
    }

    public final C1769Mk A01() {
        return this.A03;
    }

    public final C2179bJ A02() {
        return this.A04;
    }

    public final void A03() {
        this.A04.A02();
        this.A03.A0d(0);
        this.A00 = -1;
        this.A02 = false;
    }

    public final void A04() {
        if (this.A03.A0l().length == 65025) {
            return;
        }
        this.A03.A0j(Arrays.copyOf(this.A03.A0l(), Math.max(65025, this.A03.A0A())), this.A03.A0A());
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0067, code lost:
    
        return false;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A05(com.facebook.ads.redexgen.X.Q9 r7) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2178bI.A05(com.facebook.ads.redexgen.X.Q9):boolean");
    }
}
