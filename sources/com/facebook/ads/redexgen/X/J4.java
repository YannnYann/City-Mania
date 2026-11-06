package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class J4 extends AbstractC2629ig {
    public J4(AbstractC2645iw abstractC2645iw) {
        super(abstractC2645iw, null);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2629ig
    public final int A06() {
        return this.A02.A1e();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2629ig
    public final int A07() {
        return this.A02.A1e() - this.A02.A1c();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2629ig
    public final int A08() {
        return this.A02.A1c();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2629ig
    public final int A09() {
        return this.A02.A1f();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2629ig
    public final int A0A() {
        return this.A02.A1V();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2629ig
    public final int A0B() {
        return this.A02.A1b();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2629ig
    public final int A0C() {
        return (this.A02.A1e() - this.A02.A1b()) - this.A02.A1c();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2629ig
    public final int A0D(View view) {
        return this.A02.A1m(view) + ((C2646ix) view.getLayoutParams()).rightMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2629ig
    public final int A0E(View view) {
        C2646ix c2646ix = (C2646ix) view.getLayoutParams();
        return this.A02.A1l(view) + c2646ix.leftMargin + c2646ix.rightMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2629ig
    public final int A0F(View view) {
        C2646ix c2646ix = (C2646ix) view.getLayoutParams();
        return this.A02.A1k(view) + c2646ix.topMargin + c2646ix.bottomMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2629ig
    public final int A0G(View view) {
        return this.A02.A1j(view) - ((C2646ix) view.getLayoutParams()).leftMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2629ig
    public final int A0H(View view) {
        this.A02.A2T(view, true, this.A01);
        return this.A01.right;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2629ig
    public final int A0I(View view) {
        this.A02.A2T(view, true, this.A01);
        return this.A01.left;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2629ig
    public final void A0K(int i) {
        this.A02.A29(i);
    }
}
