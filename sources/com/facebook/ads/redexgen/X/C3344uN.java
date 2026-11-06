package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.RewardData;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3344uN extends FrameLayout {
    public static String[] A08 = {"Lu0oG19N", "JNY", "Ev6F9eDhg42RHlCeRuJfEtiFO07AluFn", "qSbaO4FE34QcNqD1YWxCxyT8wr5s9kWw", "hZddA1hSD7Y", "v9TnLSaOxYneacolptRVdRHaZQ0ab06L", "iyW9tyIIQvF7WQz3LOxNHXxa074IcWbN", "vzh"};
    public AbstractC3137r2 A00;
    public C3167rW A01;
    public final LA A02;
    public final C1643Hi A03;
    public final InterfaceC3144r9 A04;
    public final InterfaceC3343uM A05;
    public final C1484Be A06;
    public final List<View> A07;

    public C3344uN(C1643Hi c1643Hi, AbstractC3137r2 abstractC3137r2, LA la, C1484Be c1484Be, InterfaceC3144r9 interfaceC3144r9, InterfaceC3343uM interfaceC3343uM, View... viewArr) {
        super(c1643Hi);
        this.A07 = new ArrayList();
        this.A03 = c1643Hi;
        this.A00 = abstractC3137r2;
        this.A02 = la;
        for (View view : viewArr) {
            if (view != null) {
                this.A07.add(view);
            }
        }
        this.A04 = interfaceC3144r9;
        this.A06 = c1484Be;
        this.A05 = interfaceC3343uM;
        A04();
    }

    public C3344uN(C3374ur c3374ur, LA la, C1484Be c1484Be, C1466Am c1466Am, AbstractC3309to abstractC3309to, InterfaceC3144r9 interfaceC3144r9, InterfaceC3343uM interfaceC3343uM) {
        this(c3374ur, la, c1484Be, interfaceC3144r9, interfaceC3343uM, c1466Am, abstractC3309to);
    }

    public C3344uN(C3374ur c3374ur, LA la, C1484Be c1484Be, InterfaceC3144r9 interfaceC3144r9, InterfaceC3343uM interfaceC3343uM, View... viewArr) {
        this(c3374ur.A06(), c3374ur.A0B(), la, c1484Be, interfaceC3144r9, interfaceC3343uM, viewArr);
    }

    private void A04() {
        String strA06;
        RewardData rewardDataA1R = this.A02.A1R();
        if (rewardDataA1R == null) {
            strA06 = this.A02.A34().A05();
        } else {
            strA06 = this.A02.A34().A06(rewardDataA1R.getCurrency(), rewardDataA1R.getQuantity());
        }
        this.A01 = new C3167rW(this.A03, -1, -16777216, strA06, null, this.A02.A34().A04(), this.A02.A34().A03(), AbstractC3123qo.A01(EnumC3122qn.REWARD_ICON));
        this.A01.A02.setOnClickListener(new ViewOnClickListenerC3341uK(this));
        this.A01.A01.setOnClickListener(new ViewOnClickListenerC3342uL(this));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        addView(this.A01, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        if (this.A06 != null) {
            this.A06.A0e(EnumC2403ex.A08);
        }
        this.A05.ADp();
        if (!this.A02.A32().A0W()) {
            this.A02.A3A(this.A04);
        }
    }

    public final void A07(ViewGroup viewGroup) {
        if (this.A06 != null && !this.A06.A0p()) {
            this.A06.A0k(false, false, 11);
            AbstractC3111qc.A0P(this.A06, 4);
        }
        AbstractC3137r2 abstractC3137r2 = this.A00;
        String[] strArr = A08;
        if (strArr[7].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        A08[0] = "vGH3jzSu";
        if (abstractC3137r2 != null) {
            AbstractC3111qc.A0I(this.A00);
        }
        for (View view : this.A07) {
            view.clearAnimation();
            AbstractC3111qc.A0P(view, 4);
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        viewGroup.addView(this, layoutParams);
        this.A05.AFr();
    }
}
