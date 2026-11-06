package io.blueflower.stapel2d.math;

import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes5.dex */
public class Vector3D implements Cloneable {
    public float x;
    public float y;
    public float z;
    public static final Vector3D X_AXIS = new Vector3D(1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    public static final Vector3D Y_AXIS = new Vector3D(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    public static final Vector3D Z_AXIS = new Vector3D(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
    public static final Vector3D ZERO = new Vector3D(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);

    public Vector3D() {
    }

    public Vector3D(float f, float f2, float f3) {
        this.x = f;
        this.y = f2;
        this.z = f3;
    }

    public float lengthSquared() {
        float f = this.x;
        float f2 = this.y;
        float f3 = (f * f) + (f2 * f2);
        float f4 = this.z;
        return f3 + (f4 * f4);
    }

    public float length() {
        return (float) Math.sqrt(lengthSquared());
    }

    public void add(float f, Vector3D vector3D) {
        add(f, vector3D.x, vector3D.y, vector3D.z);
    }

    public void add(float f, float f2, float f3, float f4) {
        add(f2 * f, f3 * f, f * f4);
    }

    public void add(float f, float f2, float f3) {
        this.x += f;
        this.y += f2;
        this.z += f3;
    }

    public void multiply(float f) {
        this.x *= f;
        this.y *= f;
        this.z *= f;
    }

    public void normalize() {
        multiply(1.0f / length());
    }

    public void crossProduct(float f, float f2, float f3, Vector3D vector3D) {
        float f4 = this.y * f3;
        float f5 = this.z;
        vector3D.x = f4 - (f5 * f2);
        float f6 = this.x;
        vector3D.y = (f5 * f) - (f3 * f6);
        vector3D.z = (f6 * f2) - (this.y * f);
    }

    public Vector3D crossProduct(Vector3D vector3D) {
        return crossProduct(vector3D.x, vector3D.y, vector3D.z);
    }

    public Vector3D crossProduct(float f, float f2, float f3) {
        Vector3D vector3D = new Vector3D();
        crossProduct(f, f2, f3, vector3D);
        return vector3D;
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Vector3D m2755clone() throws CloneNotSupportedException {
        return new Vector3D(this.x, this.y, this.z);
    }

    public boolean equals(Object obj) {
        return (obj instanceof Vector3D) && equals((Vector3D) obj, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public boolean equals(Vector3D vector3D, float f) {
        return Math.abs(this.x - vector3D.x) <= f && Math.abs(this.y - vector3D.y) <= f && Math.abs(this.z - vector3D.z) <= f;
    }

    public String toString() {
        return "[ " + this.x + ", " + this.y + ", " + this.z + " ]";
    }
}
