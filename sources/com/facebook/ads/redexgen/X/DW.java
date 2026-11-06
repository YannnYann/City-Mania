package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DW extends AbstractRunnableC3004oq {
    public static byte[] A02;
    public final /* synthetic */ C6C A00;
    public final /* synthetic */ C5V A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 102);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{88, 111, 124, 124, 127, 104, 115, 116, 125, 58, 115, 116, 126, 127, 124, 115, 116, 115, 110, 127, 118, 99};
    }

    public DW(C6C c6c, C5V c5v) {
        this.A00 = c6c;
        this.A01 = c5v;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (this.A00.A0X.getState() == EnumC2234cC.A02 && this.A00.A0X.getCurrentPositionInMillis() == A00()) {
            this.A00.A0W(A00(0, 22, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE));
        }
    }
}
