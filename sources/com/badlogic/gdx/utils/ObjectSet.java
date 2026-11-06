package com.badlogic.gdx.utils;

import com.badlogic.gdx.math.MathUtils;

/* JADX INFO: loaded from: classes.dex */
public class ObjectSet<T> implements Iterable<T> {
    public static int tableSize(int i, float f) {
        if (i < 0) {
            throw new IllegalArgumentException("capacity must be >= 0: " + i);
        }
        int iNextPowerOfTwo = MathUtils.nextPowerOfTwo(Math.max(2, (int) Math.ceil(i / f)));
        if (iNextPowerOfTwo <= 1073741824) {
            return iNextPowerOfTwo;
        }
        throw new IllegalArgumentException("The required capacity is too large: " + i);
    }
}
