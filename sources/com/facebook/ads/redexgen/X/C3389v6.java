package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.v6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3389v6 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ ET A00;

    public C3389v6(ET et) {
        this.A00 = et;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        Integer num = (Integer) valueAnimator.getAnimatedValue();
        if (this.A00.A09 != null) {
            this.A00.A09.getLayoutParams().height = num.intValue();
            this.A00.A09.requestLayout();
        }
    }
}
