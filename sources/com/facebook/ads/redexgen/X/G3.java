package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class G3 extends AnimationAnimationListenerC3110qb {
    public final /* synthetic */ View A00;
    public final /* synthetic */ ScaleAnimation A01;

    public G3(View view, ScaleAnimation scaleAnimation) {
        this.A00 = view;
        this.A01 = scaleAnimation;
    }

    @Override // com.facebook.ads.redexgen.X.AnimationAnimationListenerC3110qb, android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.A00.startAnimation(this.A01);
    }
}
