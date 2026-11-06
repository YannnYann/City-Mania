package io.bidmachine.util;

import android.graphics.Color;
import android.os.Build;
import com.unity3d.services.UnityAdsConstants;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ColorUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ColorUtils {
    public static final ColorUtils INSTANCE = new ColorUtils();

    public final int blerp(int i, int i2, int i3, int i4, float f, float f2, boolean z) {
        return lerp(lerp(i, i2, f, z), lerp(i3, i4, f, z), f2, z);
    }

    public final int lerp(int i, int i2, float f, boolean z) {
        return rgba(MathUtils.lerp(ColorUtilsKt.redToRatio(i), ColorUtilsKt.redToRatio(i2), f), MathUtils.lerp(ColorUtilsKt.greenToRatio(i), ColorUtilsKt.greenToRatio(i2), f), MathUtils.lerp(ColorUtilsKt.blueToRatio(i), ColorUtilsKt.blueToRatio(i2), f), z ? Float.valueOf(MathUtils.lerp(ColorUtilsKt.alphaToRatio$default(i, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1, null), ColorUtilsKt.alphaToRatio$default(i2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1, null), f)) : null);
    }

    public final float dist(int i, int i2) {
        float fRedToRatio = ColorUtilsKt.redToRatio(i) - ColorUtilsKt.redToRatio(i2);
        float fGreenToRatio = ColorUtilsKt.greenToRatio(i) - ColorUtilsKt.greenToRatio(i2);
        float fBlueToRatio = ColorUtilsKt.blueToRatio(i) - ColorUtilsKt.blueToRatio(i2);
        return (float) Math.sqrt((fRedToRatio * fRedToRatio) + (fGreenToRatio * fGreenToRatio) + (fBlueToRatio * fBlueToRatio));
    }

    public final int avg(int[] pixels, boolean z, int i) {
        Intrinsics.checkNotNullParameter(pixels, "pixels");
        int i2 = z ? 4 : 3;
        float[] fArr = new float[i2];
        int length = pixels.length - 1;
        if (i <= 0) {
            throw new IllegalArgumentException("Step must be positive, was: " + i + '.');
        }
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, length, i);
        long j = 0;
        if (progressionLastElement >= 0) {
            int i3 = 0;
            while (true) {
                int i4 = pixels[i3];
                fArr[0] = fArr[0] + ColorUtilsKt.redToRatio(i4);
                fArr[1] = fArr[1] + ColorUtilsKt.greenToRatio(i4);
                fArr[2] = fArr[2] + ColorUtilsKt.blueToRatio(i4);
                if (i2 > 3) {
                    fArr[3] = fArr[3] + ColorUtilsKt.alphaToRatio$default(i4, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1, null);
                }
                j++;
                if (i3 == progressionLastElement) {
                    break;
                }
                i3 += i;
            }
        }
        float f = j;
        float f2 = fArr[0] / f;
        float f3 = fArr[1] / f;
        float f4 = fArr[2] / f;
        Float orNull = ArraysKt___ArraysKt.getOrNull(fArr, 3);
        return rgba(f2, f3, f4, orNull != null ? Float.valueOf(orNull.floatValue() / f) : null);
    }

    public final int rgba(float f, float f2, float f3, Float f4) {
        if (f4 != null) {
            return argb(f4.floatValue(), f, f2, f3);
        }
        return rgb(f, f2, f3);
    }

    public final int argb(float f, float f2, float f3, float f4) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Color.argb(f, f2, f3, f4);
        }
        return (ColorUtilsKt.toColorInt(f) << 24) | (ColorUtilsKt.toColorInt(f2) << 16) | (ColorUtilsKt.toColorInt(f3) << 8) | ColorUtilsKt.toColorInt(f4);
    }

    public final int rgb(float f, float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Color.rgb(f, f2, f3);
        }
        return (ColorUtilsKt.toColorInt(f) << 16) | (-16777216) | (ColorUtilsKt.toColorInt(f2) << 8) | ColorUtilsKt.toColorInt(f3);
    }

    public static final Integer parseColorARGBSafely(String str) {
        if (str != null && str.length() != 0) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static final Integer parseColorRGBASafely(String str) {
        if (str != null && str.length() != 0) {
            try {
                if (str.charAt(0) == '#' && str.length() == 9) {
                    StringBuilder sb = new StringBuilder();
                    sb.append('#');
                    String strSubstring = str.substring(7, 9);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                    sb.append(strSubstring);
                    String strSubstring2 = str.substring(1, 7);
                    Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    sb.append(strSubstring2);
                    str = sb.toString();
                }
                return Integer.valueOf(Color.parseColor(str));
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static final int alpha(int i) {
        return Color.alpha(i);
    }

    public static final float alphaToRatio(int i, float f) {
        return UtilsKt.toRatio(Integer.valueOf(alpha(i)), 255.0f, f);
    }

    public static final int red(int i) {
        return Color.red(i);
    }

    public static final float redToRatio(int i) {
        return UtilsKt.toRatio$default(Integer.valueOf(red(i)), 255.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 2, null);
    }

    public static final int green(int i) {
        return Color.green(i);
    }

    public static final float greenToRatio(int i) {
        return UtilsKt.toRatio$default(Integer.valueOf(green(i)), 255.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 2, null);
    }

    public static final int blue(int i) {
        return Color.blue(i);
    }

    public static final float blueToRatio(int i) {
        return UtilsKt.toRatio$default(Integer.valueOf(blue(i)), 255.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 2, null);
    }
}
