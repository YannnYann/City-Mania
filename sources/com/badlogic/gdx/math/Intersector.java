package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.FloatArray;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes.dex */
public final class Intersector {
    public static final Vector3 v0 = new Vector3();
    public static final Vector3 v1 = new Vector3();
    public static final Vector3 v2 = new Vector3();
    public static final FloatArray floatArray = new FloatArray();
    public static final FloatArray floatArray2 = new FloatArray();
    public static final Vector2 ip = new Vector2();
    public static final Vector2 ep1 = new Vector2();
    public static final Vector2 ep2 = new Vector2();
    public static final Vector2 s = new Vector2();
    public static final Vector2 e = new Vector2();
    public static Vector2 v2a = new Vector2();
    public static Vector2 v2b = new Vector2();
    public static Vector2 v2c = new Vector2();
    public static Vector2 v2d = new Vector2();
    public static final Plane p = new Plane(new Vector3(), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    public static final Vector3 i = new Vector3();
    public static final Vector3 dir = new Vector3();
    public static final Vector3 start = new Vector3();
    public static Vector3 best = new Vector3();
    public static Vector3 tmp = new Vector3();
    public static Vector3 tmp1 = new Vector3();
    public static Vector3 tmp2 = new Vector3();
    public static Vector3 tmp3 = new Vector3();
    public static Vector3 intersection = new Vector3();

    public static boolean isPointInPolygon(float[] fArr, int i2, int i3, float f, float f2) {
        float f3 = fArr[i2];
        float f4 = fArr[i2 + 1];
        int i4 = i2 + 3;
        int i5 = i2 + i3;
        boolean z = false;
        float f5 = f4;
        while (i4 < i5) {
            float f6 = fArr[i4];
            if ((f6 < f2 && f5 >= f2) || (f5 < f2 && f6 >= f2)) {
                float f7 = fArr[i4 - 1];
                if (f7 + (((f2 - f6) / (f5 - f6)) * (fArr[i4 - 3] - f7)) < f) {
                    z = !z;
                }
            }
            i4 += 2;
            f5 = f6;
        }
        return (((f4 >= f2 || f5 < f2) && (f5 >= f2 || f4 < f2)) || f3 + (((f2 - f4) / (f5 - f4)) * (fArr[i4 + (-3)] - f3)) >= f) ? z : !z;
    }
}
