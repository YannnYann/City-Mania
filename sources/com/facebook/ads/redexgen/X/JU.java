package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class JU implements InterfaceC2516gn {
    public Drawable A00;
    public final /* synthetic */ C2515gm A01;

    public JU(C2515gm c2515gm) {
        this.A01 = c2515gm;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2516gn
    public final Drawable A7o() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2516gn
    public final C2515gm A7p() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2516gn
    public final boolean A9T() {
        return this.A01.getPreventCornerOverlap();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2516gn
    public final boolean AA4() {
        return this.A01.getUseCompatPadding();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2516gn
    public final void AKc(Drawable drawable) {
        this.A00 = drawable;
        this.A01.setBackgroundDrawable(drawable);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2516gn
    public final void AL3(int i, int i2, int i3, int i4) {
        this.A01.A05.set(i, i2, i3, i4);
        super/*android.widget.FrameLayout*/.setPadding(this.A01.A04.left + i, this.A01.A04.top + i2, this.A01.A04.right + i3, this.A01.A04.bottom + i4);
    }
}
