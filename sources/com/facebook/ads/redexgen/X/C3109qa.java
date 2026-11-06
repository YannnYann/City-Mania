package com.facebook.ads.redexgen.X;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3109qa extends ViewOutlineProvider {
    public final /* synthetic */ float A00;

    public C3109qa(float f) {
        this.A00 = f;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        outline.setRoundRect(AbstractC3068pv.A00, AbstractC3068pv.A00, view.getWidth(), view.getHeight(), this.A00);
    }
}
