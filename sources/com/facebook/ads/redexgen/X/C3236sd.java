package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3236sd extends LinearLayout {
    public final Handler A00;
    public final ImageView A01;
    public final ImageView A02;
    public final C2441fZ A03;
    public final C2504ga A04;
    public final C1643Hi A05;
    public final C2917nO A06;
    public final InterfaceC3144r9 A07;
    public final Runnable A08;
    public final String A09;

    public C3236sd(C1643Hi c1643Hi, LA la, C2917nO c2917nO, InterfaceC3144r9 interfaceC3144r9) {
        super(c1643Hi);
        this.A00 = new Handler(Looper.getMainLooper());
        this.A08 = new RunnableC3234sb(this);
        this.A05 = c1643Hi;
        this.A09 = la.A37();
        this.A03 = la.A35();
        this.A07 = interfaceC3144r9;
        this.A06 = c2917nO;
        this.A04 = AbstractC2505gb.A00(c1643Hi.A02());
        this.A01 = A01(EnumC3122qn.AD_CHOICE_V2_COLLAPSE, 1104);
        addView(this.A01);
        this.A02 = A01(EnumC3122qn.AD_CHOICE_V2_EXPAND, 1105);
        addView(this.A02);
        A07(8);
        setOnClickListener(new ViewOnClickListenerC3235sc(this));
    }

    private final ImageView A01(EnumC3122qn enumC3122qn, int i) {
        ImageView imageView = new ImageView(this.A05);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        imageView.setImageBitmap(AbstractC3123qo.A01(enumC3122qn));
        AbstractC3111qc.A0H(i, imageView);
        return imageView;
    }

    public final void A04() {
        this.A00.removeCallbacksAndMessages(null);
    }

    public final void A05() {
        this.A00.removeCallbacks(this.A08);
        A07(8);
    }

    public final void A06() {
        if (this.A06 != null) {
            this.A06.A04(EnumC2916nN.A0A, null);
        }
        if (this.A04.A0O(this.A05.A02(), true)) {
            this.A07.ABW(this.A09, this.A03);
        } else {
            if (TextUtils.isEmpty(this.A03.A00())) {
                return;
            }
            C3032pK.A0P(new C3032pK(), this.A05, AbstractC3036pP.A00(this.A03.A00()), this.A09);
        }
    }

    public final void A07(int i) {
        if (i == 0) {
            this.A02.setVisibility(0);
            this.A01.setVisibility(8);
        } else {
            this.A02.setVisibility(8);
            this.A01.setVisibility(0);
        }
    }
}
