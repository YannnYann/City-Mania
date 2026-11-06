package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class Z1 {
    public static String[] A00 = {"MPeNosSnUXJxAx6mI3JWI0h5U74FiCA7", "kjzKTQHhquf8JsGuO2HgzpcKI6DiQDEE", "m5I4zI5E0q02", "SUKBz8RDpD2tsivFt0mwvILmBo8c01wG", "r9xdFWGVNdOxwZSM6CeCqQnaWsJbT75e", "FmcAr6PO7GTJVn7ylBednreFezo6IsfE", "BJIPVQbelm0s0d58H", "dHAk0OM7BTkqb0E6xESH1QwrQZAQsbTX"};

    public static int A00(C1769Mk c1769Mk, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return c1769Mk.A0I() + 1;
            case 7:
                int iA0M = c1769Mk.A0M() + 1;
                String[] strArr = A00;
                if (strArr[6].length() == strArr[2].length()) {
                    throw new RuntimeException();
                }
                A00[5] = "yCmvVRHIiGzvLgjamsq686WyJ6KQL1S3";
                return iA0M;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    public static long A01(Q9 q9, Z5 z5) throws IOException {
        q9.AK3();
        boolean z = true;
        q9.A4X(1);
        byte[] bArr = new byte[1];
        q9.AI6(bArr, 0, 1);
        if ((bArr[0] & 1) != 1) {
            z = false;
        }
        q9.A4X(2);
        int i = z ? 7 : 6;
        C1769Mk c1769Mk = new C1769Mk(i);
        c1769Mk.A0e(AbstractC2070Yx.A00(q9, c1769Mk.A0l(), 0, i));
        q9.AK3();
        Z0 z0 = new Z0();
        boolean isBlockSizeVariable = A08(c1769Mk, z5, z, z0);
        if (isBlockSizeVariable) {
            return z0.A00;
        }
        throw L9.A01(null, null);
    }

    public static boolean A02(int i, Z5 z5) {
        return i == 0 || i == z5.A01;
    }

    public static boolean A03(int i, Z5 z5) {
        return i <= 7 ? i == z5.A02 - 1 : i <= 10 && z5.A02 == 2;
    }

    public static boolean A04(C1769Mk c1769Mk, int i) {
        int iA0I = c1769Mk.A0I();
        int crc = c1769Mk.A09();
        return iA0I == N1.A0J(c1769Mk.A0l(), i, crc + (-1), 0);
    }

    public static boolean A05(C1769Mk c1769Mk, Z5 z5, int i) {
        int iA00 = A00(c1769Mk, i);
        if (iA00 != -1) {
            int blockSizeSamples = z5.A03;
            if (iA00 <= blockSizeSamples) {
                return true;
            }
        }
        return false;
    }

    public static boolean A06(C1769Mk c1769Mk, Z5 z5, int i) {
        int i2 = z5.A07;
        if (i == 0) {
            return true;
        }
        if (i <= 11) {
            return i == z5.A08;
        }
        String[] strArr = A00;
        if (strArr[7].charAt(3) == strArr[4].charAt(3)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A00;
        strArr2[6] = "5G0c2mDttQsYlpS1b";
        strArr2[2] = "4Phf51yFeYUp";
        if (i == 12) {
            return c1769Mk.A0I() * 1000 == i2;
        }
        if (i > 14) {
            return false;
        }
        int expectedSampleRate = c1769Mk.A0M();
        if (i == 14) {
            expectedSampleRate *= 10;
        }
        return expectedSampleRate == i2;
    }

    public static boolean A07(C1769Mk c1769Mk, Z5 z5, int i, Z0 z0) {
        int iA09 = c1769Mk.A09();
        long jA0Q = c1769Mk.A0Q();
        long frameHeaderBytes = jA0Q >>> 16;
        if (frameHeaderBytes != i) {
            return false;
        }
        boolean z = ((jA0Q >>> 16) & 1) == 1;
        int i2 = (int) ((jA0Q >> 12) & 15);
        int blockSizeKey = (int) ((jA0Q >> 8) & 15);
        int i3 = (int) ((jA0Q >> 4) & 15);
        long frameHeaderBytes2 = jA0Q >> 1;
        int frameStartPosition = (int) (frameHeaderBytes2 & 7);
        boolean z2 = (jA0Q & 1) == 1;
        if (!A03(i3, z5) || !A02(frameStartPosition, z5) || z2 || !A08(c1769Mk, z5, z, z0) || !A05(c1769Mk, z5, i2) || !A06(c1769Mk, z5, blockSizeKey)) {
            return false;
        }
        boolean zA04 = A04(c1769Mk, iA09);
        String[] strArr = A00;
        if (strArr[6].length() == strArr[2].length()) {
            throw new RuntimeException();
        }
        A00[5] = "ZQIN96dVqGvu4yOtVUW9aMiWArn7PKuc";
        return zA04;
    }

    public static boolean A08(C1769Mk c1769Mk, Z5 z5, boolean z, Z0 z0) {
        long utf8Value;
        try {
            long jA0S = c1769Mk.A0S();
            if (z) {
                utf8Value = jA0S;
            } else {
                long utf8Value2 = z5.A03;
                utf8Value = utf8Value2 * jA0S;
            }
            z0.A00 = utf8Value;
            if (A00[5].charAt(9) != 'G') {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[6] = "O3SHgxsLwvy5FJDTB";
            strArr[2] = "742QlVi73sOs";
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean A09(Q9 q9, Z5 z5, int i, Z0 z0) throws IOException {
        long jA9L = q9.A9L();
        byte[] bArr = new byte[2];
        q9.AI6(bArr, 0, 2);
        if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
            q9.AK3();
            q9.A4X((int) (jA9L - q9.A9Q()));
            return false;
        }
        C1769Mk c1769Mk = new C1769Mk(16);
        System.arraycopy(bArr, 0, c1769Mk.A0l(), 0, 2);
        byte[] frameStartBytes = c1769Mk.A0l();
        c1769Mk.A0e(AbstractC2070Yx.A00(q9, frameStartBytes, 2, 14));
        q9.AK3();
        q9.A4X((int) (jA9L - q9.A9Q()));
        return A07(c1769Mk, z5, i, z0);
    }
}
