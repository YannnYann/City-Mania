package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9N, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C9N extends US {
    public static byte[] A02;
    public static String[] A03 = {"Rr7ykqNDseoFl0QKFIYmu5FWSHxb0TPe", "6yon72QmumHNfNDnpaoNtduWnI", "71A8tu0Vv2BJ9EBjrdHejd6B6ro6sW8e", "tB7DU3dRRHjMCbf3WmYuzcLEa5u1GuBO", "E0YEUfdxTwQknjab8TFSdWOi8n", "fCtZlalrh5d6IAl0gu3tsUMc4j1", "9t7PRmGzWyxDR1dSPGlg7OCWv", "blLLw8AAcWJQUAla3V6cKTXquNL"};
    public static final InterfaceC1702Js<C9N> A04;
    public static final String A05;
    public static final String A06;
    public final float A00;
    public final int A01;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = bArrCopyOfRange[i4];
            if (A03[7].length() != 27) {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[4] = "HvTpXaVCeOpkxVivmorKybPv9O";
            strArr[1] = "1Ci1ztWXqdT6yBbU81jdtk0p8D";
            bArrCopyOfRange[i4] = (byte) ((b - i3) - 107);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{-2, -14, 9, -28, 5, -14, 3, 4, -79, -2, 6, 4, 5, -79, -13, -10, -79, -14, -79, 1, 0, 4, -6, 5, -6, 7, -10, -79, -6, -1, 5, -10, -8, -10, 3, 89, 90, 71, 88, 56, 71, 90, 79, 84, 77, 6, 79, 89, 6, 85, 91, 90, 6, 85, 76, 6, 88, 71, 84, 77, 75, 6, 65, 22, 18, 6, 83, 71, 94, 57, 90, 71, 88, 89, 67};
    }

    static {
        A03();
        A05 = N1.A0h(1);
        A06 = N1.A0h(2);
        A04 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.UR
            @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
            public final InterfaceC1703Jt A7F(Bundle bundle) {
                return C9N.A00(bundle);
            }
        };
    }

    public C9N(int i) {
        AbstractC1747Ln.A09(i > 0, A02(0, 35, 38));
        this.A01 = i;
        this.A00 = -1.0f;
    }

    public C9N(int i, float f) {
        AbstractC1747Ln.A09(i > 0, A02(0, 35, 38));
        AbstractC1747Ln.A09(f >= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && f <= ((float) i), A02(35, 40, Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE));
        this.A01 = i;
        this.A00 = f;
    }

    public static C9N A00(Bundle bundle) {
        AbstractC1747Ln.A07(bundle.getInt(US.A02, -1) == 2);
        int i = bundle.getInt(A05, 5);
        float starRating = bundle.getFloat(A06, -1.0f);
        if (starRating == -1.0f) {
            return new C9N(i);
        }
        return new C9N(i, starRating);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C9N)) {
            return false;
        }
        C9N c9n = (C9N) obj;
        return this.A01 == c9n.A01 && this.A00 == c9n.A00;
    }

    public final int hashCode() {
        return A6.A00(Integer.valueOf(this.A01), Float.valueOf(this.A00));
    }
}
