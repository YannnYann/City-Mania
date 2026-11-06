package com.google.android.material.motion;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.view.View;
import android.view.animation.PathInterpolator;
import com.google.android.material.R$attr;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes3.dex */
public abstract class MaterialBackAnimationHelper<V extends View> {
    public final int cancelDuration;
    public final int hideDurationMax;
    public final int hideDurationMin;
    public final TimeInterpolator progressInterpolator = new PathInterpolator(0.1f, 0.1f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f);
    public final V view;

    public MaterialBackAnimationHelper(V v) {
        this.view = v;
        Context context = v.getContext();
        this.hideDurationMax = MotionUtils.resolveThemeDuration(context, R$attr.motionDurationMedium2, 300);
        this.hideDurationMin = MotionUtils.resolveThemeDuration(context, R$attr.motionDurationShort3, 150);
        this.cancelDuration = MotionUtils.resolveThemeDuration(context, R$attr.motionDurationShort2, 100);
    }
}
