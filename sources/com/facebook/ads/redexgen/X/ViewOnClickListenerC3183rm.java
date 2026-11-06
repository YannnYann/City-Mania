package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3183rm implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C13565p A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 53);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-88, -91, -95, -92, -91, -78};
    }

    public ViewOnClickListenerC3183rm(C13565p c13565p) {
        this.A00 = c13565p;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A08 = true;
            if (this.A00.A02 != null) {
                this.A00.A02.A1P(A00(0, 6, 11));
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
