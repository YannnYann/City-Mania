package io.bidmachine.util;

import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: compiled from: ColorUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ColorUtilsKt {
    public static final int toColorInt(float f) {
        return (int) ((f * 255.0f) + 0.5f);
    }

    public static final float brightness(int i) {
        return Math.max(redToRatio(i), Math.max(greenToRatio(i), blueToRatio(i)));
    }

    public static final float alphaToRatio(int i, float f) {
        return ColorUtils.alphaToRatio(i, f);
    }

    public static /* synthetic */ float alphaToRatio$default(int i, float f, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            f = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        return alphaToRatio(i, f);
    }

    public static final float redToRatio(int i) {
        return ColorUtils.redToRatio(i);
    }

    public static final float greenToRatio(int i) {
        return ColorUtils.greenToRatio(i);
    }

    public static final float blueToRatio(int i) {
        return ColorUtils.blueToRatio(i);
    }
}
