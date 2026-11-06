package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class XB extends IOException {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 95);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-101, -127, 39, 64, 55, 74, 66, 55, 53, 70, 55, 54, -14};
    }

    public XB(Throwable th) {
        super(A00(2, 11, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE) + th.getClass().getSimpleName() + A00(0, 2, 2) + th.getMessage(), th);
    }
}
