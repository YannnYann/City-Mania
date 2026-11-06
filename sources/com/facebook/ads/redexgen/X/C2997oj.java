package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2997oj extends FrameLayout {
    public static final int A08 = AbstractC3068pv.A0e;
    public C13896w A00;
    public C1489Bj A01;
    public C5Z A02;
    public C1471Ar A03;
    public C5B A04;
    public AnonymousClass51 A05;
    public final C1643Hi A06;
    public final C2917nO A07;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A04(InterfaceC2909nG interfaceC2909nG, String str, Map<String, String> map) {
        A02();
        this.A02 = new C5Z(this.A06, interfaceC2909nG, this.A00, str, null, map);
        if (C2888mv.A20(this.A06)) {
            this.A01 = new C1489Bj(this.A06, interfaceC2909nG, this.A00, str, false, this.A02, map);
        } else {
            this.A01 = null;
        }
    }

    public C2997oj(C1643Hi c1643Hi, C2917nO c2917nO) {
        super(c1643Hi);
        this.A07 = c2917nO;
        this.A06 = c1643Hi;
        setUpView(c1643Hi);
    }

    public final void A01() {
        A0j(true, 10);
    }

    public final void A02() {
        if (this.A01 != null) {
            this.A01.A07();
            this.A01 = null;
        }
        if (this.A02 != null) {
            this.A02.A0p();
            this.A02 = null;
        }
    }

    public final void A03(AbstractC2857mQ abstractC2857mQ) {
        getEventBus().A05(abstractC2857mQ);
    }

    public final void A05(EnumC2349e4 enumC2349e4) {
        A0f(enumC2349e4, 13);
    }

    public final boolean A06() {
        return A0q();
    }

    public C1484Be getSimpleVideoView() {
        return this.A00;
    }

    public float getVolume() {
        return getVolume();
    }

    public void setPlaceholderUrl(String str) {
        this.A04.setImage(str);
    }

    private void setUpPlugins(C1643Hi c1643Hi) {
        A0Z();
        this.A04 = new C5B(c1643Hi);
        A0g(this.A04);
        this.A03 = new C1471Ar(c1643Hi, this.A07);
        A0g(new C5M(c1643Hi));
        A0g(this.A03);
        this.A05 = new AnonymousClass51(c1643Hi, true, this.A07);
        A0g(this.A05);
        A0g(new C1473At(this.A05, EnumC2339du.A03, true, true));
        if (!A0l()) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        layoutParams.setMargins(A08, A08, A08, A08);
        this.A03.setLayoutParams(layoutParams);
        addView(this.A03);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.6w] */
    private void setUpVideo(final C1643Hi c1643Hi) {
        this.A00 = new C1484Be(c1643Hi) { // from class: com.facebook.ads.redexgen.X.6w
            @Override // android.widget.RelativeLayout, android.view.View
            public final void onMeasure(int i, int i2) {
                int newWidthSpec = View.MeasureSpec.getMode(i);
                if (newWidthSpec == 1073741824) {
                    i2 = i;
                } else {
                    int newWidthSpec2 = View.MeasureSpec.getMode(i2);
                    if (newWidthSpec2 == 1073741824) {
                        i = i2;
                    }
                }
                super.onMeasure(i, i2);
            }
        };
        setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        AbstractC3111qc.A0L(this.A00);
        addView(this.A00);
        setOnClickListener(new ViewOnClickListenerC2998ok(this));
    }

    private void setUpView(C1643Hi c1643Hi) {
        setUpVideo(c1643Hi);
        setUpPlugins(c1643Hi);
    }

    public void setVideoURI(String str) {
        setVideoURI(str);
    }

    public void setVolume(float f) {
        setVolume(f);
        this.A03.A09();
    }
}
