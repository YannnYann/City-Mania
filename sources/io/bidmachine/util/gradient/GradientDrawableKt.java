package io.bidmachine.util.gradient;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GradientDrawable.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class GradientDrawableKt {
    public static final boolean isOpaque(int i) {
        return ((i >> 24) & 255) == 255;
    }

    public static final <T> int[] mapToIntArray(T[] tArr, Function1<? super T, Integer> transform) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        int[] iArr = new int[tArr.length];
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            Integer numInvoke = transform.invoke(tArr[i]);
            if (numInvoke != null) {
                iArr[i] = numInvoke.intValue();
            }
        }
        return iArr;
    }
}
