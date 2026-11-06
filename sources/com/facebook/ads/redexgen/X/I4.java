package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class I4 implements InterfaceC2719k8 {
    public final /* synthetic */ ImageView A00;
    public final /* synthetic */ C2721kA A01;
    public final /* synthetic */ GT A02;

    public I4(C2721kA c2721kA, ImageView imageView, GT gt) {
        this.A01 = c2721kA;
        this.A00 = imageView;
        this.A02 = gt;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2719k8
    public final void AFB(Drawable drawable) {
        GT.A0f(drawable, this.A00);
        this.A02.A1P(drawable);
    }
}
