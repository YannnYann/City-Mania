package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class H4 implements InterfaceC2089Zq {
    public static byte[] A02;
    public final /* synthetic */ C1642Hh A00;
    public final /* synthetic */ InterfaceC2106a7 A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 32);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-120, -121, -125, -106, -105, -108, -121, -127, -123, -111, -112, -120, -117, -119};
    }

    public H4(InterfaceC2106a7 interfaceC2106a7, C1642Hh c1642Hh) {
        this.A01 = interfaceC2106a7;
        this.A00 = c1642Hh;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2089Zq
    public final void A5I() {
        try {
            C2888mv.A0T(this.A00).A3A(this.A01.A8J().optJSONObject(A00(0, 14, 2)));
        } catch (JSONException e) {
            this.A00.A08().A4j(e);
        }
    }
}
