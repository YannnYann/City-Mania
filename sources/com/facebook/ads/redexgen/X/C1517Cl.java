package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1517Cl extends AbstractRunnableC3004oq {
    public static byte[] A02;
    public final /* synthetic */ C13565p A00;
    public final /* synthetic */ C5V A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 85);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{10, 61, 46, 46, 45, 58, 33, 38, 47, 104, 33, 38, 44, 45, 46, 33, 38, 33, 60, 45, 36, 49};
    }

    public C1517Cl(C13565p c13565p, C5V c5v) {
        this.A00 = c13565p;
        this.A01 = c5v;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (this.A00.A0P.getState() == EnumC2234cC.A02 && this.A00.A0P.getCurrentPositionInMillis() == A00()) {
            this.A00.A0S(A00(0, 22, 29));
        }
    }
}
