package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1518Cm extends AbstractRunnableC3004oq {
    public static byte[] A01;
    public final /* synthetic */ C13565p A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 76);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-50, -31, -36, -35, -25, -104, -17, -39, -21, -104, -26, -35, -18, -35, -22, -104, -24, -22, -35, -24, -39, -22, -35, -36};
    }

    public C1518Cm(C13565p c13565p) {
        this.A00 = c13565p;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (!this.A00.A0I) {
            this.A00.A0S(A00(0, 24, 44));
        }
    }
}
