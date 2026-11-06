package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Qm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1863Qm extends Exception {
    public static byte[] A02;
    public final long A00;
    public final long A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 35);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{56, 52, 115, 123, 96, 52, 21, 46, 37, 56, 48, 37, 35, 52, 37, 36, 96, 33, 53, 36, 41, 47, 96, 52, 50, 33, 35, 43, 96, 52, 41, 45, 37, 51, 52, 33, 45, 48, 96, 36, 41, 51, 35, 47, 46, 52, 41, 46, 53, 41, 52, 57, 122, 96, 37, 56, 48, 37, 35, 52, 37, 36, 96};
    }

    public C1863Qm(long j, long j2) {
        super(A00(6, 57, 99) + j2 + A00(0, 6, 55) + j);
        this.A00 = j;
        this.A01 = j2;
    }
}
