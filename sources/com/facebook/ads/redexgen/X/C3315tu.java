package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.LayoutTransition;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3315tu extends AnimatorListenerAdapter {
    public final /* synthetic */ RunnableC3316tv A00;

    public C3315tu(RunnableC3316tv runnableC3316tv) {
        this.A00 = runnableC3316tv;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.setDuration(250L);
        layoutTransition.setDuration(3, 0L);
        layoutTransition.addTransitionListener(new C3314tt(this));
        this.A00.A00.A0N.setLayoutTransition(layoutTransition);
        ((AbstractC3309to) this.A00.A00).A09.setVisibility(8);
        this.A00.A00.A0R.setVisibility(8);
        this.A00.A00.A0Q.setVisibility(8);
    }
}
