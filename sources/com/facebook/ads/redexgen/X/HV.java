package com.facebook.ads.redexgen.X;

import com.facebook.ads.AudienceNetworkAds;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class HV extends AbstractRunnableC3004oq {
    public static byte[] A02;
    public final /* synthetic */ AudienceNetworkAds.InitListener A00;
    public final /* synthetic */ C1642Hh A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{91, 108, 99, 40, 123, 125, 107, 107, 109, 123, 123, 110, 125, 100, 100, 113, 40, 97, 102, 97, 124, 97, 105, 100, 97, 114, 109, 108, 41};
    }

    public HV(C1642Hh c1642Hh, AudienceNetworkAds.InitListener initListener) {
        this.A01 = c1642Hh;
        this.A00 = initListener;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        try {
            HG.A02().A0C(this.A01);
        } catch (Throwable th) {
            this.A01.A08().A4j(th);
        }
        C2835m4.A0C(this.A01);
        if (this.A00 == null) {
            return;
        }
        C2835m4.A04(this.A00, new C2834m3(true, A00(0, 29, 0)));
    }
}
