package io.bidmachine.util;

/* JADX INFO: compiled from: MathUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class MathUtils {
    public static final MathUtils INSTANCE = new MathUtils();

    public static final float lerp(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    public static final int nonNegative(int i) {
        return MathUtilsKt.nonNegative(i);
    }
}
