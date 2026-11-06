package com.google.android.material.shape;

import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes3.dex */
public class RoundedCornerTreatment extends CornerTreatment {
    public float radius = -1.0f;

    @Override // com.google.android.material.shape.CornerTreatment
    public void getCornerPath(ShapePath shapePath, float f, float f2, float f3) {
        float f4 = f3 * f2;
        shapePath.reset(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f4, 180.0f, 180.0f - f);
        float f5 = f4 * 2.0f;
        shapePath.addArc(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f5, f5, 180.0f, f);
    }
}
