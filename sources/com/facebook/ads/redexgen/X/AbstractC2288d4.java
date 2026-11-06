package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.d4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2288d4 {
    public static String[] A00 = {"q", "", "cPr4W3", "kHXWkKmkRb2eUHnaHguQys1Si10FXsIA", "uZFKxIG3z3l5tcvE1Z6QufsEmHWnbqe6", "qN4HGXOIb", "YM48h", "AHYaa4vORgLBjrBGzfRTL0sqCQyhHS18"};

    public static int A00(byte[] bArr, int i, int i2) {
        while (i < i2) {
            byte b = bArr[i];
            String[] strArr = A00;
            String str = strArr[3];
            String str2 = strArr[7];
            int iCharAt = str.charAt(6);
            int position = str2.charAt(6);
            if (iCharAt == position) {
                throw new RuntimeException();
            }
            String[] strArr2 = A00;
            strArr2[0] = "U";
            strArr2[6] = "9vOO0";
            if (b == 71) {
                break;
            }
            i++;
        }
        return i;
    }

    public static long A01(C1769Mk c1769Mk, int i, int i2) {
        c1769Mk.A0f(i);
        if (c1769Mk.A07() < 5) {
            return -9223372036854775807L;
        }
        int pid = c1769Mk.A0C();
        int tsPacketHeader = 8388608 & pid;
        if (tsPacketHeader != 0) {
            return -9223372036854775807L;
        }
        int tsPacketHeader2 = 2096896 & pid;
        if ((tsPacketHeader2 >> 8) != i2) {
            return -9223372036854775807L;
        }
        int tsPacketHeader3 = pid & 32;
        int tsPacketHeader4 = tsPacketHeader3 != 0 ? 1 : 0;
        if (tsPacketHeader4 == 0) {
            return -9223372036854775807L;
        }
        int tsPacketHeader5 = c1769Mk.A0I();
        if (tsPacketHeader5 >= 7) {
            int iA07 = c1769Mk.A07();
            if (A00[4].charAt(29) == 90) {
                throw new RuntimeException();
            }
            A00[5] = "kSPQfSkaSYbD7hJ";
            if (iA07 >= 7) {
                int tsPacketHeader6 = c1769Mk.A0I();
                if ((tsPacketHeader6 & 16) == 16) {
                    String[] strArr = A00;
                    String str = strArr[3];
                    String str2 = strArr[7];
                    int pid2 = str.charAt(6);
                    int tsPacketHeader7 = str2.charAt(6);
                    if (pid2 != tsPacketHeader7) {
                        String[] strArr2 = A00;
                        strArr2[2] = "1UwvFb";
                        strArr2[1] = "";
                        byte[] bArr = new byte[6];
                        int tsPacketHeader8 = bArr.length;
                        c1769Mk.A0k(bArr, 0, tsPacketHeader8);
                        return A02(bArr);
                    }
                    byte[] bArr2 = new byte[6];
                    int tsPacketHeader9 = bArr2.length;
                    c1769Mk.A0k(bArr2, 0, tsPacketHeader9);
                    return A02(bArr2);
                }
            }
        }
        return -9223372036854775807L;
    }

    public static long A02(byte[] bArr) {
        return ((((long) bArr[0]) & 255) << 25) | ((((long) bArr[1]) & 255) << 17) | ((((long) bArr[2]) & 255) << 9) | ((((long) bArr[3]) & 255) << 1) | ((255 & ((long) bArr[4])) >> 7);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A03(byte[] r6, int r7, int r8, int r9) {
        /*
            r4 = 0
            r3 = -4
        L2:
            r0 = 4
            if (r3 > r0) goto L56
            int r5 = r3 * 188
            int r5 = r5 + r9
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC2288d4.A00
            r0 = 3
            r1 = r2[r0]
            r0 = 7
            r2 = r2[r0]
            r0 = 6
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L50
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC2288d4.A00
            java.lang.String r1 = "yLEdlsl7C97OfRYEy8LQZix7JYsmYm"
            r0 = 5
            r2[r0] = r1
            if (r5 < r7) goto L2c
            if (r5 >= r8) goto L2c
            r1 = r6[r5]
            r0 = 71
            if (r1 == r0) goto L30
        L2c:
            r4 = 0
        L2d:
            int r3 = r3 + 1
            goto L2
        L30:
            int r4 = r4 + 1
            r0 = 5
            if (r4 != r0) goto L2d
            r3 = 1
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.AbstractC2288d4.A00
            r0 = 5
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 29
            if (r1 == r0) goto L50
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.AbstractC2288d4.A00
            java.lang.String r1 = "8"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "tDl2F"
            r0 = 6
            r2[r0] = r1
            return r3
        L50:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L56:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2288d4.A03(byte[], int, int, int):boolean");
    }
}
