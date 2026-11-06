package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.v7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3390v7 extends AnimatorListenerAdapter {
    public final /* synthetic */ ET A00;
    public final /* synthetic */ boolean A01;

    public C3390v7(ET et, boolean z) {
        this.A00 = et;
        this.A01 = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.A00.A0K.setTranslationY(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        this.A00.A0T();
        if (!this.A01 && this.A00.A0I != null) {
            this.A00.A0I.destroy();
        }
        if (this.A00.A0h != null) {
            if (!this.A00.A0E.A2U()) {
                this.A00.A0h.setVisibility(this.A01 ? 8 : 0);
            } else {
                this.A00.A0h.setVisibility(8);
            }
        }
    }
}
