package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.be, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2200be {
    public static byte[] A00;
    public static String[] A01 = {"48XKwvEfJwcBdJlmydZ9q3zfkin", "6Eo7i0CZW1196XN", "aXowqGz1hBflQs7Fuf7fRoRGcNLFrTNx", "gAAFCtpqIzP3FTGJKsRiwumwgWIAbR0S", "PLtPm1eHapmuYi4h4OX7mFr2OXf", "6zIbnojHGkgqELK", "waa5U278dWyFSUddW0JUuxhgYdzAs96v", "yzz8W9jxPw0m7asRAapG6VLaofjK"};

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 26);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{83, 117, 113, 69, 100, 121, 124, 2, 58, 56, 33, 33, 56, 63, 54, 113, 35, 52, 60, 48, 56, 63, 53, 52, 35, 113, 62, 55, 113, 60, 48, 61, 55, 62, 35, 60, 52, 53, 113, 2, 20, 24, 113, 31, 16, 29, 113, 36, 63, 56, 37, 127};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A04(long j, C1769Mk c1769Mk, ZP[] zpArr) {
        int iA0I = c1769Mk.A0I();
        if ((iA0I & 64) != 0) {
            c1769Mk.A0g(1);
            int i = (iA0I & 31) * 3;
            int iA09 = c1769Mk.A09();
            for (ZP zp : zpArr) {
                c1769Mk.A0f(iA09);
                zp.AK9(c1769Mk, i);
                zp.AKC(j, 1, i, 0, null);
            }
        }
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
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2200be.A00(com.facebook.ads.redexgen.X.Mk):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A03(long r9, com.facebook.ads.redexgen.X.C1769Mk r11, com.facebook.ads.redexgen.X.ZP[] r12) {
        /*
        L0:
            int r0 = r11.A07()
            r5 = 1
            if (r0 <= r5) goto L96
            int r6 = A00(r11)
            int r3 = A00(r11)
            int r4 = r11.A09()
            int r4 = r4 + r3
            r0 = -1
            if (r3 == r0) goto L39
            int r7 = r11.A07()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AbstractC2200be.A01
            r0 = 6
            r1 = r1[r0]
            r0 = 29
            char r1 = r1.charAt(r0)
            r0 = 57
            if (r1 == r0) goto L30
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L30:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC2200be.A01
            java.lang.String r1 = "BK517ofCJita5znccar4agPI4WAj"
            r0 = 7
            r2[r0] = r1
            if (r3 <= r7) goto L55
        L39:
            r2 = 0
            r1 = 7
            r0 = 10
            java.lang.String r3 = A01(r2, r1, r0)
            r2 = 7
            r1 = 45
            r0 = 75
            java.lang.String r0 = A01(r2, r1, r0)
            com.facebook.ads.redexgen.X.MV.A07(r3, r0)
            int r4 = r11.A0A()
        L51:
            r11.A0f(r4)
            goto L0
        L55:
            r0 = 4
            if (r6 != r0) goto L51
            r0 = 8
            if (r3 < r0) goto L51
            int r8 = r11.A0I()
            int r7 = r11.A0M()
            r6 = 0
            r3 = 49
            if (r7 != r3) goto L6d
            int r6 = r11.A0C()
        L6d:
            int r2 = r11.A0I()
            r1 = 47
            if (r7 != r1) goto L78
            r11.A0g(r5)
        L78:
            r0 = 181(0xb5, float:2.54E-43)
            if (r8 != r0) goto L94
            if (r7 == r3) goto L80
            if (r7 != r1) goto L94
        L80:
            r0 = 3
            if (r2 != r0) goto L94
            r1 = 1
        L84:
            if (r7 != r3) goto L8c
            r0 = 1195456820(0x47413934, float:49465.203)
            if (r6 != r0) goto L92
        L8b:
            r1 = r1 & r5
        L8c:
            if (r1 == 0) goto L51
            A04(r9, r11, r12)
            goto L51
        L92:
            r5 = 0
            goto L8b
        L94:
            r1 = 0
            goto L84
        L96:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2200be.A03(long, com.facebook.ads.redexgen.X.Mk, com.facebook.ads.redexgen.X.ZP[]):void");
    }
}
