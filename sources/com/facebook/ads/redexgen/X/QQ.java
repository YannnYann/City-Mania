package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.WindowManager;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class QQ implements InterfaceC2041Xr {
    public static byte[] A01;
    public final WindowManager A00;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 60);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{11, -3, 2, -8, 3, 11};
    }

    public QQ(WindowManager windowManager) {
        this.A00 = windowManager;
    }

    public static QQ A00(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService(A01(0, 6, 88));
        if (windowManager != null) {
            return new QQ(windowManager);
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2041Xr
    public final void AIl(InterfaceC2040Xq interfaceC2040Xq) {
        interfaceC2040Xq.AEe(this.A00.getDefaultDisplay());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2041Xr
    public final void ALq() {
    }
}
