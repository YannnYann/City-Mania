package io.blueflower.stapel2d.util;

import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class MathUtil {
    public static boolean inRect(int i, int i2, int i3, int i4, int i5, int i6) {
        return i >= i3 && i2 >= i4 && i < i3 + i5 && i2 < i4 + i6;
    }

    public static float lerp(float f, float f2, float f3) {
        return ((1.0f - f3) * f) + (f3 * f2);
    }

    public static int nextPowerOfTwo(int i) {
        int i2 = 1;
        while (i2 < i) {
            i2 *= 2;
        }
        return i2;
    }

    public static int signum(int i) {
        return Integer.compare(i, 0);
    }

    public static float dist(float f, float f2, float f3, float f4) {
        return len(f3 - f, f4 - f2);
    }

    public static float len(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    public static float clamp01(float f) {
        return Math.max(Math.min(f, 1.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public static int floorDiv(int i, int i2) {
        int i3 = i / i2;
        return ((i ^ i2) >= 0 || i2 * i3 == i) ? i3 : i3 - 1;
    }
}
