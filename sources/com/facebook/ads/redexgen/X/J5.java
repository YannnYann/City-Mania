package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class J5 extends AbstractC2658j9 {
    public static byte[] A06;
    public PointF A02;
    public final float A03;
    public final LinearInterpolator A05 = new LinearInterpolator();
    public final DecelerateInterpolator A04 = new DecelerateInterpolator();
    public int A00 = 0;
    public int A01 = 0;

    static {
        A04();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private final int A02(View view, int i) {
        AbstractC2645iw abstractC2645iwA0E = A0E();
        if (abstractC2645iwA0E == null || !abstractC2645iwA0E.A2w()) {
            return 0;
        }
        C2646ix c2646ix = (C2646ix) view.getLayoutParams();
        return A0T(abstractC2645iwA0E.A1n(view) - c2646ix.topMargin, abstractC2645iwA0E.A1i(view) + c2646ix.bottomMargin, abstractC2645iwA0E.A1d(), abstractC2645iwA0E.A1U() - abstractC2645iwA0E.A1a(), i);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 35);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A06 = new byte[]{41, 12, 11, 0, 4, 23, 54, 8, 10, 10, 17, 13, 54, 6, 23, 10, 9, 9, 0, 23, 21, 35, 57, 108, 63, 36, 35, 57, 32, 40, 108, 35, 58, 41, 62, 62, 37, 40, 41, 108, 47, 35, 33, 60, 57, 56, 41, 31, 47, 62, 35, 32, 32, 26, 41, 47, 56, 35, 62, 10, 35, 62, 28, 35, 63, 37, 56, 37, 35, 34, 108, 59, 36, 41, 34, 108, 56, 36, 41, 108, 0, 45, 53, 35, 57, 56, 1, 45, 34, 45, 43, 41, 62, 108, 40, 35, 41, 63, 108, 34, 35, 56, 108, 37, 33, 60, 32, 41, 33, 41, 34, 56, 108, 42, 55, 56, 41, 121, 41, 43, 60, 63, 60, 43, 60, 55, 58, 60, 121, 42, 49, 54, 44, 53, 61, 121, 59, 60, 121, 54, 55, 60, 121, 54, 63, 121, 45, 49, 60, 121, 58, 54, 55, 42, 45, 56, 55, 45, 42, 121, 61, 60, 63, 48, 55, 60, 61, 121, 48, 55, 121, 10, 52, 54, 54, 45, 49, 10, 58, 43, 54, 53, 53, 60, 43, 117, 121, 42, 45, 56, 43, 45, 48, 55, 62, 121, 46, 48, 45, 49, 121, 10, 23, 24, 9, 6};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public int A0U(View view, int i) {
        AbstractC2645iw abstractC2645iwA0E = A0E();
        if (abstractC2645iwA0E == null || !abstractC2645iwA0E.A2v()) {
            return 0;
        }
        C2646ix c2646ix = (C2646ix) view.getLayoutParams();
        return A0T(abstractC2645iwA0E.A1j(view) - c2646ix.leftMargin, abstractC2645iwA0E.A1m(view) + c2646ix.rightMargin, abstractC2645iwA0E.A1b(), abstractC2645iwA0E.A1e() - abstractC2645iwA0E.A1c(), i);
    }

    public J5(Context context) {
        this.A03 = A0P(context.getResources().getDisplayMetrics());
    }

    private final int A00() {
        if (this.A02 == null || this.A02.y == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return 0;
        }
        return this.A02.y > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? 1 : -1;
    }

    private int A01(int i, int i2) {
        int before = i - i2;
        if (i * before <= 0) {
            return 0;
        }
        return before;
    }

    private final void A05(C2656j7 c2656j7) {
        PointF pointFA0V = A0V(A0D());
        if (pointFA0V == null || (pointFA0V.x == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && pointFA0V.y == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT)) {
            c2656j7.A03(A0D());
            A0F();
            return;
        }
        A0J(pointFA0V);
        this.A02 = pointFA0V;
        this.A00 = (int) (pointFA0V.x * 10000.0f);
        this.A01 = (int) (pointFA0V.y * 10000.0f);
        int time = (int) (A0R(UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS) * 1.2f);
        c2656j7.A04((int) (this.A00 * 1.2f), (int) (this.A01 * 1.2f), time, this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2658j9
    public final void A0G() {
        this.A01 = 0;
        this.A00 = 0;
        this.A02 = null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2658j9
    public final void A0I(int i, int i2, C2660jB c2660jB, C2656j7 c2656j7) {
        if (A0C() == 0) {
            A0F();
            return;
        }
        this.A00 = A01(this.A00, i);
        this.A01 = A01(this.A01, i2);
        if (this.A00 == 0 && this.A01 == 0) {
            A05(c2656j7);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2658j9
    public void A0L(View view, C2660jB c2660jB, C2656j7 c2656j7) {
        int iA0U = A0U(view, A0Q());
        int dx = A00();
        int iA02 = A02(view, dx);
        int dy = iA0U * iA0U;
        int dx2 = iA02 * iA02;
        int time = A0S((int) Math.sqrt(dy + dx2));
        if (time > 0) {
            int distance = -iA0U;
            int dy2 = -iA02;
            c2656j7.A04(distance, dy2, time, this.A04);
        }
    }

    public float A0P(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int A0Q() {
        if (this.A02 == null || this.A02.x == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return 0;
        }
        return this.A02.x > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? 1 : -1;
    }

    public int A0R(int i) {
        return (int) Math.ceil(Math.abs(i) * this.A03);
    }

    public final int A0S(int i) {
        return (int) Math.ceil(((double) A0R(i)) / 0.3356d);
    }

    public final int A0T(int i, int i2, int i3, int i4, int i5) {
        switch (i5) {
            case -1:
                return i3 - i;
            case 0:
                int i6 = i3 - i;
                if (i6 > 0) {
                    return i6;
                }
                int i7 = i4 - i2;
                if (i7 < 0) {
                    return i7;
                }
                return 0;
            case 1:
                return i4 - i2;
            default:
                throw new IllegalArgumentException(A03(113, 93, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE));
        }
    }

    public PointF A0V(int i) {
        Object objA0E = A0E();
        if (objA0E instanceof InterfaceC2657j8) {
            return ((InterfaceC2657j8) objA0E).A5f(i);
        }
        Log.w(A03(0, 20, 70), A03(20, 93, 111) + InterfaceC2657j8.class.getCanonicalName());
        return null;
    }
}
