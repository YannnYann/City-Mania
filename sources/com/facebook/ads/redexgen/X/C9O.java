package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9O, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C9O extends US {
    public static byte[] A01;
    public static String[] A02 = {"IItlZNFh1bCOWA9SuCda0kPxVVnCWSkN", "1HfBvPM7Oz", "HIexKd6Xz2KXU1WuKoYdoLHyrRsOQsdx", "9NlkYysSebcUacRv9ZGARRQzdyf74Rb4", "zg1iTdkXHBvIdKCakliNETvkCzj", "HApRq8wG3", "50X9GwfRlCKmxc4WB8OTV10rAiLybLdZ", "RxDrnV0eWUDmehEhMNcBH6mpqEwXCevY"};
    public static final InterfaceC1702Js<C9O> A03;
    public static final String A04;
    public final float A00;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A02;
            if (strArr[4].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[2] = "tu6VE2oUbSEN6PTYw60NiYX1W4FGgdmB";
            strArr2[3] = "exIGvxI8boveu55Il0bevkbOumyAeckc";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 113);
            i4++;
        }
    }

    public static void A03() {
        A01 = new byte[]{46, 35, 48, 33, 35, 44, 50, -34, 43, 51, 49, 50, -34, 32, 35, -34, 39, 44, -34, 50, 38, 35, -34, 48, 31, 44, 37, 35, -34, 45, 36, -34, 25, -18, -22, -34, -17, -18, -18, 27};
    }

    static {
        A03();
        A04 = N1.A0h(1);
        A03 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.Ua
            @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
            public final InterfaceC1703Jt A7F(Bundle bundle) {
                return C9O.A00(bundle);
            }
        };
    }

    public C9O() {
        this.A00 = -1.0f;
    }

    public C9O(float f) {
        AbstractC1747Ln.A09(f >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && f <= 100.0f, A02(0, 40, 77));
        this.A00 = f;
    }

    public static C9O A00(Bundle bundle) {
        AbstractC1747Ln.A07(bundle.getInt(US.A02, -1) == 1);
        float f = bundle.getFloat(A04, -1.0f);
        return f == -1.0f ? new C9O() : new C9O(f);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C9O) && this.A00 == ((C9O) obj).A00;
    }

    public final int hashCode() {
        return A6.A00(Float.valueOf(this.A00));
    }
}
