package io.bidmachine.rendering.model.animation.effect;

import android.animation.Animator;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public interface AnimationEffect {
    Animator buildAnimator(View view, boolean z);

    boolean isApplicableWithLayers();

    boolean isLayoutSensitive();

    default void onAnimationEnd(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    default void onSaveViewState(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    default void prepareView(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
    }
}
