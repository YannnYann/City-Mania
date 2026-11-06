package com.facebook.ads.redexgen.X;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7i, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C14017i extends LA implements Serializable {
    public static byte[] A00 = null;
    public static final long serialVersionUID = 5751287062553772011L;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 98);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{72, 79, 85, 68, 83, 82, 85, 72, 85, 72, 64, 77};
    }

    public C14017i(List<C2420fE> list) {
        super(list);
    }

    public static C14017i A00(JSONObject jSONObject, C1643Hi c1643Hi) {
        C14017i c14017i = new C14017i(LA.A07(jSONObject, c1643Hi, new C1732Ky()));
        c14017i.A3B(jSONObject);
        c14017i.A23(A01(0, 12, 67));
        return c14017i;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2419fD
    public final int A1L() {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2419fD
    public final int A1M() {
        return 0;
    }
}
