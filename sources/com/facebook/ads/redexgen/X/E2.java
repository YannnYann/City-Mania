package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class E2 extends FrameLayout implements InterfaceC3145rA {
    public String A00;
    public final InterfaceC3144r9 A01;
    public final C1930Tb A02;

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final /* synthetic */ void onStart() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final /* synthetic */ void onStop() {
    }

    public E2(C1643Hi c1643Hi, InterfaceC3144r9 interfaceC3144r9, C1930Tb c1930Tb, String str) {
        super(c1643Hi);
        this.A02 = c1930Tb;
        this.A01 = interfaceC3144r9;
        this.A00 = str;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void ABc(Intent intent, Bundle bundle, C2683jY c2683jY) {
        C1930Tb.A0C().incrementAndGet();
        this.A02.A0U();
        AbstractC3111qc.A0K(this.A02.A0Q());
        addView(this.A02.A0Q(), new FrameLayout.LayoutParams(-1, -1));
        this.A01.A4V(this, new RelativeLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGF(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGp(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AKD(Bundle bundle) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public String getCurrentClientToken() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void onDestroy() {
        this.A02.A0T();
        if (this.A02.A0P() != null) {
            this.A02.A0P().AF5();
        }
        C1930Tb.A0C().decrementAndGet();
    }

    public void setListener(InterfaceC3144r9 interfaceC3144r9) {
    }
}
