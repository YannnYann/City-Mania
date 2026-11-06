package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class LM extends AbstractC2395ep {
    public static byte[] A02;

    @Nullable
    public final LK A00;
    public final InterfaceC2909nG A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 20);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-89, -90, -77, -77, -86, -73};
    }

    public LM(C1643Hi c1643Hi, AbstractC2396eq abstractC2396eq, C2224c2 c2224c2, InterfaceC2909nG interfaceC2909nG, LK lk) {
        super(c1643Hi, abstractC2396eq, c2224c2);
        this.A01 = interfaceC2909nG;
        this.A00 = lk;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2395ep
    public final void A0A(Map<String, String> map) {
        if (this.A00 != null && !TextUtils.isEmpty(this.A00.A7z())) {
            this.A02.A0F().A3h();
            AbstractC2498gU.A02(this.A00.A0a(), AbstractC3086qD.A00(A00(0, 6, 49)));
            this.A01.AC7(this.A00.A7z(), map);
            if (C2888mv.A19(this.A02)) {
                String string = AdPlacementType.MEDIUM_RECTANGLE.toString();
                C3013oz c3013ozA00 = C3013oz.A00(this.A02);
                String placementType = this.A00.A7z();
                c3013ozA00.A0E(string, placementType);
            }
        }
    }
}
