package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ve, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3423ve implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ EE A00;

    public C3423ve(EE ee) {
        this.A00 = ee;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        if (this.A00.A0g != null) {
            this.A00.A0g.getLayoutParams().height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            this.A00.A0g.requestLayout();
        }
    }
}
