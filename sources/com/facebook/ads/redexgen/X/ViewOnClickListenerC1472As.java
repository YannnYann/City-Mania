package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.As, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class ViewOnClickListenerC1472As extends RelativeLayout implements InterfaceC2348e3, View.OnClickListener {
    public C1484Be A00;
    public final BM A01;
    public final BG A02;
    public final BE A03;
    public final BC A04;
    public final C2324de A05;
    public static final int A07 = (int) (AbstractC3070px.A02 * 16.0f);
    public static final int A06 = (int) (AbstractC3070px.A02 * 6.0f);

    public ViewOnClickListenerC1472As(C1643Hi c1643Hi) {
        super(c1643Hi);
        this.A04 = new BC() { // from class: com.facebook.ads.redexgen.X.5H
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BD bd) {
                this.A00.setVisibility(0);
            }
        };
        this.A02 = new BG() { // from class: com.facebook.ads.redexgen.X.5G
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5W c5w) {
                this.A00.A05.setChecked(true);
            }
        };
        this.A03 = new BE() { // from class: com.facebook.ads.redexgen.X.5F
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BF bf) {
                this.A00.A05.setChecked(false);
            }
        };
        this.A01 = new BM() { // from class: com.facebook.ads.redexgen.X.5E
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5Y c5y) {
                this.A00.A05.setChecked(true);
            }
        };
        AbstractC3111qc.A0W(this, AbstractC3111qc.A06(855638016, A06));
        this.A05 = new C2324de(c1643Hi, true);
        this.A05.setChecked(true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A07, A07);
        layoutParams.addRule(13);
        setVisibility(8);
        addView(this.A05, layoutParams);
        setClickable(true);
        setFocusable(true);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2348e3
    public final void ABd(C1484Be c1484Be) {
        this.A00 = c1484Be;
        setOnClickListener(this);
        this.A05.setOnClickListener(this);
        if (this.A00 != null) {
            this.A00.getEventBus().A03(this.A04, this.A01, this.A02, this.A03);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2348e3
    public final void ALp(C1484Be c1484Be) {
        if (this.A00 != null) {
            this.A00.getEventBus().A04(this.A03, this.A02, this.A01, this.A04);
        }
        setOnClickListener(null);
        this.A05.setOnClickListener(null);
        this.A00 = null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            if (this.A00 == null) {
                return;
            }
            if (this.A00.getState() == EnumC2234cC.A07 || this.A00.getState() == EnumC2234cC.A05 || this.A00.getState() == EnumC2234cC.A06) {
                this.A00.A0f(EnumC2349e4.A05, 11);
            } else if (this.A00.getState() == EnumC2234cC.A0A) {
                this.A00.A0j(true, 7);
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }

    public void setPauseAccessibilityLabel(String str) {
        this.A05.setPauseAccessibilityLabel(str);
    }

    public void setPlayAccessibilityLabel(String str) {
        this.A05.setPlayAccessibilityLabel(str);
    }
}
