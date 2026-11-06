package com.badlogic.gdx.utils;

/* JADX INFO: loaded from: classes.dex */
public final class NumberUtils {
    public static int floatToIntBits(float f) {
        return Float.floatToIntBits(f);
    }

    public static int floatToRawIntBits(float f) {
        return Float.floatToRawIntBits(f);
    }

    public static float intToFloatColor(int i) {
        return Float.intBitsToFloat(i & (-16777217));
    }
}
