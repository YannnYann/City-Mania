package io.bidmachine.rendering.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class q extends AnimatorListenerAdapter {
    public final WeakReference a;

    public q(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.a = new WeakReference(view);
    }

    public final View a() {
        return (View) this.a.get();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        View viewA = a();
        if (viewA != null) {
            viewA.setLayerType(0, null);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        View viewA = a();
        if (viewA != null) {
            viewA.setLayerType(0, null);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        View viewA = a();
        if (viewA != null) {
            viewA.setLayerType(2, null);
        }
    }
}
