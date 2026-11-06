package com.badlogic.gdx.math;

import java.util.Random;
import vm2.Lua;

/* JADX INFO: loaded from: classes.dex */
public final class MathUtils {
    public static Random random = new RandomXS128();

    public static float clamp(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    public static int clamp(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public static long clamp(long j, long j2, long j3) {
        return j < j2 ? j2 : j > j3 ? j3 : j;
    }

    public static float lerp(float f, float f2, float f3) {
        return f + ((f2 - f) * f3);
    }

    public static int nextPowerOfTwo(int i) {
        if (i == 0) {
            return 1;
        }
        int i2 = i - 1;
        int i3 = i2 | (i2 >> 1);
        int i4 = i3 | (i3 >> 2);
        int i5 = i4 | (i4 >> 4);
        int i6 = i5 | (i5 >> 8);
        return (i6 | (i6 >> 16)) + 1;
    }

    public static int roundPositive(float f) {
        return (int) (f + 0.5f);
    }

    public static class Sin {
        public static final float[] table = new float[16384];

        static {
            for (int i = 0; i < 16384; i++) {
                table[i] = (float) Math.sin(((i + 0.5f) / 16384.0f) * 6.2831855f);
            }
            float[] fArr = table;
            fArr[0] = 0.0f;
            fArr[4096] = 1.0f;
            fArr[8192] = 0.0f;
            fArr[12288] = -1.0f;
        }
    }

    public static float sin(float f) {
        return Sin.table[((int) (f * 2607.5945f)) & Lua.MASK_NOT_Bx];
    }

    public static float cos(float f) {
        return Sin.table[((int) ((f + 1.5707964f) * 2607.5945f)) & Lua.MASK_NOT_Bx];
    }

    public static boolean isEqual(float f, float f2, float f3) {
        return Math.abs(f - f2) <= f3;
    }
}
