package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.view.animation.Animation;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class AnimationAnimationListenerC3158rN implements Animation.AnimationListener {
    public final /* synthetic */ C2683jY A00;
    public final /* synthetic */ AbstractC1590Fg A01;
    public final /* synthetic */ AbstractC1590Fg A02;

    public AnimationAnimationListenerC3158rN(AbstractC1590Fg abstractC1590Fg, AbstractC1590Fg abstractC1590Fg2, C2683jY c2683jY) {
        this.A01 = abstractC1590Fg;
        this.A02 = abstractC1590Fg2;
        this.A00 = c2683jY;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.A01.A06 = false;
        AbstractC3111qc.A0I(this.A02);
        new Handler().postDelayed(new C1593Fj(this), 200L);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
