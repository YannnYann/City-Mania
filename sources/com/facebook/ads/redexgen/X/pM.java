package com.facebook.ads.redexgen.X;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class pM implements Interpolator {
    public final float A00;

    public pM(float f) {
        this.A00 = f;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        return (float) (1.0d - Math.pow(1.0f - f, this.A00));
    }
}
