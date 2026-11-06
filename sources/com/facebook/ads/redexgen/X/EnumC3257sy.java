package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public enum EnumC3257sy {
    A03,
    A02,
    A04;

    public static byte[] A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 76);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{8, 13, 22, 10, 1, 6, 0, 10, 12, 107, 122, 109, 108, 97, 124, 119, 100, 97, 102, 109, 119, 126, 25, 89, 72, 95, 94, 83, 78, 69, 86, 83, 84, 95, 69, 76, 40, 69, 91, 84, 83, 87, 91, 78, 83, 85, 84};
    }

    static {
        A01();
    }
}
