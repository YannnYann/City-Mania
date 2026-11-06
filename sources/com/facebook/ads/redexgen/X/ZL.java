package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class ZL {
    public static byte[] A02;
    public static final ZL A03;
    public final long A00;
    public final long A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 66);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{78, 66, 18, 13, 17, 11, 22, 11, 13, 12, 95, 93, 114, 111, 107, 99, 83, 117, 59, 112};
    }

    static {
        A01();
        A03 = new ZL(0L, 0L);
    }

    public ZL(long j, long j2) {
        this.A01 = j;
        this.A00 = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ZL zl = (ZL) obj;
        return this.A01 == zl.A01 && this.A00 == zl.A00;
    }

    public final int hashCode() {
        return (((int) this.A01) * 31) + ((int) this.A00);
    }

    public final String toString() {
        return A00(11, 8, 68) + this.A01 + A00(0, 11, 32) + this.A00 + A00(19, 1, 111);
    }
}
