package com.facebook.ads.redexgen.X;

import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class BP extends RelativeLayout implements InterfaceC2348e3 {
    public C1484Be A00;

    public BP(C1643Hi c1643Hi) {
        super(c1643Hi);
    }

    public BP(C1643Hi c1643Hi, AttributeSet attributeSet, int i) {
        super(c1643Hi, attributeSet, i);
        RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams(-1, -1);
        setLayoutParams(params);
    }

    public void A07() {
    }

    public void A08() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2348e3
    public final void ABd(C1484Be c1484Be) {
        this.A00 = c1484Be;
        A07();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2348e3
    public final void ALp(C1484Be c1484Be) {
        A08();
        this.A00 = null;
    }

    public C1484Be getVideoView() {
        return this.A00;
    }
}
