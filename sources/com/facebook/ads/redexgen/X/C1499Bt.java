package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1499Bt extends AbstractC2633ik<C1497Br> {
    public final int A00;
    public final C1643Hi A01;
    public final ViewOnClickListenerC1569El A02;
    public final List<String> A03;

    public C1499Bt(C1643Hi c1643Hi, List<String> screenshotUrls, int i, ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        this.A03 = screenshotUrls;
        this.A00 = i;
        this.A01 = c1643Hi;
        this.A02 = viewOnClickListenerC1569El;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final C1497Br A0F(ViewGroup viewGroup, int i) {
        C1498Bs c1498Bs = new C1498Bs(this.A01);
        if (C2888mv.A1C(this.A01)) {
            c1498Bs.setOnClickListener(new ViewOnClickListenerC2512gi(this));
        }
        return new C1497Br(c1498Bs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A0M(C1497Br c1497Br, int i) {
        String str = this.A03.get(i);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        int startSpacing = this.A00 * 4;
        if (i != 0) {
            startSpacing = this.A00;
        }
        marginLayoutParams.setMargins(startSpacing, 0, i >= A0B() + (-1) ? this.A00 * 4 : this.A00, 0);
        c1497Br.A0w().setLayoutParams(marginLayoutParams);
        c1497Br.A0w().A00(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    public final int A0B() {
        return this.A03.size();
    }
}
