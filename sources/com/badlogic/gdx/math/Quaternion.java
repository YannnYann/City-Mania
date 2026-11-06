package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.NumberUtils;
import com.ironsource.C3522b4;
import com.unity3d.services.UnityAdsConstants;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class Quaternion implements Serializable {
    public static Quaternion tmp1 = new Quaternion(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    public static Quaternion tmp2 = new Quaternion(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    public float w;
    public float x;
    public float y;
    public float z;

    public Quaternion(float f, float f2, float f3, float f4) {
        set(f, f2, f3, f4);
    }

    public Quaternion() {
        idt();
    }

    public Quaternion set(float f, float f2, float f3, float f4) {
        this.x = f;
        this.y = f2;
        this.z = f3;
        this.w = f4;
        return this;
    }

    public String toString() {
        return C3522b4.j.d + this.x + "|" + this.y + "|" + this.z + "|" + this.w + C3522b4.j.e;
    }

    public Quaternion idt() {
        return set(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
    }

    public int hashCode() {
        return ((((((NumberUtils.floatToRawIntBits(this.w) + 31) * 31) + NumberUtils.floatToRawIntBits(this.x)) * 31) + NumberUtils.floatToRawIntBits(this.y)) * 31) + NumberUtils.floatToRawIntBits(this.z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Quaternion)) {
            return false;
        }
        Quaternion quaternion = (Quaternion) obj;
        return NumberUtils.floatToRawIntBits(this.w) == NumberUtils.floatToRawIntBits(quaternion.w) && NumberUtils.floatToRawIntBits(this.x) == NumberUtils.floatToRawIntBits(quaternion.x) && NumberUtils.floatToRawIntBits(this.y) == NumberUtils.floatToRawIntBits(quaternion.y) && NumberUtils.floatToRawIntBits(this.z) == NumberUtils.floatToRawIntBits(quaternion.z);
    }
}
