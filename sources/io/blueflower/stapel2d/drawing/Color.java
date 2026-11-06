package io.blueflower.stapel2d.drawing;

import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class Color {
    public int a;
    public int b;
    public int g;
    public int r;

    public Color() {
        this.a = 255;
    }

    public Color(int i, int i2, int i3) {
        this(i, i2, i3, 255);
    }

    public Color(float f, float f2, float f3) {
        this(f, f2, f3, 1.0f);
    }

    public Color(int i, int i2, int i3, int i4) {
        setTo(i, i2, i3, i4);
    }

    public Color(float f, float f2, float f3, float f4) {
        setTo((int) (f * 255.0f), (int) (f2 * 255.0f), (int) (f3 * 255.0f), (int) (f4 * 255.0f));
    }

    public Color enlighted(int i) {
        return new Color(Math.min(this.r + i, 255), Math.min(this.g + i, 255), Math.min(this.b + i, 255));
    }

    public Color lerp(Color color, float f) {
        float f2 = 1.0f - f;
        this.r = (int) ((this.r * f2) + (color.r * f));
        this.g = (int) ((this.g * f2) + (color.g * f));
        this.b = (int) ((f2 * this.b) + (f * color.b));
        return this;
    }

    public int getRed() {
        return this.r;
    }

    public int getGreen() {
        return this.g;
    }

    public int getBlue() {
        return this.b;
    }

    public int getAlpha() {
        return this.a;
    }

    public float getNormalizedR() {
        return this.r / 255.0f;
    }

    public float getNormalizedG() {
        return this.g / 255.0f;
    }

    public float getNormalizedB() {
        return this.b / 255.0f;
    }

    public float getNormalizedA() {
        return this.a / 255.0f;
    }

    public Color setTo(int i, int i2, int i3) {
        return setTo(i, i2, i3, this.a);
    }

    public Color setTo(int i, int i2, int i3, int i4) {
        this.r = Math.min(Math.max(i, 0), 255);
        this.g = Math.min(Math.max(i2, 0), 255);
        this.b = Math.min(Math.max(i3, 0), 255);
        this.a = Math.min(Math.max(i4, 0), 255);
        return this;
    }

    public void setRed(int i) {
        this.r = Math.min(Math.max(i, 0), 255);
    }

    public void setGreen(int i) {
        this.g = Math.min(Math.max(i, 0), 255);
    }

    public void setBlue(int i) {
        this.b = Math.min(Math.max(i, 0), 255);
    }

    public void setAlpha(int i) {
        this.a = Math.min(Math.max(i, 0), 255);
    }

    public Color setTo(Color color) {
        return setTo(color.r, color.g, color.b, color.a);
    }

    public Color copy() {
        return new Color(this.r, this.g, this.b, this.a);
    }

    public float getHue() {
        float normalizedR;
        float f;
        float normalizedG;
        float normalizedMax = getNormalizedMax() - getNormalizedMin();
        if (normalizedMax == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        int i = this.r;
        int i2 = this.g;
        if (i >= i2 && i >= this.b) {
            normalizedG = (getNormalizedG() - getNormalizedB()) / normalizedMax;
        } else {
            if (i2 >= i && i2 >= this.b) {
                normalizedR = (getNormalizedB() - getNormalizedR()) / normalizedMax;
                f = 2.0f;
            } else {
                normalizedR = (getNormalizedR() - getNormalizedG()) / normalizedMax;
                f = 4.0f;
            }
            normalizedG = normalizedR + f;
        }
        return normalizedG * 1.0471976f;
    }

    public float getSaturation() {
        int i = this.r;
        int i2 = this.g;
        return (i == i2 && i2 == this.b) ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : (getNormalizedMax() - getNormalizedMin()) / getNormalizedMax();
    }

    public float getValue() {
        return getNormalizedMax();
    }

    public int getMax() {
        return Math.max(Math.max(this.r, this.g), this.b);
    }

    public int getMin() {
        return Math.min(Math.min(this.r, this.g), this.b);
    }

    public float getNormalizedMax() {
        return getMax() / 255.0f;
    }

    public float getNormalizedMin() {
        return getMin() / 255.0f;
    }

    public int toABGR() {
        return (this.a << 24) | (this.b << 16) | (this.g << 8) | this.r;
    }

    public int toRGBA() {
        return (this.r << 24) | (this.g << 16) | (this.b << 8) | this.a;
    }

    public int toARGB() {
        return (this.a << 24) | (this.r << 16) | (this.g << 8) | this.b;
    }

    public int toRGB() {
        return (this.r << 16) | (this.g << 8) | this.b;
    }

    public String toHexRGB() {
        StringBuilder sb = new StringBuilder(Integer.toHexString(toRGB()));
        while (sb.length() < 6) {
            sb.insert(0, '0');
        }
        return sb.toString();
    }

    public String toString() {
        return "Color { r: " + this.r + ", g: " + this.g + ", b: " + this.b + ", a: " + this.a + " }";
    }

    public static Color fromRGBA(int i, Color color) {
        color.setTo((i >> 24) & 255, (i >> 16) & 255, (i >> 8) & 255, i & 255);
        return color;
    }

    public static Color fromRGB(int i, Color color) {
        color.setTo((i >> 16) & 255, (i >> 8) & 255, i & 255, 255);
        return color;
    }

    public static Color fromHexRGB(String str) {
        return fromHexRGB(str, Colors.BLACK, new Color());
    }

    public static Color fromHexRGB(String str, Color color, Color color2) {
        try {
            return fromRGB(Integer.parseInt(str, 16), color2);
        } catch (Exception unused) {
            if (color != null) {
                color2.setTo(color);
            }
            return color2;
        }
    }

    public static Color fromHexRGBA(String str, Color color, Color color2) {
        try {
            return fromRGBA((int) Long.parseLong(str, 16), color2);
        } catch (Exception unused) {
            if (color != null) {
                color2.setTo(color);
            }
            return color2;
        }
    }

    public static Color fromHex(String str, Color color, Color color2) {
        if (str.length() <= 6) {
            return fromHexRGB(str, color, color2);
        }
        return fromHexRGBA(str, color, color2);
    }

    public static Color fromHSV(float f, float f2, float f3) {
        float f4;
        float f5 = (f * 3.0f) / 3.1415927f;
        int i = (int) f5;
        float f6 = f5 - i;
        float f7 = (1.0f - f2) * f3;
        float f8 = (1.0f - (f2 * f6)) * f3;
        float f9 = (1.0f - (f2 * (1.0f - f6))) * f3;
        if (i != 1) {
            if (i == 2) {
                f4 = f7;
                f7 = f3;
            } else if (i == 3) {
                f9 = f3;
                f3 = f7;
                f7 = f8;
            } else if (i == 4) {
                f4 = f9;
                f9 = f3;
            } else if (i != 5) {
                f7 = f9;
                f9 = f7;
            } else {
                f9 = f8;
            }
            f3 = f4;
        } else {
            f9 = f7;
            f7 = f3;
            f3 = f8;
        }
        return new Color(f3, f7, f9);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Color) {
            Color color = (Color) obj;
            if (color.a == this.a && color.r == this.r && color.g == this.g && color.b == this.b) {
                return true;
            }
        }
        return false;
    }
}
