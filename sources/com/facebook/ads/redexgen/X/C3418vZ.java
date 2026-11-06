package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3418vZ implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ C13655y A00;

    public C3418vZ(C13655y c13655y) {
        this.A00 = c13655y;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Integer num = (Integer) valueAnimator.getAnimatedValue();
        this.A00.A0r.getLayoutParams().height = num.intValue();
        this.A00.A0r.requestLayout();
    }
}
