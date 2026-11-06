package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.NumberUtils;
import com.unity3d.services.UnityAdsConstants;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class Vector3 implements Serializable {
    public float x;
    public float y;
    public float z;
    public static final Vector3 X = new Vector3(1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    public static final Vector3 Y = new Vector3(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    public static final Vector3 Z = new Vector3(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
    public static final Vector3 Zero = new Vector3(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    public static final Vector3 One = new Vector3(1.0f, 1.0f, 1.0f);
    public static final Matrix4 tmpMat = new Matrix4();

    public Vector3() {
    }

    public Vector3(float f, float f2, float f3) {
        set(f, f2, f3);
    }

    public Vector3 set(float f, float f2, float f3) {
        this.x = f;
        this.y = f2;
        this.z = f3;
        return this;
    }

    public Vector3 set(Vector3 vector3) {
        return set(vector3.x, vector3.y, vector3.z);
    }

    public Vector3 scl(float f) {
        return set(this.x * f, this.y * f, this.z * f);
    }

    public float len2() {
        float f = this.x;
        float f2 = this.y;
        float f3 = (f * f) + (f2 * f2);
        float f4 = this.z;
        return f3 + (f4 * f4);
    }

    public Vector3 nor() {
        float fLen2 = len2();
        return (fLen2 == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || fLen2 == 1.0f) ? this : scl(1.0f / ((float) Math.sqrt(fLen2)));
    }

    public String toString() {
        return "(" + this.x + "," + this.y + "," + this.z + ")";
    }

    public int hashCode() {
        return ((((NumberUtils.floatToIntBits(this.x) + 31) * 31) + NumberUtils.floatToIntBits(this.y)) * 31) + NumberUtils.floatToIntBits(this.z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Vector3 vector3 = (Vector3) obj;
        return NumberUtils.floatToIntBits(this.x) == NumberUtils.floatToIntBits(vector3.x) && NumberUtils.floatToIntBits(this.y) == NumberUtils.floatToIntBits(vector3.y) && NumberUtils.floatToIntBits(this.z) == NumberUtils.floatToIntBits(vector3.z);
    }
}
