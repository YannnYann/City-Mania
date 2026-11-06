package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class HQ implements InterfaceC2219bx {
    public static byte[] A01;
    public final C1642Hh A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 127);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-2, -45, -20, -24, -45, -10, 21, 21, 18, -45, -8, 21, 27, 26, 15, 20, 13, -45, -6, 21, 17, 11, 20, 102, 100, 86, 99, 30, 82, 88, 86, 95, 101};
    }

    public HQ(C1642Hh c1642Hh) {
        this.A00 = c1642Hh;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2219bx
    public final Map<String, String> A7G(boolean z) {
        HashMap map = new HashMap();
        if (!AbstractC2748kb.A00().A04()) {
            map.put(A00(0, 23, 39), C2850mJ.A00().A01(this.A00, true).A04());
        }
        map.put(A00(23, 10, Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE), AbstractC2853mM.A06(new C2822lq(this.A00), this.A00, z));
        return map;
    }
}
