package info.flowersoft.theotown.util;

/* JADX INFO: loaded from: classes4.dex */
public class Functions {
    public static float interpolate(float f) {
        float f2 = f * f;
        return (f2 * f2) + ((1.0f - f) * 4.0f * f2);
    }

    public static int castToIntClamped(long j) {
        return (int) Math.min(Math.max(j, -2147483648L), 2147483647L);
    }
}
