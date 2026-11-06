package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.unity3d.services.UnityAdsConstants;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6y, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13916y extends AbstractC1587Fd {
    public static String[] A0F = {"Wig1hLPkKRVxVmj3WWn5TJs0oa9CPoof", "nXJy7w8xrBopQigqFpns", "L9zf6W9Mlj7Zg9Gn", "g2eJG", "3uE", "W6oSc", "Ua6HLBUtKyHuD7Z", "bgivUb39KQdrYsEepiJJw5K7MLLYT62o"};
    public C5Z A00;
    public String A01;
    public boolean A02;
    public boolean A03;
    public final ViewGroup A04;
    public final C2771kz A05;
    public final InterfaceC2909nG A06;
    public final C1484Be A07;
    public final BM A08;
    public final BK A09;
    public final C1475Av A0A;
    public final ViewOnClickListenerC1472As A0B;
    public final C1471Ar A0C;
    public final AbstractC2225c3 A0D;
    public final C2224c2 A0E;

    public C13916y(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, C2771kz c2771kz, C2917nO c2917nO, View.OnClickListener onClickListener, LA la) {
        super(c1643Hi, onClickListener, c2917nO, la);
        this.A03 = false;
        this.A02 = false;
        this.A08 = new BM() { // from class: com.facebook.ads.redexgen.X.70
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2857mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5Y c5y) {
                if (C2888mv.A1T(((AbstractC1587Fd) this.A00).A08)) {
                    this.A00.A07.A0f(EnumC2349e4.A03, 30);
                }
            }
        };
        this.A09 = new C13926z(this);
        this.A06 = interfaceC2909nG;
        this.A05 = c2771kz;
        this.A0D = A00();
        this.A0E = A07();
        this.A04 = new FrameLayout(c1643Hi);
        addView(this.A04, new RelativeLayout.LayoutParams(-1, -1));
        this.A07 = A01(c2917nO);
        this.A0B = A04();
        this.A0A = A03();
        this.A0C = A06(c2917nO);
        AbstractC3111qc.A0L(this.A0C);
        A0G();
    }

    private C1586Fc A00() {
        return new C1586Fc(this);
    }

    private C1484Be A01(C2917nO c2917nO) {
        C1484Be c1484Be = new C1484Be(super.A08);
        AbstractC3111qc.A0L(c1484Be);
        c1484Be.setFunnelLoggingHandler(c2917nO);
        c1484Be.getEventBus().A03(this.A08, this.A09);
        if (C2888mv.A1V(super.A08)) {
            c1484Be.setVolume(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        }
        boolean zA1Q = C2888mv.A1Q(super.A08);
        if (A0F[4].length() != 3) {
            throw new RuntimeException();
        }
        A0F[5] = "REocw";
        if (!zA1Q) {
            c1484Be.setOnClickListener(new ViewOnClickListenerC3162rR(this));
        }
        RelativeLayout.LayoutParams videoLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
        videoLayoutParams.addRule(13);
        addView(c1484Be, videoLayoutParams);
        return c1484Be;
    }

    private C1475Av A03() {
        C1475Av c1475Av = new C1475Av(super.A08);
        c1475Av.setTextColor(-1);
        AbstractC3111qc.A0b(c1475Av, false, 12);
        c1475Av.setGravity(17);
        this.A07.A0g(c1475Av);
        return c1475Av;
    }

    private ViewOnClickListenerC1472As A04() {
        ViewOnClickListenerC1472As viewOnClickListenerC1472As = new ViewOnClickListenerC1472As(super.A08);
        this.A07.A0g(viewOnClickListenerC1472As);
        return viewOnClickListenerC1472As;
    }

    private C1471Ar A06(C2917nO c2917nO) {
        C1471Ar c1471Ar = new C1471Ar(super.A08, c2917nO, true);
        c1471Ar.setBackgroundPaintColor(855638016);
        this.A07.A0g(c1471Ar);
        return c1471Ar;
    }

    private C2224c2 A07() {
        return new C2224c2(this, 50, true, new WeakReference(this.A0D), super.A08);
    }

    private void A09() {
        if (getVisibility() == 0 && this.A02 && hasWindowFocus()) {
            this.A0E.A0U();
            return;
        }
        if (super.A05 != null) {
            super.A05.A0P();
        }
        this.A0E.A0V();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1587Fd
    public final void A0E() {
        this.A0E.A0V();
        this.A07.getEventBus().A04(this.A08, this.A09);
        this.A07.A0X();
        if (super.A05 != null) {
            super.A05.A0O();
        }
        C1484Be c1484Be = this.A07;
        String[] strArr = A0F;
        if (strArr[3].length() == strArr[1].length()) {
            throw new RuntimeException();
        }
        A0F[5] = "m52FM";
        AbstractC3111qc.A0K(c1484Be);
        if (this.A00 != null) {
            this.A00.A0p();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1587Fd
    public final void A0F() {
        super.A0F();
        this.A0C.A09();
        this.A03 = true;
        this.A0E.A0U();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1587Fd
    public final void A0G() {
        super.A0G();
        if (C2888mv.A1W(super.A08)) {
            AbstractC3111qc.A0K(this.A0B);
            this.A0B.setLayoutParams(A0D(true, false));
            addView(this.A0B);
        }
        if (C2888mv.A1S(super.A08)) {
            AbstractC3111qc.A0K(this.A0A);
            this.A0A.setLayoutParams(A0D(true, true));
            addView(this.A0A);
        }
        if (C2888mv.A1U(super.A08)) {
            AbstractC3111qc.A0K(this.A0C);
            this.A0C.setLayoutParams(A0D(false, false));
            addView(this.A0C);
        }
        if (super.A04 != null) {
            AbstractC3111qc.A0K(super.A04);
            if (C2888mv.A1U(super.A08)) {
                super.A04.setLayoutParams(AbstractC1587Fd.A0B(this.A0C));
            } else {
                super.A04.setLayoutParams(AbstractC1587Fd.A0B(null));
            }
            addView(super.A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1587Fd
    public final boolean A0H() {
        return this.A07.A0m();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1587Fd
    public final boolean A0I() {
        if (getMeasuredWidth() <= 0 || this.A07.getMeasuredWidth() <= 0) {
            return true;
        }
        int measuredWidth = (int) (((double) (getMeasuredWidth() - this.A07.getMeasuredWidth())) / 2.0d);
        int i = AbstractC1587Fd.A0C;
        int widthGap = AbstractC1587Fd.A0B;
        return measuredWidth > i + (widthGap * 2);
    }

    public final C13916y A0J(String str, String str2, String str3, String str4, String str5) {
        this.A01 = str2;
        this.A07.setVideoURI(this.A05.A0T(str2));
        this.A00 = new C5Z(super.A08, this.A06, this.A07, str);
        if (str3 != null) {
            boolean zIsEmpty = TextUtils.isEmpty(str3);
            String[] strArr = A0F;
            String str6 = strArr[3];
            String cachedVideoUrl = strArr[1];
            if (str6.length() == cachedVideoUrl.length()) {
                throw new RuntimeException();
            }
            A0F[6] = "ntVhLGQ5bthREmR";
            if (!zIsEmpty) {
                new AsyncTaskC1577Et(this.A04, super.A08).A05(this.A04.getHeight(), this.A04.getWidth()).A06(new C1585Fb(this)).A07(str3);
            }
        }
        if (str5 != null) {
            this.A0B.setPlayAccessibilityLabel(str4);
        }
        if (str5 != null) {
            this.A0B.setPauseAccessibilityLabel(str5);
        }
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1587Fd
    public int getMediaViewId() {
        return this.A07.getId();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A02 = true;
        A09();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A02 = false;
        A09();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        A09();
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        A09();
    }
}
