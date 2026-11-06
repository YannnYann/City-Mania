package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2276cs {
    public static byte[] A08;
    public static String[] A09 = {"318O8OkEcwhZGEydYVMX7IT15UpUOVWZ", "bdtGgbIvGVOIYPmZlCs6XmXaS7PablCD", "tnFv1jIhrhZ9HkwC0TBjzwsOgBRshj", "LYbU15", "8HUfG1ritw5YDIF9Q4LV2kv", "xlXrPMjS10c7SuSb2A1BJ7epmT5pCUkr", "yT80UfFswE0Zj8DDW1z58VteBlRYjvZs", "hdJD79"};
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public final C1777Ms A07 = new C1777Ms(0);
    public long A01 = -9223372036854775807L;
    public long A02 = -9223372036854775807L;
    public long A00 = -9223372036854775807L;
    public final C1769Mk A06 = new C1769Mk();

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 115);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        byte[] bArr = {-84, -98, -45, -15, -25, -20, -27, -98, -46, -57, -53, -61, -35, -45, -52, -47, -61, -46, -98, -25, -20, -15, -14, -29, -33, -30, -84, -8, 29, 37, 16, 27, 24, 19, -49, 19, 36, 33, 16, 35, 24, 30, 29, -23, -49, 31, 66, 19, 68, 65, 48, 67, 56, 62, 61, 33, 52, 48, 51, 52, 65};
        String[] strArr = A09;
        if (strArr[1].charAt(3) == strArr[5].charAt(3)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A09;
        strArr2[3] = "DLwszj";
        strArr2[7] = "AjzNR3";
        A08 = bArr;
    }

    static {
        A09();
    }

    private int A00(Q9 q9) {
        this.A06.A0i(N1.A07);
        this.A03 = true;
        q9.AK3();
        return 0;
    }

    private int A01(Q9 q9, ZH zh) throws IOException {
        int iMin = (int) Math.min(20000L, q9.A90());
        if (q9.A9Q() != 0) {
            zh.A00 = 0;
            return 1;
        }
        this.A06.A0d(iMin);
        q9.AK3();
        q9.AI6(this.A06.A0l(), 0, iMin);
        this.A01 = A04(this.A06);
        this.A04 = true;
        return 0;
    }

    private int A02(Q9 q9, ZH zh) throws IOException {
        long jA90 = q9.A90();
        int iMin = (int) Math.min(20000L, jA90);
        long j = jA90 - ((long) iMin);
        long searchStartPosition = q9.A9Q();
        if (searchStartPosition != j) {
            zh.A00 = j;
            return 1;
        }
        this.A06.A0d(iMin);
        q9.AK3();
        q9.AI6(this.A06.A0l(), 0, iMin);
        long inputLength = A05(this.A06);
        this.A02 = inputLength;
        this.A05 = true;
        return 0;
    }

    private int A03(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8) | (bArr[i + 3] & 255);
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x000f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private long A04(com.facebook.ads.redexgen.X.C1769Mk r8) {
        /*
            r7 = this;
            int r6 = r8.A09()
            int r5 = r8.A0A()
        L8:
            int r0 = r5 + (-3)
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r6 >= r0) goto L2e
            byte[] r0 = r8.A0l()
            int r1 = r7.A03(r0, r6)
            r0 = 442(0x1ba, float:6.2E-43)
            if (r1 != r0) goto L2b
            int r0 = r6 + 4
            r8.A0f(r0)
            long r1 = A06(r8)
            int r0 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r0 == 0) goto L2b
            return r1
        L2b:
            int r6 = r6 + 1
            goto L8
        L2e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2276cs.A04(com.facebook.ads.redexgen.X.Mk):long");
    }

    private long A05(C1769Mk c1769Mk) {
        int iA09 = c1769Mk.A09();
        int searchStartPosition = c1769Mk.A0A();
        for (int nextStartCode = searchStartPosition - 4; nextStartCode >= iA09; nextStartCode--) {
            int searchEndPosition = A03(c1769Mk.A0l(), nextStartCode);
            if (searchEndPosition == 442) {
                int searchStartPosition2 = nextStartCode + 4;
                c1769Mk.A0f(searchStartPosition2);
                long jA06 = A06(c1769Mk);
                if (jA06 != -9223372036854775807L) {
                    return jA06;
                }
            }
        }
        return -9223372036854775807L;
    }

    public static long A06(C1769Mk c1769Mk) {
        int iA09 = c1769Mk.A09();
        if (c1769Mk.A07() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        int originalPosition = bArr.length;
        c1769Mk.A0k(bArr, 0, originalPosition);
        c1769Mk.A0f(iA09);
        if (A0A(bArr)) {
            return A07(bArr);
        }
        return -9223372036854775807L;
    }

    public static long A07(byte[] bArr) {
        return (((((long) bArr[0]) & 56) >> 3) << 30) | ((((long) bArr[0]) & 3) << 28) | ((((long) bArr[1]) & 255) << 20) | (((((long) bArr[2]) & 248) >> 3) << 15) | ((((long) bArr[2]) & 3) << 13) | ((((long) bArr[3]) & 255) << 5) | ((((long) bArr[4]) & 248) >> 3);
    }

    public static boolean A0A(byte[] bArr) {
        if ((bArr[0] & 196) != 68 || (bArr[2] & 4) != 4) {
            return false;
        }
        byte b = bArr[4];
        String[] strArr = A09;
        if (strArr[3].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A09;
        strArr2[1] = "PGFudarGjBhPKdFfGCQNmH1gfkOIF2Wv";
        strArr2[5] = "YThRviVdlqgLYpOaK5Vrg4WvujXAbIDz";
        if ((b & 4) != 4 || (bArr[5] & 1) != 1) {
            return false;
        }
        byte b2 = bArr[8];
        String[] strArr3 = A09;
        if (strArr3[6].charAt(31) != strArr3[0].charAt(31)) {
            String[] strArr4 = A09;
            strArr4[2] = "OCxNkKus7sjlW2PbHwhl4NWGFEZGkj";
            strArr4[4] = "wmhRg8BXm1kD2PULe28uKWU";
            if ((b2 & 3) != 3) {
                return false;
            }
        } else {
            String[] strArr5 = A09;
            strArr5[2] = "ZKZuVTrFMQzQSKzbkYcXRZILONO3Yo";
            strArr5[4] = "oFqMHW9R9Z0k7FyUHkDUl2m";
            if ((b2 & 2) != 2) {
                return false;
            }
        }
        return true;
    }

    public final int A0B(Q9 q9, ZH zh) throws IOException {
        if (!this.A05) {
            return A02(q9, zh);
        }
        if (this.A02 == -9223372036854775807L) {
            return A00(q9);
        }
        if (this.A04) {
            if (this.A01 == -9223372036854775807L) {
                return A00(q9);
            }
            this.A00 = this.A07.A06(this.A02) - this.A07.A06(this.A01);
            if (this.A00 < 0) {
                MV.A07(A08(45, 16, 92), A08(27, 18, 60) + this.A00 + A08(0, 27, 11));
                this.A00 = -9223372036854775807L;
            }
            return A00(q9);
        }
        int iA01 = A01(q9, zh);
        String[] strArr = A09;
        if (strArr[2].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A09;
        strArr2[6] = "maNgPKk0XZuyFxNIQ9xAU8YqB0hqOTQs";
        strArr2[0] = "NFow8jLkqtlvQbFKad3HEI4scV5GHa2R";
        return iA01;
    }

    public final long A0C() {
        return this.A00;
    }

    public final C1777Ms A0D() {
        return this.A07;
    }

    public final boolean A0E() {
        return this.A03;
    }
}
