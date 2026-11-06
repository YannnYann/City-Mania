package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class E7 implements InterfaceC3448w3 {
    public static byte[] A01;
    public final /* synthetic */ C6U A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 23);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-49, -53, -64, -40};
    }

    public E7(C6U c6u) {
        this.A00 = c6u;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3448w3
    public final void AHb(String str, JSONObject jSONObject) {
        if (str.equals(A00(0, 4, 72))) {
            this.A00.ALW();
            if (C2888mv.A1z(this.A00.A09)) {
                this.A00.A09.A0B().AEc();
            }
        }
        this.A00.A0H.A0r(str, jSONObject);
    }
}
