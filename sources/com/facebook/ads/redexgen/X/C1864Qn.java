package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Qn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1864Qn extends Exception {
    public static byte[] A03;
    public final int A00;
    public final VC A01;
    public final boolean A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 72);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{125, 73, 88, 85, 83, 104, 78, 93, 95, 87, 28, 75, 78, 85, 72, 89, 28, 90, 93, 85, 80, 89, 88, 6, 28};
    }

    public C1864Qn(int i, VC vc, boolean z) {
        super(A00(0, 25, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE) + i);
        this.A02 = z;
        this.A00 = i;
        this.A01 = vc;
    }
}
