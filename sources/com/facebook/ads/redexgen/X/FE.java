package com.facebook.ads.redexgen.X;

import android.transition.ChangeBounds;
import android.transition.Explode;
import android.transition.TransitionSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class FE extends AbstractC3209sC {
    public static final int A03 = (int) (AbstractC3070px.A02 * 8.0f);
    public final RelativeLayout A00;
    public final C2504ga A01;
    public final C1643Hi A02;

    public FE(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, String str, C2441fZ c2441fZ, InterfaceC3145rA interfaceC3145rA, InterfaceC3144r9 interfaceC3144r9) {
        super(c1643Hi, interfaceC2909nG, str, c2441fZ, interfaceC3145rA, interfaceC3144r9);
        this.A02 = c1643Hi;
        this.A01 = AbstractC2505gb.A00(c1643Hi.A02());
        this.A00 = new RelativeLayout(getContext());
        addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
        AbstractC3111qc.A0O(this.A00, -1728053248);
        if (C2888mv.A2d(c1643Hi)) {
            this.A00.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.sH
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A0T(view);
                }
            });
        }
    }

    public static RelativeLayout.LayoutParams A00(boolean z) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, z ? -1 : -2);
        layoutParams.addRule(12);
        return layoutParams;
    }

    private void A01() {
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.setOrdering(0);
        transitionSet.addTransition(new ChangeBounds()).addTransition(new Explode());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3209sC
    public final void A0O() {
        C2508ge c2508geA0A = this.A01.A0A();
        C3224sR c3224sR = new C3224sR(this.A02);
        AbstractC3111qc.A0H(1119, c3224sR);
        c3224sR.setInfo(EnumC3122qn.HIDE_AD, this.A01.A0H(), this.A01.A0G());
        c3224sR.setOnClickListener(new ViewOnClickListenerC3215sI(this));
        C2508ge c2508geA0B = this.A01.A0B();
        C3224sR c3224sR2 = new C3224sR(this.A02);
        AbstractC3111qc.A0H(1120, c3224sR2);
        c3224sR2.setInfo(EnumC3122qn.REPORT_AD, this.A01.A0L(), this.A01.A0K());
        c3224sR2.setOnClickListener(new ViewOnClickListenerC3216sJ(this));
        C3224sR c3224sR3 = new C3224sR(this.A02);
        AbstractC3111qc.A0H(1121, c3224sR3);
        c3224sR3.setInfo(EnumC3122qn.AD_CHOICES_ICON, this.A01.A0M(), "");
        c3224sR3.setOnClickListener(new ViewOnClickListenerC3217sK(this));
        LinearLayout.LayoutParams itemParams = new LinearLayout.LayoutParams(-1, -2);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setClickable(true);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(A03 * 2, A03, A03 * 2, A03);
        AbstractC3111qc.A0O(linearLayout, -1);
        if (!c2508geA0A.A05().isEmpty()) {
            linearLayout.addView(c3224sR, itemParams);
        }
        if (!c2508geA0B.A05().isEmpty()) {
            linearLayout.addView(c3224sR2, itemParams);
        }
        linearLayout.addView(c3224sR3, itemParams);
        A01();
        this.A00.removeAllViews();
        this.A00.addView(linearLayout, A00(false));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3209sC
    public final void A0P() {
        this.A00.removeAllViews();
        AbstractC3111qc.A0K(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3209sC
    public final void A0Q(C2508ge c2508ge, EnumC2506gc enumC2506gc) {
        String strA0E;
        int i;
        if (enumC2506gc == EnumC2506gc.A04) {
            return;
        }
        boolean z = enumC2506gc == EnumC2506gc.A05;
        C3206s9 c3206s9 = new C3206s9(this.A02, this.A0D);
        if (z) {
            strA0E = this.A01.A0F();
        } else {
            strA0E = this.A01.A0E();
        }
        C3206s9 c3206s9A0D = c3206s9.A0H(strA0E).A0G(this.A01.A0D()).A0E(c2508ge.A04()).A0D(z ? EnumC3122qn.REPORT_AD : EnumC3122qn.HIDE_AD);
        if (z) {
            i = -552389;
        } else {
            i = -13272859;
        }
        C3207sA adHiddenView = c3206s9A0D.A0C(i).A0F(this.A0C != null ? this.A0C.A01() : "").A0L();
        AbstractC3111qc.A0O(adHiddenView, -1);
        AbstractC3111qc.A0X(this);
        this.A00.removeAllViews();
        this.A00.addView(adHiddenView, A00(true));
        super.A0Q(c2508ge, enumC2506gc);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3209sC
    public final void A0R(C2508ge c2508ge, EnumC2506gc enumC2506gc) {
        String strA0H;
        boolean z = enumC2506gc == EnumC2506gc.A05;
        C1643Hi c1643Hi = this.A02;
        InterfaceC3211sE interfaceC3211sE = this.A0D;
        if (z) {
            strA0H = this.A01.A0L();
        } else {
            strA0H = this.A01.A0H();
        }
        C3227sU c3227sU = new C3227sU(c1643Hi, c2508ge, interfaceC3211sE, strA0H, z ? EnumC3122qn.REPORT_AD : EnumC3122qn.HIDE_AD);
        c3227sU.setClickable(true);
        AbstractC3111qc.A0O(c3227sU, -1);
        c3227sU.setPadding(A03 * 2, A03, A03 * 2, A03);
        A01();
        this.A00.removeAllViews();
        this.A00.addView(c3227sU, A00(false));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3209sC
    public final boolean A0S() {
        return false;
    }

    public final /* synthetic */ void A0T(View view) {
        this.A0D.A5d();
    }
}
