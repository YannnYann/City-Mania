package com.facebook.ads.redexgen.X;

import android.view.animation.Interpolator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class InterpolatorC3033pL implements Interpolator {
    public final float A00;

    public InterpolatorC3033pL(float f) {
        this.A00 = f;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        return (float) Math.pow(f, this.A00);
    }
}
