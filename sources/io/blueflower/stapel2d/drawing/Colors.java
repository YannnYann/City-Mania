package io.blueflower.stapel2d.drawing;

import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: loaded from: classes5.dex */
public final class Colors {
    public static final Color BLACK = new Color(0, 0, 0);
    public static final Color WHITE = new Color(255, 255, 255);
    public static final Color RED = new Color(255, 0, 0);
    public static final Color GREEN = new Color(0, 255, 0);
    public static final Color BLUE = new Color(0, 0, 255);
    public static final Color YELLOW = new Color(255, 255, 0);
    public static final Color MAGENTA = new Color(255, 0, 255);
    public static final Color CYAN = new Color(0, 255, 255);
    public static final Color GRAY = new Color(140, 140, 140);
    public static final Color ORANGE = new Color(255, 200, 0);
    public static final Color DARK_GRAY = new Color(70, 70, 70);
    public static final Color LIGHT_GRAY = new Color(200, 200, 200);
    public static final Color LIGHT_LIGHT_GRAY = new Color(230, 230, 230);
    public static final Color DARK_RED = new Color(140, 0, 0);
    public static final Color DARK_GREEN = new Color(0, 140, 0);
    public static final Color DARK_BLUE = new Color(0, 0, 140);
    public static final Color DARK_YELLOW = new Color(140, 140, 0);
    public static final Color DARK_ORANGE = new Color(140, 100, 0);
    public static final Color MARINE_BLUE = new Color(0, Sdk.SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, 183);
    public static final Color MARINE_BLUE_LIGHT = new Color(80, 181, Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE);
    public static final Color MARINE_BLUE_ULTRA_LIGHT = new Color(235, 245, 250);
    public static final Color PURPLE = new Color(200, 80, 200);
    public static final Color TURQUOISE = new Color(64, Sdk.SDKError.Reason.AD_LOAD_FAIL_EMPTY_BID_PAYLOAD_VALUE, 208);
    public static final Color LIGHT_RED = new Color(255, 154, 148);
    public static final Color LIGHT_GREEN = new Color(Sdk.SDKError.Reason.CONFIG_REFRESH_FAILED_VALUE, 255, 164);
    public static final Color LIGHT_BLUE = new Color(Sdk.SDKError.Reason.CONFIG_REFRESH_FAILED_VALUE, 194, 255);
    public static final Color LIGHT_YELLOW = new Color(255, 255, 174);
    public static final Color LIGHT_ORANGE = new Color(255, 204, 148);
    public static final Color TRANSPARENT = new Color(0, 0, 0, 0);
    public static final Color TEMP = new Color(0, 0, 0);

    public static Color interpolate(float f, Color color, Color color2) {
        return interpolate(TEMP, f, color, color2);
    }

    public static Color interpolate(Color color, float f, Color color2, Color color3) {
        float fMin = Math.min(Math.max(f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f);
        float f2 = 1.0f - fMin;
        color.setTo(Math.round((color2.getRed() * f2) + (color3.getRed() * fMin)), Math.round((color2.getGreen() * f2) + (color3.getGreen() * fMin)), Math.round((color2.getBlue() * f2) + (color3.getBlue() * fMin)), Math.round((f2 * color2.getAlpha()) + (fMin * color3.getAlpha())));
        return color;
    }

    public static Color interpolateLight(float f, Color color, Color color2) {
        return interpolateLight(TEMP, f, color, color2);
    }

    public static Color interpolateLight(Color color, float f, Color color2, Color color3) {
        float f2 = f * 2.0f;
        float fMin = Math.min(1.0f, 2.0f - f2);
        float fMin2 = Math.min(1.0f, f2);
        color.setTo(Math.round((color2.getRed() * fMin) + (color3.getRed() * fMin2)), Math.round((color2.getGreen() * fMin) + (color3.getGreen() * fMin2)), Math.round((color2.getBlue() * fMin) + (color3.getBlue() * fMin2)), Math.round((fMin * color2.getAlpha()) + (fMin2 * color3.getAlpha())));
        return color;
    }

    public static Color getRepr(int i, int i2, int i3, int i4) {
        if (i == 255 && i2 == 255 && i3 == 255 && i4 == 255) {
            return WHITE;
        }
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 255) {
            return BLACK;
        }
        return new Color(i, i2, i3, i4);
    }
}
