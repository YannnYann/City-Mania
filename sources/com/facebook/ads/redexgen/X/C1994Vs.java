package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1994Vs {
    public static byte[] A03;
    public final Object A00;
    public final Object A01;
    public final Object A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 55);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{102, 39, 40, 34, 102, 107, 89, 97, 120, 96, 125, 100, 120, 113, 52, 113, 122, 96, 102, 125, 113, 103, 52, 99, 125, 96, 124, 52, 103, 117, 121, 113, 52, 127, 113, 109, 46, 52};
    }

    public C1994Vs(Object key, Object value1, Object value2) {
        this.A00 = key;
        this.A01 = value1;
        this.A02 = value2;
    }

    public final IllegalArgumentException A02() {
        StringBuilder sbAppend = new StringBuilder().append(A00(6, 32, 35)).append(this.A00);
        String strA00 = A00(5, 1, 97);
        return new IllegalArgumentException(sbAppend.append(strA00).append(this.A01).append(A00(0, 5, 113)).append(this.A00).append(strA00).append(this.A02).toString());
    }
}
