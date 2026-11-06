package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ou, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1831Ou extends AbstractC2183bN {
    public static String[] A02 = {"TnwZAmxDKpyiewBHq1zALDGPAC", "qh", "aThQ", "z0ej3MYGCGwekuoCvJxS7B9Et33A8ru0", "QOafhvN4Pp3vgl3mCXMQpfXUIS1cyRXp", "w4mPGiXHbzN1hKRmoyPK0EUKM", "y05ALp6FvEZ4aBhjZJ5maRhlyCG1wwv5", "XQXtqklqAEfO74j7cCui9ELoqD"};
    public Z5 A00;
    public C1832Ov A01;

    private int A00(C1769Mk c1769Mk) {
        int i = (c1769Mk.A0l()[2] & 255) >> 4;
        if (i == 6 || i == 7) {
            c1769Mk.A0g(4);
            c1769Mk.A0S();
        }
        int result = Z1.A00(c1769Mk, i);
        c1769Mk.A0f(0);
        return result;
    }

    public static boolean A01(C1769Mk c1769Mk) {
        return c1769Mk.A07() >= 5 && c1769Mk.A0I() == 127 && c1769Mk.A0Q() == 1179402563;
    }

    public static boolean A02(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2183bN
    public final long A0E(C1769Mk c1769Mk) {
        if (!A02(c1769Mk.A0l())) {
            return -1L;
        }
        int iA00 = A00(c1769Mk);
        if (A02[2].length() != 4) {
            throw new RuntimeException();
        }
        A02[5] = "pKTAGQ1wxe";
        return iA00;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2183bN
    public final void A0I(boolean z) {
        super.A0I(z);
        if (z) {
            this.A00 = null;
            this.A01 = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006d, code lost:
    
        if (r3 != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0071, code lost:
    
        if (r7.A01 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0073, code lost:
    
        r7.A01.A00(r9);
        r11.A01 = r7.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007c, code lost:
    
        com.facebook.ads.redexgen.X.AbstractC1747Ln.A01(r11.A00);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0081, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008e, code lost:
    
        if (r3 != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0091, code lost:
    
        return true;
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC2183bN
    @org.checkerframework.checker.nullness.qual.EnsuresNonNullIf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A0J(com.facebook.ads.redexgen.X.C1769Mk r8, long r9, com.facebook.ads.redexgen.X.C2182bM r11) {
        /*
            r7 = this;
            byte[] r4 = r8.A0l()
            com.facebook.ads.redexgen.X.Z5 r3 = r7.A00
            r6 = 1
            if (r3 != 0) goto L24
            r0 = 17
            com.facebook.ads.redexgen.X.Z5 r2 = new com.facebook.ads.redexgen.X.Z5
            r2.<init>(r4, r0)
            r7.A00 = r2
            r1 = 9
            int r0 = r8.A0A()
            byte[] r1 = java.util.Arrays.copyOfRange(r4, r1, r0)
            r0 = 0
            com.facebook.ads.redexgen.X.VC r0 = r2.A08(r1, r0)
            r11.A00 = r0
            return r6
        L24:
            r5 = 0
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1831Ou.A02
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 4
            if (r1 == r0) goto L37
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L37:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1831Ou.A02
            java.lang.String r1 = "cbra"
            r0 = 2
            r2[r0] = r1
            r0 = r4[r5]
            r1 = r0 & 127(0x7f, float:1.78E-43)
            r0 = 3
            if (r1 != r0) goto L57
            com.facebook.ads.redexgen.X.Z4 r2 = com.facebook.ads.redexgen.X.Z3.A03(r8)
            com.facebook.ads.redexgen.X.Z5 r1 = r3.A09(r2)
            r7.A00 = r1
            com.facebook.ads.redexgen.X.Ov r0 = new com.facebook.ads.redexgen.X.Ov
            r0.<init>(r1, r2)
            r7.A01 = r0
            return r6
        L57:
            boolean r3 = A02(r4)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1831Ou.A02
            r0 = 0
            r1 = r2[r0]
            r0 = 7
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L82
            if (r3 == 0) goto L91
        L6f:
            com.facebook.ads.redexgen.X.Ov r0 = r7.A01
            if (r0 == 0) goto L7c
            com.facebook.ads.redexgen.X.Ov r0 = r7.A01
            r0.A00(r9)
            com.facebook.ads.redexgen.X.Ov r0 = r7.A01
            r11.A01 = r0
        L7c:
            com.facebook.ads.redexgen.X.VC r0 = r11.A00
            com.facebook.ads.redexgen.X.AbstractC1747Ln.A01(r0)
            return r5
        L82:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1831Ou.A02
            java.lang.String r1 = "b73cmtYX3wIJs4UOVfH1bb1hIz"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "IA5SzLN2NEFqdpoOdBfp6xAjdj"
            r0 = 7
            r2[r0] = r1
            if (r3 == 0) goto L91
            goto L6f
        L91:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1831Ou.A0J(com.facebook.ads.redexgen.X.Mk, long, com.facebook.ads.redexgen.X.bM):boolean");
    }
}
