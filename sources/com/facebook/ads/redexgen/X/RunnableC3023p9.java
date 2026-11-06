package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.p9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3023p9 implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ C1643Hi A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{97, 122, 125, 98, 97, 99, 104, 99, 116, 111, 101};
    }

    public RunnableC3023p9(C1643Hi c1643Hi) {
        this.A00 = c1643Hi;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            C2812lg otsl = new C2812lg(A00(0, 4, 88));
            otsl.A05(1);
            otsl.A06(1);
            otsl.A0A(false);
            this.A00.A08().AC0(A00(4, 7, 112), AbstractC2811lf.A1Y, otsl);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
