package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3424vf extends AnimatorListenerAdapter {
    public final /* synthetic */ EE A00;
    public final /* synthetic */ boolean A01;

    public C3424vf(EE ee, boolean z) {
        this.A00 = ee;
        this.A01 = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.A00.A11(this.A00.A0L, true);
        if (!this.A01) {
            this.A00.A0O();
        }
    }
}
