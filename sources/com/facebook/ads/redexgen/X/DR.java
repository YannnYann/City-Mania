package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DR extends AbstractRunnableC3004oq {
    public static byte[] A01;
    public final /* synthetic */ AnonymousClass65 A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 18);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-109, -90, -95, -94, -84, 93, -76, -98, -80, 93, -85, -94, -77, -94, -81, 93, -83, -81, -94, -83, -98, -81, -94, -95};
    }

    public DR(AnonymousClass65 anonymousClass65) {
        this.A00 = anonymousClass65;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (!this.A00.A0Y) {
            this.A00.A0f.AHa(A00(0, 24, 43));
        }
    }
}
