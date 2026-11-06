package com.badlogic.gdx.graphics;

import com.badlogic.gdx.utils.NumberUtils;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes.dex */
public class Color {
    public static final Color BLACK;
    public static final Color BLUE;
    public static final Color BROWN;
    public static final Color CHARTREUSE;
    public static final Color CLEAR;
    public static final Color CLEAR_WHITE;
    public static final Color CORAL;
    public static final Color CYAN;
    public static final Color DARK_GRAY;
    public static final Color FIREBRICK;
    public static final Color FOREST;
    public static final Color GOLD;
    public static final Color GOLDENROD;
    public static final Color GRAY;
    public static final Color GREEN;
    public static final Color LIGHT_GRAY;
    public static final Color LIME;
    public static final Color MAGENTA;
    public static final Color MAROON;
    public static final Color NAVY;
    public static final Color OLIVE;
    public static final Color ORANGE;
    public static final Color PINK;
    public static final Color PURPLE;
    public static final Color RED;
    public static final Color ROYAL;
    public static final Color SALMON;
    public static final Color SCARLET;
    public static final Color SKY;
    public static final Color SLATE;
    public static final Color TAN;
    public static final Color TEAL;
    public static final Color VIOLET;
    public static final Color WHITE;
    public static final float WHITE_FLOAT_BITS;
    public static final Color YELLOW;
    public float a;
    public float b;
    public float g;
    public float r;

    public static int rgba8888(float f, float f2, float f3, float f4) {
        return (((int) (f * 255.0f)) << 24) | (((int) (f2 * 255.0f)) << 16) | (((int) (f3 * 255.0f)) << 8) | ((int) (f4 * 255.0f));
    }

    static {
        Color color = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        WHITE = color;
        LIGHT_GRAY = new Color(-1077952513);
        GRAY = new Color(2139062271);
        DARK_GRAY = new Color(1061109759);
        BLACK = new Color(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
        WHITE_FLOAT_BITS = color.toFloatBits();
        CLEAR = new Color(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        CLEAR_WHITE = new Color(1.0f, 1.0f, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        BLUE = new Color(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, 1.0f);
        NAVY = new Color(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 1.0f);
        ROYAL = new Color(1097458175);
        SLATE = new Color(1887473919);
        SKY = new Color(-2016482305);
        CYAN = new Color(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, 1.0f, 1.0f);
        TEAL = new Color(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f, 1.0f);
        GREEN = new Color(16711935);
        CHARTREUSE = new Color(2147418367);
        LIME = new Color(852308735);
        FOREST = new Color(579543807);
        OLIVE = new Color(1804477439);
        YELLOW = new Color(-65281);
        GOLD = new Color(-2686721);
        GOLDENROD = new Color(-626712321);
        ORANGE = new Color(-5963521);
        BROWN = new Color(-1958407169);
        TAN = new Color(-759919361);
        FIREBRICK = new Color(-1306385665);
        RED = new Color(-16776961);
        SCARLET = new Color(-13361921);
        CORAL = new Color(-8433409);
        SALMON = new Color(-92245249);
        PINK = new Color(-9849601);
        MAGENTA = new Color(1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, 1.0f);
        PURPLE = new Color(-1608453889);
        VIOLET = new Color(-293409025);
        MAROON = new Color(-1339006721);
    }

    public Color() {
    }

    public Color(int i) {
        rgba8888ToColor(this, i);
    }

    public Color(float f, float f2, float f3, float f4) {
        this.r = f;
        this.g = f2;
        this.b = f3;
        this.a = f4;
        clamp();
    }

    public Color clamp() {
        float f = this.r;
        if (f < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            this.r = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        } else if (f > 1.0f) {
            this.r = 1.0f;
        }
        float f2 = this.g;
        if (f2 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            this.g = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        } else if (f2 > 1.0f) {
            this.g = 1.0f;
        }
        float f3 = this.b;
        if (f3 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            this.b = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        } else if (f3 > 1.0f) {
            this.b = 1.0f;
        }
        float f4 = this.a;
        if (f4 < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            this.a = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            return this;
        }
        if (f4 > 1.0f) {
            this.a = 1.0f;
        }
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && toIntBits() == ((Color) obj).toIntBits();
    }

    public int hashCode() {
        float f = this.r;
        int iFloatToIntBits = (f != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? NumberUtils.floatToIntBits(f) : 0) * 31;
        float f2 = this.g;
        int iFloatToIntBits2 = (iFloatToIntBits + (f2 != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? NumberUtils.floatToIntBits(f2) : 0)) * 31;
        float f3 = this.b;
        int iFloatToIntBits3 = (iFloatToIntBits2 + (f3 != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? NumberUtils.floatToIntBits(f3) : 0)) * 31;
        float f4 = this.a;
        return iFloatToIntBits3 + (f4 != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? NumberUtils.floatToIntBits(f4) : 0);
    }

    public float toFloatBits() {
        return NumberUtils.intToFloatColor((((int) (this.a * 255.0f)) << 24) | (((int) (this.b * 255.0f)) << 16) | (((int) (this.g * 255.0f)) << 8) | ((int) (this.r * 255.0f)));
    }

    public int toIntBits() {
        return (((int) (this.a * 255.0f)) << 24) | (((int) (this.b * 255.0f)) << 16) | (((int) (this.g * 255.0f)) << 8) | ((int) (this.r * 255.0f));
    }

    public String toString() {
        String hexString = Integer.toHexString((((int) (this.r * 255.0f)) << 24) | (((int) (this.g * 255.0f)) << 16) | (((int) (this.b * 255.0f)) << 8) | ((int) (this.a * 255.0f)));
        while (hexString.length() < 8) {
            hexString = "0" + hexString;
        }
        return hexString;
    }

    public static int rgba8888(Color color) {
        return ((int) (color.a * 255.0f)) | (((int) (color.r * 255.0f)) << 24) | (((int) (color.g * 255.0f)) << 16) | (((int) (color.b * 255.0f)) << 8);
    }

    public static void rgba8888ToColor(Color color, int i) {
        color.r = (((-16777216) & i) >>> 24) / 255.0f;
        color.g = ((16711680 & i) >>> 16) / 255.0f;
        color.b = ((65280 & i) >>> 8) / 255.0f;
        color.a = (i & 255) / 255.0f;
    }
}
