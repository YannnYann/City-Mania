package com.facebook.ads.redexgen.X;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3244sl extends ViewOutlineProvider {
    public final /* synthetic */ float A00;
    public final /* synthetic */ C3251ss A01;

    public C3244sl(C3251ss c3251ss, float f) {
        this.A01 = c3251ss;
        this.A00 = f;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        outline.setRoundRect(AbstractC3068pv.A00, AbstractC3068pv.A00, view.getWidth(), view.getHeight(), this.A00);
    }
}
