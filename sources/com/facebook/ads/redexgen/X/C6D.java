package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6D, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C6D extends BK {
    public final /* synthetic */ C6C A00;

    public C6D(C6C c6c) {
        this.A00 = c6c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(BL bl) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.facebook.ads.redexgen.X.0z
            public static byte[] A01;

            static {
                A01();
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 86);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                A01 = new byte[]{116, 75, 70, 71, 77, 114, 78, 67, 91, 64, 67, 65, 73, 103, 80, 80, 77, 80};
            }

            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                if (AbstractC2996oi.A02(this)) {
                    return;
                }
                try {
                    this.A00.A00.A0W(A00(0, 18, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE));
                } catch (Throwable th) {
                    AbstractC2996oi.A00(th, this);
                }
            }
        });
    }
}
