package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8D, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C8D implements PG {
    public static byte[] A06;
    public static String[] A07 = {"2icu", "B1mvOt7GkHbPF2TtK7X", "pwBOz21jQxIaXXFUVlm8ueXuTAny3iEF", "ISgGsIP", "UZOBFuQkU6lCREC17idqsI9J9nMogxu1", "jF2Onx4fIdhG58rhfua", "ifZhvt9ghZ", "suE1VeL5mSWFetVzskM26xFxAQQfG2iy"};
    public final int A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long[] A05;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 61);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A06 = new byte[]{53, 57, 55, 38, 33, 40, 79, 11, 14, 27, 14, 79, 28, 6, 21, 10, 79, 2, 6, 28, 2, 14, 27, 12, 7, 85, 79, 44, 29, 26, 19, 39, 17, 17, 31, 17, 6};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.ZK
    public final ZJ A9e(long j) {
        double d;
        if (!ABR()) {
            return new ZJ(new ZL(0L, this.A03 + ((long) this.A00)));
        }
        long jA0T = N1.A0T(j, 0L, this.A04);
        double d2 = (jA0T * 100.0d) / this.A04;
        String[] strArr = A07;
        if (strArr[1].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A07;
        strArr2[7] = "nxnS3Iyg9PiuUdWtqhBJQvBJGWbhZfSg";
        strArr2[4] = "1oEjCPIpwi3C7MyFSVvQFWTEeeNlBH3O";
        if (d2 <= 0.0d) {
            d = 0.0d;
        } else if (d2 >= 100.0d) {
            d = 256.0d;
        } else {
            int i = (int) d2;
            double d3 = ((long[]) AbstractC1747Ln.A02(this.A05))[i];
            d = (((i == 99 ? 256.0d : r6[i + 1]) - d3) * (d2 - ((double) i))) + d3;
        }
        return new ZJ(new ZL(jA0T, this.A03 + N1.A0T(Math.round((d / 256.0d) * this.A02), this.A00, this.A02 - 1)));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.PG
    public final long A9u(long j) {
        double d;
        long j2 = j - this.A03;
        if (!ABR() || j2 <= this.A00) {
            return 0L;
        }
        long[] jArr = (long[]) AbstractC1747Ln.A02(this.A05);
        double d2 = (j2 * 256.0d) / this.A02;
        int iA0L = N1.A0L(jArr, (long) d2, true, true);
        long jA00 = A00(iA0L);
        long j3 = jArr[iA0L];
        long jA002 = A00(iA0L + 1);
        if (j3 == (iA0L == 99 ? 256L : jArr[iA0L + 1])) {
            d = 0.0d;
            if (A07[2].charAt(1) == 'Q') {
                throw new RuntimeException();
            }
            A07[0] = "ueEX";
        } else {
            double d3 = d2 - j3;
            String[] strArr = A07;
            if (strArr[3].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[1] = "dAQlRgg5QkuGXjliK7E";
            strArr2[5] = "DLUTf60wXPxv8TEoq0F";
            d = d3 / (r2 - j3);
        }
        return Math.round((jA002 - jA00) * d) + jA00;
    }

    static {
        A03();
    }

    public C8D(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    public C8D(long j, int i, long j2, long j3, long[] jArr) {
        this.A03 = j;
        this.A00 = i;
        this.A04 = j2;
        this.A05 = jArr;
        this.A02 = j3;
        this.A01 = j3 != -1 ? j + j3 : -1L;
    }

    private long A00(int i) {
        return (this.A04 * ((long) i)) / 100;
    }

    public static C8D A01(long durationUs, long dataSize, Z9 z9, C1769Mk c1769Mk) {
        int iA0L;
        int i = z9.A04;
        int i2 = z9.A03;
        int iA0C = c1769Mk.A0C();
        if ((iA0C & 1) != 1 || (iA0L = c1769Mk.A0L()) == 0) {
            return null;
        }
        long jA0U = N1.A0U(iA0L, ((long) i) * 1000000, i2);
        if ((iA0C & 6) != 6) {
            return new C8D(dataSize, z9.A02, jA0U);
        }
        long jA0Q = c1769Mk.A0Q();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            long jA0I = c1769Mk.A0I();
            String[] strArr = A07;
            String str = strArr[7];
            String str2 = strArr[4];
            int iCharAt = str.charAt(12);
            int i4 = str2.charAt(12);
            if (iCharAt == i4) {
                throw new RuntimeException();
            }
            A07[2] = "bCdxHBjEQ3bU3PwRoZGtHXPzNO9Tmadn";
            jArr[i3] = jA0I;
        }
        if (durationUs != -1 && durationUs != dataSize + jA0Q) {
            MV.A07(A02(27, 10, 73), A02(2, 25, 82) + durationUs + A02(0, 2, 36) + (dataSize + jA0Q));
        }
        return new C8D(dataSize, z9.A02, jA0U, jA0Q, jArr);
    }

    @Override // com.facebook.ads.redexgen.X.PG
    public final long A8K() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final long A8U() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final boolean ABR() {
        return this.A05 != null;
    }
}
