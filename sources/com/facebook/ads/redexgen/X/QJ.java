package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class QJ implements ZK {
    public static byte[] A06;
    public final int A00;
    public final int[] A01;
    public final long[] A02;
    public final long[] A03;
    public final long[] A04;
    public final long A05;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 62);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A06 = new byte[]{-102, -48, -60, 8, 25, 22, 5, 24, 13, 19, 18, 23, -7, 23, -31, 119, 107, -70, -79, -79, -66, -80, -65, -66, -120, -115, -127, -44, -54, -37, -58, -44, -98, 112, 100, -72, -83, -79, -87, -103, -73, -127, -1, 36, 49, 42, 39, 5, 42, 32, 33, 52, -28, 40, 33, 42, 35, 48, 36, -7};
    }

    public QJ(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.A01 = iArr;
        this.A03 = jArr;
        this.A02 = jArr2;
        this.A04 = jArr3;
        this.A00 = iArr.length;
        if (this.A00 > 0) {
            this.A05 = jArr2[this.A00 - 1] + jArr3[this.A00 - 1];
        } else {
            this.A05 = 0L;
        }
    }

    private final int A00(long j) {
        return N1.A0L(this.A04, j, true, true);
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final long A8U() {
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final ZJ A9e(long j) {
        int iA00 = A00(j);
        ZL zl = new ZL(this.A04[iA00], this.A03[iA00]);
        if (zl.A01 < j) {
            int chunkIndex = this.A00;
            if (iA00 != chunkIndex - 1) {
                int chunkIndex2 = iA00 + 1;
                long j2 = this.A04[chunkIndex2];
                int chunkIndex3 = iA00 + 1;
                ZL seekPoint = new ZL(j2, this.A03[chunkIndex3]);
                return new ZJ(zl, seekPoint);
            }
        }
        return new ZJ(zl);
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final boolean ABR() {
        return true;
    }

    public final String toString() {
        return A01(42, 18, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE) + this.A00 + A01(25, 8, 35) + Arrays.toString(this.A01) + A01(15, 10, 13) + Arrays.toString(this.A03) + A01(33, 9, 6) + Arrays.toString(this.A04) + A01(1, 14, 102) + Arrays.toString(this.A02) + A01(0, 1, 51);
    }
}
