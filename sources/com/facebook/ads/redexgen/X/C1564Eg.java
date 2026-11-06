package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.RelativeLayout;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Eg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1564Eg extends AbstractC3370un implements InterfaceC3063pq {
    public static String[] A0H = {"h11dznws46etjZ", "3ZjkZVkxzq7vQjbUeWnO7fMwFQlVPHa", "24u0N3z4V6D", "xxt35C8jcsfoTiPs3zZnPs", "fEEjQOnwgD3kD8gyhX1RNVoyr9lY", "2cpHtTlhqkT9PtMCAMIfpqjEhII6", "SwjnupmK68g6YR92ykF2iF", "LrklEcA9y7ZDe6VQkPlmuIfDlA0BSpTV"};
    public static final int A0I = (int) (AbstractC3070px.A02 * 80.0f);
    public float A00;
    public C3358ub A01;
    public C3386v3 A02;
    public C3413vU A03;
    public C2546hI A04;
    public boolean A05;
    public final Handler A06;
    public final View A07;
    public final RelativeLayout A08;
    public final RelativeLayout A09;
    public final LA A0A;
    public final AbstractC3137r2 A0B;
    public final InterfaceC3144r9 A0C;
    public final AbstractC1576Es A0D;
    public final AtomicBoolean A0E;
    public final boolean A0F;
    public final C3065ps A0G;

    public C1564Eg(C3374ur c3374ur) {
        super(c3374ur, true);
        this.A06 = new Handler(Looper.getMainLooper());
        this.A0F = false;
        this.A0E = new AtomicBoolean(false);
        this.A05 = true;
        this.A0C = c3374ur.A0C();
        this.A0B = c3374ur.A0B();
        this.A0A = c3374ur.A05();
        this.A0G = C3065ps.A00(c3374ur.A06(), this.A0A, this);
        this.A09 = new RelativeLayout(c3374ur.A06());
        this.A0D = A00(c3374ur, this.A0A.A32(), this.A0A.A1X());
        this.A08 = new RelativeLayout(c3374ur.A06());
        AbstractC3111qc.A0L(this.A08);
        AbstractC3111qc.A0L(this.A09);
        this.A07 = c3374ur.A02();
        A04();
        this.A09.addView(this.A08, new RelativeLayout.LayoutParams(-2, -2));
        addView(this.A09, new RelativeLayout.LayoutParams(-1, -1));
        String strA08 = this.A0A.A32().A0I().A08();
        if (strA08 != null) {
            AbstractC3353uW.A00(c3374ur.A06(), this.A09, strA08);
        }
        this.A0D.setInfo(this.A0A.A32().A0J(), this.A0A.A32().A0K(), this.A0A.A37(), this.A0A.A35().A01(), null, null);
        A03();
        super.A08.A06().A0F().AM1(AbstractC3046pZ.A00(this.A00), getResources().getConfiguration().orientation, false, true, AbstractC2386ef.A0E(super.A08.A04()));
    }

    private AbstractC1576Es A00(C3374ur c3374ur, C2420fE c2420fE, String str) {
        float fA0M;
        String strA08 = c2420fE.A0I().A08();
        if (strA08 != null) {
            fA0M = new C2771kz(c3374ur.A06()).A0M(strA08);
        } else {
            fA0M = -1.0f;
        }
        this.A00 = fA0M;
        AbstractC1576Es abstractC1576EsA03 = new C3354uX(this.A00, str, c3374ur.A06(), getColors(), c3374ur.A05(), c3374ur.A0C(), getCtaButton(), A0I, false, c3374ur.A07(), c3374ur.A0F(), c3374ur.A0A(), c3374ur.A0E(), c3374ur.A08(), false).A03();
        if (c3374ur.A0G() != null) {
            abstractC1576EsA03.setChainedAdInfo(c3374ur.A0G());
        }
        return abstractC1576EsA03;
    }

    private void A01() {
        this.A02 = new C3386v3(super.A08.A06(), this.A0A, super.A08.A08(), this.A06, super.A08.A0C());
        this.A02.A0K(false);
        addView(this.A02.A0E(getCtaButton()));
    }

    private void A02() {
        AbstractC3111qc.A0e(this.A0D);
        EnumC2960o7 enumC2960o7A00 = EnumC2960o7.A00(this.A0A.A1a());
        if (enumC2960o7A00 == EnumC2960o7.A08) {
            if (this.A03 != null) {
                return;
            }
            this.A03 = new C3413vU(super.A08.A06(), this.A0A, super.A08.A08(), this.A06, super.A08.A0C(), this.A0B);
            addView(this.A03.A0K(getCtaButton()), new RelativeLayout.LayoutParams(-1, -1));
            return;
        }
        if (enumC2960o7A00 == EnumC2960o7.A05) {
            if (this.A01 != null) {
                return;
            }
            this.A01 = new C3358ub(super.A08.A06(), this.A0A, super.A08.A08(), this.A06, super.A08.A0C());
            addView(this.A01.A0D(getCtaButton()), new RelativeLayout.LayoutParams(-1, -1));
            return;
        }
        if (!this.A0A.A32().A0L().A03().isEmpty()) {
            this.A04 = new C2546hI(super.A08.A06(), this.A0A, this.A0C, getCtaButton(), this.A06, super.A08.A08());
            this.A04.A0f(false);
            RelativeLayout.LayoutParams infoParams = new RelativeLayout.LayoutParams(-1, -1);
            addView(this.A04.A0W(), infoParams);
            return;
        }
        A01();
    }

    private void A03() {
        AbstractC3111qc.A0K(this.A0D);
        addView(this.A0D, new RelativeLayout.LayoutParams(-1, -1));
        this.A0D.setVisibility(0);
        A05(getResources().getConfiguration().orientation);
        this.A0D.A0u(getResources().getConfiguration().orientation);
        this.A0D.bringToFront();
    }

    private void A04() {
        if (this.A07 == null) {
            return;
        }
        this.A08.addView(this.A07, new RelativeLayout.LayoutParams(-2, -2));
        AbstractC3111qc.A0L(this.A07);
        C3064pr c3064prA02 = this.A0G.A02(this.A0A);
        super.A08.A06().A0H().A00(c3064prA02.A01);
        if (c3064prA02.A00) {
            this.A07.setOnClickListener(new ViewOnClickListenerC3361ue(this));
        } else {
            if (!C2888mv.A1J(getAdContextWrapper())) {
                return;
            }
            AbstractC3306tl.A00(this.A07, C2888mv.A1K(getAdContextWrapper()), new ViewOnClickListenerC3362uf(this));
        }
    }

    private void A05(int i) {
        A06(i);
        A07(i, this.A09, this.A08);
    }

    private void A06(int i) {
        if (this.A07 == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A07.getLayoutParams();
        layoutParams.removeRule(13);
        layoutParams.removeRule(10);
        layoutParams.removeRule(9);
        if (i == 1) {
            layoutParams.width = -1;
            layoutParams.height = -2;
            layoutParams.addRule(10);
        } else {
            layoutParams.width = -2;
            layoutParams.height = -1;
            if (AbstractC3046pZ.A05(this.A00)) {
                layoutParams.addRule(13);
            } else {
                layoutParams.addRule(9);
            }
        }
        this.A07.setLayoutParams(layoutParams);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void A07(int r5, android.view.ViewGroup r6, android.widget.RelativeLayout r7) {
        /*
            r4 = this;
            com.facebook.ads.redexgen.X.Es r0 = r4.A0D
            boolean r0 = r0 instanceof com.facebook.ads.redexgen.X.C13836q
            if (r0 != 0) goto L25
            com.facebook.ads.redexgen.X.Es r3 = r4.A0D
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1564Eg.A0H
            r0 = 1
            r1 = r2[r0]
            r0 = 0
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L7b
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1564Eg.A0H
            java.lang.String r1 = "B1dyWth12L6yWah5"
            r0 = 2
            r2[r0] = r1
            boolean r0 = r3 instanceof com.facebook.ads.redexgen.X.C13826p
            if (r0 == 0) goto L4f
        L25:
            com.facebook.ads.redexgen.X.Es r0 = r4.A0D
            com.facebook.ads.redexgen.X.AbstractC3111qc.A0K(r0)
            r0 = -1
            android.widget.RelativeLayout$LayoutParams r2 = new android.widget.RelativeLayout$LayoutParams
            r2.<init>(r0, r0)
            android.content.res.Resources r0 = r4.getResources()
            android.content.res.Configuration r0 = r0.getConfiguration()
            int r1 = r0.orientation
            r0 = 2
            if (r1 != r0) goto L6f
            r1 = 1
            int r0 = r7.getId()
            r2.addRule(r1, r0)
            com.facebook.ads.redexgen.X.Es r0 = r4.A0D
            r0.setLayoutParams(r2)
            com.facebook.ads.redexgen.X.Es r0 = r4.A0D
            r6.addView(r0)
        L4f:
            com.facebook.ads.redexgen.X.Es r0 = r4.A0D
            r0.A0l(r5)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1564Eg.A0H
            r0 = 7
            r1 = r1[r0]
            r0 = 0
            char r1 = r1.charAt(r0)
            r0 = 97
            if (r1 == r0) goto L75
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1564Eg.A0H
            java.lang.String r1 = "wBoil6AAawdX4Jy27KUXy3SWPNH5B"
            r0 = 3
            r2[r0] = r1
            com.facebook.ads.redexgen.X.Es r0 = r4.A0D
            r0.A0y(r6, r7, r5)
            return
        L6f:
            com.facebook.ads.redexgen.X.Es r0 = r4.A0D
            r4.addView(r0, r2)
            goto L4f
        L75:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L7b:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1564Eg.A07(int, android.view.ViewGroup, android.widget.RelativeLayout):void");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final boolean A0A() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final boolean A0H() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final EnumC2383ec A1P(String str) {
        return this.A0D.getCTAButton().A0E(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final void A1Q() {
        super.A1Q();
        this.A06.removeCallbacksAndMessages(null);
        this.A0D.A0j();
        if (this.A03 != null) {
            this.A03.A0L();
        }
        if (this.A01 != null) {
            this.A01.A0E();
        }
        if (this.A04 != null) {
            this.A04.A0Y();
        }
        if (this.A02 != null) {
            this.A02.A0H();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final void A1X(C2420fE c2420fE, String str, double d, Bundle bundle) {
        super.A1X(c2420fE, str, d, bundle);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final void A1b(boolean z) {
        super.A1b(z);
        this.A0D.A0m(z);
        if (this.A03 != null) {
            this.A03.A0N(z);
        }
        if (this.A01 != null) {
            this.A01.A0G(z);
        }
        if (this.A04 != null) {
            this.A04.A0e(z);
        }
        if (this.A02 != null) {
            this.A02.A0J(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final boolean A1d() {
        return this.A0A.A32().A0W();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final boolean A1g() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final boolean A1i(boolean z) {
        if (this.A0A.A32().A0W() && !this.A0E.get()) {
            A1j();
            return true;
        }
        return false;
    }

    public final void A1j() {
        this.A0E.set(true);
        AbstractC3111qc.A0e(this.A08, this.A0D, this.A09);
        AbstractC3111qc.A0M(this.A0B);
        AbstractC3111qc.A0X(this);
        A02();
        this.A05 = true;
        if (super.A08.A0D() != null) {
            super.A08.A0D().AH3(true);
            if (this.A0B != null && this.A0A.A32().A0L().A00() > 0) {
                this.A05 = false;
                if (this.A0A.A3N()) {
                    this.A0B.setToolbarActionMode(8);
                } else {
                    this.A0B.setToolbarActionMode(2);
                }
                new Handler(Looper.getMainLooper()).postDelayed(new RunnableC3363ug(this), this.A0A.A32().A0L().A00());
            }
        }
    }

    public final boolean A1k() {
        return this.A0E.get();
    }

    public final boolean A1l() {
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public int getCloseButtonStyle() {
        if (A1d() && !this.A0E.get()) {
            return 1;
        }
        return super.getCloseButtonStyle();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.A03 != null && this.A0E.get()) {
            this.A03.A0M(configuration.orientation);
            return;
        }
        if (this.A01 != null && this.A0E.get()) {
            this.A01.A0F(configuration.orientation);
            return;
        }
        C2546hI c2546hI = this.A04;
        if (A0H[2].length() == 1) {
            throw new RuntimeException();
        }
        A0H[3] = "1nPVrd0jWGY7";
        if (c2546hI != null && this.A0E.get()) {
            this.A04.A0a(configuration.orientation);
        } else {
            A05(configuration.orientation);
        }
    }
}
