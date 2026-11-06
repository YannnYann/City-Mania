package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.eV, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract /* synthetic */ class AbstractC2376eV {
    public static byte[] A00;

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 4);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{31, 2, 21, 37, 22, 31, 20, 16, 13, 26, 42, 7, 16, 17, 28, 7};
    }

    public static long A00(InterfaceC2377eW interfaceC2377eW) {
        return interfaceC2377eW.A7H(A02(0, 7, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE), -1L);
    }

    public static Uri A01(InterfaceC2377eW interfaceC2377eW) {
        String strA7J = interfaceC2377eW.A7J(A02(7, 9, 113), null);
        if (strA7J == null) {
            return null;
        }
        return Uri.parse(strA7J);
    }
}
