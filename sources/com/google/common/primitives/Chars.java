package com.google.common.primitives;

/* JADX INFO: loaded from: classes3.dex */
public final class Chars {
    public static boolean contains(char[] array, char target) {
        for (char c : array) {
            if (c == target) {
                return true;
            }
        }
        return false;
    }
}
