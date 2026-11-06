package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8E, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C8E implements PG {
    public static byte[] A04;
    public static String[] A05 = {"bA4e1z6As", "c3N1v1uaCfxav4Mw3HMG2AQN8swT9mR", "lUu1rO4zNqXJ4ryfhGc2NKn2fiD0uwNg", "YBEtGvAC1dTSw64hRsmMPn68ptyvPiKl", "FIfb8FnnDVgfBaCjZPhXOUWw0EPTPdMZ", "2ykuuNLiacMWDPAdKRmEygel4j9Z7QqQ", "bNTQkpbEj", "DmYGMWHLpnfjbXb4W2CAsypnKs6pLMqu"};
    public final long A00;
    public final long A01;
    public final long[] A02;
    public final long[] A03;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C8E A00(long j, long j2, Z9 z9, C1769Mk c1769Mk) {
        int iA0I;
        long j3 = j2;
        c1769Mk.A0g(10);
        int iA0C = c1769Mk.A0C();
        if (iA0C <= 0) {
            return null;
        }
        int i = z9.A03;
        long jA0U = N1.A0U(iA0C, ((long) (i >= 32000 ? 1152 : 576)) * 1000000, i);
        int iA0M = c1769Mk.A0M();
        int iA0M2 = c1769Mk.A0M();
        int iA0M3 = c1769Mk.A0M();
        c1769Mk.A0g(2);
        long j4 = j3 + ((long) z9.A02);
        String[] strArr = A05;
        if (strArr[6].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        A05[1] = "jjhEcnRvoL";
        long[] jArr = new long[iA0M];
        long[] jArr2 = new long[iA0M];
        for (int i2 = 0; i2 < iA0M; i2++) {
            jArr[i2] = (((long) i2) * jA0U) / ((long) iA0M);
            jArr2[i2] = Math.max(j3, j4);
            switch (iA0M3) {
                case 1:
                    iA0I = c1769Mk.A0I();
                    break;
                case 2:
                    iA0I = c1769Mk.A0M();
                    break;
                case 3:
                    iA0I = c1769Mk.A0K();
                    break;
                case 4:
                    iA0I = c1769Mk.A0L();
                    break;
                default:
                    if (A05[2].charAt(9) == 'K') {
                        throw new RuntimeException();
                    }
                    A05[1] = "atFuU";
                    return null;
            }
            j3 += ((long) iA0I) * ((long) iA0M2);
        }
        if (j != -1 && j != j3) {
            MV.A07(A01(27, 10, 71), A01(2, 25, 102) + j + A01(0, 2, 60) + j3);
        }
        return new C8E(jArr, jArr2, jA0U, j3);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 13);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{117, 105, -55, -75, -59, -68, -109, -41, -44, -25, -44, -109, -26, -36, -19, -40, -109, -32, -36, -26, -32, -44, -25, -42, -37, -83, -109, -86, -74, -58, -67, -89, -71, -71, -65, -71, -58};
    }

    static {
        A02();
    }

    public C8E(long[] jArr, long[] jArr2, long j, long j2) {
        this.A03 = jArr;
        this.A02 = jArr2;
        this.A01 = j;
        this.A00 = j2;
    }

    @Override // com.facebook.ads.redexgen.X.PG
    public final long A8K() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final long A8U() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final ZJ A9e(long j) {
        int iA0L = N1.A0L(this.A03, j, true, true);
        ZL zl = new ZL(this.A03[iA0L], this.A02[iA0L]);
        if (zl.A01 < j) {
            int tableIndex = this.A03.length;
            if (iA0L != tableIndex - 1) {
                int tableIndex2 = iA0L + 1;
                long j2 = this.A03[tableIndex2];
                int tableIndex3 = iA0L + 1;
                ZL nextSeekPoint = new ZL(j2, this.A02[tableIndex3]);
                return new ZJ(zl, nextSeekPoint);
            }
        }
        return new ZJ(zl);
    }

    @Override // com.facebook.ads.redexgen.X.PG
    public final long A9u(long j) {
        return this.A03[N1.A0L(this.A02, j, true, true)];
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final boolean ABR() {
        return true;
    }
}
