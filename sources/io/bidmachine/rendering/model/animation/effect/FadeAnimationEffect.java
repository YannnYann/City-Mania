package io.bidmachine.rendering.model.animation.effect;

import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import com.unity3d.services.UnityAdsConstants;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class FadeAnimationEffect implements AnimationEffect {
    public final boolean b;
    public final boolean a = true;
    public float c = 1.0f;

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public boolean isApplicableWithLayers() {
        return this.a;
    }

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public boolean isLayoutSensitive() {
        return this.b;
    }

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public void onAnimationEnd(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setAlpha(this.c);
    }

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public void onSaveViewState(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.c = view.getAlpha();
    }

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public void prepareView(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setAlpha(z ? UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT : this.c);
    }

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public ObjectAnimator buildAnimator(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, z ? this.c : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        Intrinsics.checkNotNullExpressionValue(objectAnimatorOfFloat, "ofFloat(\n            vie…F\n            }\n        )");
        return objectAnimatorOfFloat;
    }
}
