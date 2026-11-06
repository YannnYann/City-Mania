package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.b5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2165b5 {
    public static byte[] A05;
    public C2186bQ A00;
    public EnumC2166b6 A01;
    public String A02;
    public String A03;
    public byte[] A04;

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 21);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A05 = new byte[]{119};
    }

    public AbstractC2165b5(String str, C2159az c2159az, C2186bQ c2186bQ) {
        this.A03 = A02(0, 0, 77);
        if (str != null) {
            this.A03 = str;
        }
        if (c2159az != null && !c2159az.A06().isEmpty()) {
            this.A03 += A02(0, 1, 35) + c2159az.A06();
        }
        this.A00 = c2186bQ;
    }

    public final C2186bQ A04() {
        return this.A00;
    }

    public final EnumC2166b6 A05() {
        return this.A01;
    }

    public final String A06() {
        return this.A02;
    }

    public final String A07() {
        return this.A03;
    }

    public final byte[] A08() {
        return this.A04;
    }
}
