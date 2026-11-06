package com.badlogic.gdx.math;

import com.unity3d.services.UnityAdsConstants;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class Plane implements Serializable {
    public float d;
    public final Vector3 normal;

    public Plane(Vector3 vector3, float f) {
        Vector3 vector32 = new Vector3();
        this.normal = vector32;
        this.d = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        vector32.set(vector3).nor();
        this.d = f;
    }

    public String toString() {
        return this.normal.toString() + ", " + this.d;
    }
}
