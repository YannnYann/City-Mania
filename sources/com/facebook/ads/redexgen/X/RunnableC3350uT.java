package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uT, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3350uT implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ C13665z A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 43);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-12, 7, 2, 3, 13, -18, 10, -1, 23, 0, -1, 1, 9, -29, 16, 16, 13, 16};
    }

    public RunnableC3350uT(C13665z c13665z) {
        this.A00 = c13665z;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A00.A13(A00(0, 18, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE));
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
