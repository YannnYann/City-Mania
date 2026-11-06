package io.bidmachine.rendering.internal;

import android.animation.ValueAnimator;
import android.view.View;
import io.bidmachine.util.ViewUtilsKt;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class D implements ValueAnimator.AnimatorUpdateListener {
    public final WeakReference a;

    public D(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.a = new WeakReference(view);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator animator) {
        Intrinsics.checkNotNullParameter(animator, "animator");
        View view = (View) this.a.get();
        if (view == null) {
            return;
        }
        Object animatedValue = animator.getAnimatedValue("width");
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        int iIntValue = ((Integer) animatedValue).intValue();
        Object animatedValue2 = animator.getAnimatedValue("height");
        Intrinsics.checkNotNull(animatedValue2, "null cannot be cast to non-null type kotlin.Int");
        int iIntValue2 = ((Integer) animatedValue2).intValue();
        view.measure(View.MeasureSpec.makeMeasureSpec(iIntValue, 1073741824), View.MeasureSpec.makeMeasureSpec(iIntValue2, 1073741824));
        ViewUtilsKt.updateLayout(view, iIntValue, iIntValue2);
    }
}
