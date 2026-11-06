package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2062Yp {
    public static byte[] A00;
    public static String[] A01 = {"JKm0JUAjQEUHOkcp6hO5rnWr8MwHHkDW", "TUTC0kMJz1fV", "ctliOTGP2wkkCylecXDLY", "7yUThtqIf", "AJVWBaJPAROkxsDLWVyTf9VXCdLa0S3R", "l9NKwaE5DphjYVOjujGINoU8XccIVo6S", "LcQIihvayP3Cbpd3FHlBSzSyBU3Sxvoc", "huNpIJsJ2h6PoPtozajWK"};

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 83);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{7, 33, 37, 17, 48, 45, 40, 20, 44, 46, 55, 55, 46, 41, 32, 103, 53, 34, 42, 38, 46, 41, 35, 34, 53, 103, 40, 33, 103, 42, 38, 43, 33, 40, 53, 42, 34, 35, 103, 20, 2, 14, 103, 9, 6, 11, 103, 50, 41, 46, 51, 105};
    }

    static {
        A02();
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A00(com.facebook.ads.redexgen.X.C1769Mk r3) {
        /*
            r2 = 0
        L1:
            int r0 = r3.A07()
            if (r0 != 0) goto L9
            r0 = -1
            return r0
        L9:
            int r1 = r3.A0I()
            int r2 = r2 + r1
            r0 = 255(0xff, float:3.57E-43)
            if (r1 == r0) goto L1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2062Yp.A00(com.facebook.ads.redexgen.X.Mk):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A03(long r9, com.facebook.ads.redexgen.X.C1769Mk r11, com.facebook.ads.redexgen.X.ZP[] r12) {
        /*
        L0:
            int r4 = r11.A07()
            r3 = 1
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC2062Yp.A01
            r0 = 0
            r1 = r2[r0]
            r0 = 6
            r2 = r2[r0]
            r0 = 12
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L9b
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC2062Yp.A01
            java.lang.String r1 = "QuwVt3McBrRQsTYg5HbYJlPhURdGltNk"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "E2RIVQJLzAlCF03p6JKrmJJT1m8evFc3"
            r0 = 6
            r2[r0] = r1
            if (r4 <= r3) goto L9a
            int r2 = A00(r11)
            int r1 = A00(r11)
            int r8 = r11.A09()
            int r8 = r8 + r1
            r0 = -1
            if (r1 == r0) goto L3d
            int r0 = r11.A07()
            if (r1 <= r0) goto L59
        L3d:
            r2 = 0
            r1 = 7
            r0 = 23
            java.lang.String r3 = A01(r2, r1, r0)
            r2 = 7
            r1 = 45
            r0 = 20
            java.lang.String r0 = A01(r2, r1, r0)
            com.facebook.ads.redexgen.X.MV.A07(r3, r0)
            int r8 = r11.A0A()
        L55:
            r11.A0f(r8)
            goto L0
        L59:
            r0 = 4
            if (r2 != r0) goto L55
            r0 = 8
            if (r1 < r0) goto L55
            int r7 = r11.A0I()
            int r6 = r11.A0M()
            r5 = 0
            r4 = 49
            if (r6 != r4) goto L71
            int r5 = r11.A0C()
        L71:
            int r2 = r11.A0I()
            r1 = 47
            if (r6 != r1) goto L7c
            r11.A0g(r3)
        L7c:
            r0 = 181(0xb5, float:2.54E-43)
            if (r7 != r0) goto L98
            if (r6 == r4) goto L84
            if (r6 != r1) goto L98
        L84:
            r0 = 3
            if (r2 != r0) goto L98
            r1 = 1
        L88:
            if (r6 != r4) goto L90
            r0 = 1195456820(0x47413934, float:49465.203)
            if (r5 != r0) goto L96
        L8f:
            r1 = r1 & r3
        L90:
            if (r1 == 0) goto L55
            A04(r9, r11, r12)
            goto L55
        L96:
            r3 = 0
            goto L8f
        L98:
            r1 = 0
            goto L88
        L9a:
            return
        L9b:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2062Yp.A03(long, com.facebook.ads.redexgen.X.Mk, com.facebook.ads.redexgen.X.ZP[]):void");
    }

    public static void A04(long j, C1769Mk c1769Mk, ZP[] zpArr) {
        int firstByte = c1769Mk.A0I();
        if (!((firstByte & 64) != 0)) {
            return;
        }
        c1769Mk.A0g(1);
        int i = (firstByte & 31) * 3;
        int iA09 = c1769Mk.A09();
        for (ZP zp : zpArr) {
            c1769Mk.A0f(iA09);
            zp.AK9(c1769Mk, i);
            if (j != -9223372036854775807L) {
                String[] strArr = A01;
                if (strArr[0].charAt(12) == strArr[6].charAt(12)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[0] = "lwAucefG6GoIk2MFZH0nph40fdR061wg";
                strArr2[6] = "Yi999lFOlA7299JVgsHEsxtW0HZbsSnk";
                zp.AKC(j, 1, i, 0, null);
            }
        }
    }
}
