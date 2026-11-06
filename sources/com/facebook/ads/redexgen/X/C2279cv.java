package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2279cv {
    public static byte[] A02;
    public final List<VC> A00;
    public final ZP[] A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 74);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-2, 35, 43, 22, 33, 30, 25, -43, 24, 33, 36, 40, 26, 25, -43, 24, 22, 37, 41, 30, 36, 35, -43, 34, 30, 34, 26, -43, 41, 46, 37, 26, -43, 37, 39, 36, 43, 30, 25, 26, 25, -17, -43, -68, -53, -53, -57, -60, -66, -68, -49, -60, -54, -55, -118, -66, -64, -68, -120, -111, -117, -109, -50, -35, -35, -39, -42, -48, -50, -31, -42, -36, -37, -100, -48, -46, -50, -102, -92, -99, -91};
    }

    public C2279cv(List<VC> list) {
        this.A00 = list;
        this.A01 = new ZP[list.size()];
    }

    public final void A02(long j, C1769Mk c1769Mk) {
        AbstractC2062Yp.A03(j, c1769Mk, this.A01);
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0004 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A03(com.facebook.ads.redexgen.X.InterfaceC2069Yw r10, com.facebook.ads.redexgen.X.C2286d2 r11) {
        /*
            r9 = this;
            r3 = 0
        L1:
            com.facebook.ads.redexgen.X.ZP[] r0 = r9.A01
            int r0 = r0.length
            if (r3 >= r0) goto L9b
            r11.A05()
            int r1 = r11.A03()
            r0 = 3
            com.facebook.ads.redexgen.X.ZP r2 = r10.ALm(r1, r0)
            java.util.List<com.facebook.ads.redexgen.X.VC> r0 = r9.A00
            java.lang.Object r4 = r0.get(r3)
            com.facebook.ads.redexgen.X.VC r4 = (com.facebook.ads.redexgen.X.VC) r4
            java.lang.String r5 = r4.A0W
            r6 = 43
            r1 = 19
            r0 = 17
            java.lang.String r0 = A00(r6, r1, r0)
            boolean r0 = r0.equals(r5)
            if (r0 != 0) goto L3c
            r6 = 62
            r1 = 19
            r0 = 35
            java.lang.String r0 = A00(r6, r1, r0)
            boolean r0 = r0.equals(r5)
            if (r0 == 0) goto L99
        L3c:
            r8 = 1
        L3d:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r6 = 0
            r1 = 43
            r0 = 107(0x6b, float:1.5E-43)
            java.lang.String r0 = A00(r6, r1, r0)
            java.lang.StringBuilder r0 = r7.append(r0)
            java.lang.StringBuilder r0 = r0.append(r5)
            java.lang.String r0 = r0.toString()
            com.facebook.ads.redexgen.X.AbstractC1747Ln.A09(r8, r0)
            java.lang.String r0 = r4.A0T
            if (r0 == 0) goto L94
            java.lang.String r1 = r4.A0T
        L60:
            com.facebook.ads.redexgen.X.Ke r0 = new com.facebook.ads.redexgen.X.Ke
            r0.<init>()
            com.facebook.ads.redexgen.X.Ke r0 = r0.A0y(r1)
            com.facebook.ads.redexgen.X.Ke r1 = r0.A11(r5)
            int r0 = r4.A0H
            com.facebook.ads.redexgen.X.Ke r1 = r1.A0n(r0)
            java.lang.String r0 = r4.A0V
            com.facebook.ads.redexgen.X.Ke r1 = r1.A10(r0)
            int r0 = r4.A03
            com.facebook.ads.redexgen.X.Ke r1 = r1.A0Z(r0)
            java.util.List<byte[]> r0 = r4.A0X
            com.facebook.ads.redexgen.X.Ke r0 = r1.A12(r0)
            com.facebook.ads.redexgen.X.VC r0 = r0.A14()
            r2.A7E(r0)
            com.facebook.ads.redexgen.X.ZP[] r0 = r9.A01
            r0[r3] = r2
            int r3 = r3 + 1
            goto L1
        L94:
            java.lang.String r1 = r11.A04()
            goto L60
        L99:
            r8 = 0
            goto L3d
        L9b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2279cv.A03(com.facebook.ads.redexgen.X.Yw, com.facebook.ads.redexgen.X.d2):void");
    }
}
