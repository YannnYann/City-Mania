package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.widget.ImageView;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3248sp implements Animator.AnimatorListener {
    public static String[] A01 = {"r6", "bVJPQaulgKDHimm", "RpxD8acy23ZrWMoMoEki1eEj", "WgeOexNGWA3", "5qTbKwc0jtUHxQqH3lYGxYOC", "A", "W", "dP8RYXXOG0JTpSUXjUj"};
    public final /* synthetic */ C3251ss A00;

    public C3248sp(C3251ss c3251ss) {
        this.A00 = c3251ss;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.A00.A04 = false;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        if (this.A00.A0H == EnumC3257sy.A04) {
            this.A00.A01.setPadding(AbstractC3068pv.A0U, AbstractC3068pv.A00, AbstractC3068pv.A0U, AbstractC3068pv.A00);
            this.A00.A01.setVisibility(0);
            return;
        }
        ImageView imageView = this.A00.A01;
        int i = AbstractC3068pv.A0K;
        String[] strArr = A01;
        if (strArr[4].length() == strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[7] = "cojYyWZBQfnBocKade4";
        strArr2[1] = "Bd90P08BZQAuzco";
        imageView.setPadding(i, AbstractC3068pv.A00, AbstractC3068pv.A0K, AbstractC3068pv.A00);
    }
}
