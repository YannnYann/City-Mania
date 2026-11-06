package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class E5 implements InterfaceC3185ro {
    public static byte[] A01;
    public final /* synthetic */ C6U A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 11);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{80, 79, 67, 81, 121, 84, 67, 71, 66, 95, 121, 82, 73, 121, 85, 78, 73, 81};
    }

    public E5(C6U c6u) {
        this.A00 = c6u;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3185ro
    public final void AFO() {
        this.A00.A0B.A04(EnumC2916nN.A0M, null);
        this.A00.A09.A0F().A6h();
        this.A00.A0H.A0n(A00(0, 18, 45));
        this.A00.A0H.A0d();
    }
}
