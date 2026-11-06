package com.google.common.primitives;

/* JADX INFO: loaded from: classes3.dex */
public final class Booleans {
    public static boolean contains(boolean[] array, boolean target) {
        for (boolean z : array) {
            if (z == target) {
                return true;
            }
        }
        return false;
    }
}
