package io.bidmachine.rendering.model.animation.effect;

import android.animation.Animator;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class LayoutAnimationEffect implements AnimationEffect {
    public final boolean a;
    public final boolean b = true;

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public Animator buildAnimator(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
        return null;
    }

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public boolean isApplicableWithLayers() {
        return this.a;
    }

    @Override // io.bidmachine.rendering.model.animation.effect.AnimationEffect
    public boolean isLayoutSensitive() {
        return this.b;
    }
}
