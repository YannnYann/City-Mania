package com.facebook.ads.redexgen.X;

import android.text.Layout;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cY, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2256cY {
    public static byte[] A0B;
    public static String[] A0C = {"KNc2hdRQInPkvAdwvsVpsb99LufFiSRR", "dZDEfuxfUqYPvIq", "gHZhwAF9WaVK0LTtLC65p1", "DJJP", "YK8MlXejr35lC06DePh64YZonpwrHbW6", "J26EBe1f9Yh4Wqq1LsnGLaZnDVdqLaCD", "IvKViWGbLRbd8GYaH6BKwEyxqHOw5", "sRSoLOyVtLtjPIC"};
    public CharSequence A0A;
    public long A09 = 0;
    public long A08 = 0;
    public int A06 = 2;
    public float A00 = -3.4028235E38f;
    public int A04 = 1;
    public int A03 = 0;
    public float A01 = -3.4028235E38f;
    public int A05 = Integer.MIN_VALUE;
    public float A02 = 1.0f;
    public int A07 = Integer.MIN_VALUE;

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 93);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A0B = new byte[]{-16, 9, 6, 9, 10, 18, 9, -69, 15, 0, 19, 15, -36, 7, 4, 2, 9, 8, 0, 9, 15, -43, -69, 38, 52, 49, 69, 67, 67, 18, 68, 52, 31, 48, 65, 66, 52, 65};
    }

    static {
        A06();
    }

    public static float A00(float f, int i) {
        if (f != -3.4028235E38f && i == 0 && (f < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || f > 1.0f)) {
            return 1.0f;
        }
        if (f != -3.4028235E38f) {
            return f;
        }
        return i == 0 ? 1.0f : -3.4028235E38f;
    }

    public static float A01(int i) {
        switch (i) {
            case 4:
                return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            case 5:
                return 1.0f;
            default:
                return 0.5f;
        }
    }

    public static float A02(int i, float f) {
        switch (i) {
            case 0:
                return 1.0f - f;
            case 1:
                if (f <= 0.5f) {
                    return 2.0f * f;
                }
                float f2 = 1.0f - f;
                if (A0C[5].charAt(26) == 'j') {
                    throw new RuntimeException();
                }
                A0C[2] = "QaaknMwN1rjCGrnOaZLPGx";
                return f2 * 2.0f;
            case 2:
                return f;
            default:
                throw new IllegalStateException(String.valueOf(i));
        }
    }

    public static int A03(int i) {
        switch (i) {
            case 1:
            case 4:
                return 0;
            case 2:
            default:
                return 1;
            case 3:
            case 5:
                return 2;
        }
    }

    public static Layout.Alignment A04(int i) {
        switch (i) {
            case 1:
            case 4:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 5:
                return Layout.Alignment.ALIGN_OPPOSITE;
            default:
                MV.A07(A05(23, 15, Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE), A05(0, 23, 62) + i);
                return null;
        }
    }

    public final C1737Ld A07() {
        int iA03;
        float fA01 = this.A01 != -3.4028235E38f ? this.A01 : A01(this.A06);
        if (this.A05 != Integer.MIN_VALUE) {
            iA03 = this.A05;
        } else {
            iA03 = A03(this.A06);
        }
        C1737Ld c1737LdA0A = new C1737Ld().A0F(A04(this.A06)).A07(A00(this.A00, this.A04), this.A04).A09(this.A03).A04(fA01).A0A(iA03);
        float f = this.A02;
        float position = A02(iA03, fA01);
        C1737Ld c1737LdA0B = c1737LdA0A.A06(Math.min(f, position)).A0B(this.A07);
        if (this.A0A != null) {
            c1737LdA0B.A0G(this.A0A);
        }
        return c1737LdA0B;
    }

    public final C2249cR A08() {
        return new C2249cR(A07().A0H(), this.A09, this.A08);
    }
}
