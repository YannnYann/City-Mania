package io.bidmachine.rendering.model.animation.easing;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes5.dex */
public final class EaseOutAnimationEasing implements AnimationEasing {
    @Override // io.bidmachine.rendering.model.animation.easing.AnimationEasing
    public TimeInterpolator createInterpolator() {
        return new DecelerateInterpolator();
    }
}
