package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class FC extends AbstractC3209sC {
    public static byte[] A05;
    public static final int A06;
    public static final int A07;
    public static final int A08;
    public final ImageView A00;
    public final LinearLayout A01;
    public final ScrollView A02;
    public final C2504ga A03;
    public final C1643Hi A04;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 55);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{53, 22, 20, 28, 105, 70, 69, 89, 79, 10, 107, 78, 10, 120, 79, 90, 69, 88, 94, 67, 68, 77};
    }

    static {
        A01();
        A08 = (int) (AbstractC3070px.A02 * 8.0f);
        A07 = (int) (AbstractC3070px.A02 * 10.0f);
        A06 = (int) (AbstractC3070px.A02 * 44.0f);
    }

    public FC(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, String str) {
        super(c1643Hi, interfaceC2909nG, str);
        this.A04 = c1643Hi;
        this.A03 = AbstractC2505gb.A00(this.A04.A02());
        this.A00 = new ImageView(getContext());
        this.A00.setPadding(A07, A07, A07, A07);
        this.A00.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A06, A06);
        layoutParams.gravity = 3;
        this.A00.setLayoutParams(layoutParams);
        this.A02 = new ScrollView(getContext());
        this.A02.setFillViewport(true);
        AbstractC3111qc.A0O(this.A02, -218103809);
        this.A01 = new LinearLayout(getContext());
        this.A01.setOrientation(1);
        this.A01.setPadding(A08, A08, A08, A08);
        this.A02.addView(this.A01, new FrameLayout.LayoutParams(-1, -2));
        addView(this.A02, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3209sC
    public final void A0O() {
        this.A00.setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.CROSS));
        this.A00.setOnClickListener(new ViewOnClickListenerC3228sV(this));
        this.A00.setContentDescription(A00(4, 18, 29));
        C3213sG c3213sG = new C3213sG(this.A04);
        c3213sG.setData(this.A03.A0H(), EnumC3122qn.HIDE_AD);
        c3213sG.setOnClickListener(new ViewOnClickListenerC3229sW(this, c3213sG));
        C3213sG c3213sG2 = new C3213sG(this.A04);
        c3213sG2.setData(this.A03.A0L(), EnumC3122qn.REPORT_AD);
        c3213sG2.setOnClickListener(new ViewOnClickListenerC3230sX(this, c3213sG2));
        C3213sG c3213sG3 = new C3213sG(this.A04);
        c3213sG3.setData(this.A03.A0M(), EnumC3122qn.AD_CHOICES_ICON);
        c3213sG3.setOnClickListener(new ViewOnClickListenerC3231sY(this, c3213sG3));
        LinearLayout.LayoutParams menuParams = new LinearLayout.LayoutParams(-2, -2);
        menuParams.setMargins(A08, A08, A08, A08);
        menuParams.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, 0);
        layoutParams.gravity = 17;
        layoutParams.weight = 1.0f;
        AbstractC3111qc.A0X(this.A01);
        this.A01.removeAllViews();
        this.A01.addView(this.A00);
        this.A01.addView(linearLayout, layoutParams);
        linearLayout.addView(c3213sG, menuParams);
        linearLayout.addView(c3213sG2, menuParams);
        linearLayout.addView(c3213sG3, menuParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3209sC
    public final void A0P() {
        AbstractC3111qc.A0J(this);
        AbstractC3111qc.A0K(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3209sC
    public final void A0Q(C2508ge c2508ge, EnumC2506gc enumC2506gc) {
        String strA0H;
        EnumC3122qn enumC3122qn;
        int i;
        this.A00.setOnClickListener(null);
        if (enumC2506gc == EnumC2506gc.A05) {
            strA0H = this.A03.A0F();
            enumC3122qn = EnumC3122qn.REPORT_AD;
            i = -552389;
        } else {
            strA0H = this.A03.A0H();
            enumC3122qn = EnumC3122qn.HIDE_AD;
            i = -13272859;
        }
        C3206s9 c3206s9A0H = new C3206s9(this.A04, this.A0D).A0H(strA0H);
        String title = this.A03.A0D();
        C3206s9 c3206s9A0G = c3206s9A0H.A0G(title);
        String title2 = c2508ge.A04();
        C3207sA adHiddenView = c3206s9A0G.A0E(title2).A0J(false).A0D(enumC3122qn).A0C(i).A0K(false).A0I(false).A0L();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.gravity = 17;
        layoutParams.weight = 1.0f;
        AbstractC3111qc.A0X(this.A01);
        this.A02.fullScroll(33);
        this.A01.removeAllViews();
        this.A01.addView(adHiddenView, layoutParams);
        super.A0Q(c2508ge, enumC2506gc);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3209sC
    public final void A0R(C2508ge c2508ge, EnumC2506gc enumC2506gc) {
        boolean isReportFlow = enumC2506gc == EnumC2506gc.A05;
        C3227sU c3227sU = new C3227sU(this.A04, c2508ge, this.A0D, isReportFlow ? EnumC3122qn.REPORT_AD : EnumC3122qn.HIDE_AD);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, 0);
        layoutParams.gravity = 17;
        layoutParams.weight = 1.0f;
        this.A00.setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.BACK_ARROW));
        this.A00.setOnClickListener(new ViewOnClickListenerC3232sZ(this));
        this.A00.setContentDescription(A00(0, 4, 64));
        AbstractC3111qc.A0X(this.A01);
        this.A02.fullScroll(33);
        this.A01.removeAllViews();
        this.A01.addView(this.A00);
        this.A01.addView(c3227sU, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3209sC
    public final boolean A0S() {
        return true;
    }
}
