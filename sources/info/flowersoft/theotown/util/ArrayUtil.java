package info.flowersoft.theotown.util;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class ArrayUtil {
    public static <T> boolean contains(T[] tArr, T t) {
        return indexOf(tArr, t) >= 0;
    }

    public static <T> int indexOf(T[] tArr, T t) {
        for (int i = 0; i < tArr.length; i++) {
            if (tArr[i] == t) {
                return i;
            }
        }
        return -1;
    }

    public static <T> T[] add(T[] tArr, T t) {
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, tArr.length + 1);
        tArr2[tArr2.length - 1] = t;
        return tArr2;
    }
}
