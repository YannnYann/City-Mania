package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Handler;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Aj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1463Aj implements InterfaceC2321db {
    public TransitionDrawable A00;
    public TransitionDrawable A01;
    public final int A03;
    public final Drawable A04;
    public final Drawable A05;
    public final View A07;
    public final Handler A06 = new Handler();
    public EnumC2322dc A02 = EnumC2322dc.A05;

    public C1463Aj(View view, int i, Drawable drawable, Drawable drawable2) {
        this.A03 = i;
        this.A07 = view;
        this.A05 = drawable;
        this.A04 = drawable2;
        this.A01 = new TransitionDrawable(new Drawable[]{drawable, drawable2});
        this.A01.setCrossFadeEnabled(true);
        this.A00 = new TransitionDrawable(new Drawable[]{drawable2, drawable});
        this.A00.setCrossFadeEnabled(true);
        AbstractC3111qc.A0W(this.A07, this.A01);
    }

    private void A04(boolean z) {
        this.A06.removeCallbacksAndMessages(null);
        if (z) {
            this.A02 = EnumC2322dc.A06;
            AbstractC3111qc.A0W(this.A07, this.A00);
            this.A00.startTransition(this.A03);
            this.A06.postDelayed(new C1464Ak(this), this.A03);
            return;
        }
        AbstractC3111qc.A0W(this.A07, this.A05);
        this.A02 = EnumC2322dc.A05;
    }

    private void A05(boolean z) {
        this.A06.removeCallbacksAndMessages(null);
        if (z) {
            this.A02 = EnumC2322dc.A04;
            AbstractC3111qc.A0W(this.A07, this.A01);
            this.A01.startTransition(this.A03);
            this.A06.postDelayed(new C1465Al(this), this.A03);
            return;
        }
        AbstractC3111qc.A0W(this.A07, this.A04);
        this.A02 = EnumC2322dc.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2321db
    public final void A4b(boolean z, boolean z2) {
        if (z2) {
            A04(z);
        } else {
            A05(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2321db
    public final EnumC2322dc A9o() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2321db
    public final void cancel() {
        EnumC2322dc enumC2322dc;
        this.A06.removeCallbacksAndMessages(null);
        this.A01.resetTransition();
        this.A00.resetTransition();
        if (this.A02 == EnumC2322dc.A04) {
            enumC2322dc = EnumC2322dc.A05;
        } else {
            enumC2322dc = EnumC2322dc.A03;
        }
        this.A02 = enumC2322dc;
    }
}
