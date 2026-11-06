package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.text.NumberFormat;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Eh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1565Eh extends AbstractC3309to {
    public static byte[] A0J;
    public static String[] A0K = {"ZYFZvgakVe", "Z9juamcNffZ", "L6NhnuluGVbfOuIZp07EBLc1k7rVfOba", "poGipFcmqzgO1AN9d1VwktKUuwbeuE2x", "1MA0bi3k", "zUZ", "l0mlyabDLiJh1QvHe0VixDkOpEP8aZzg", "KStQaqdBmF0CfboN9Wjc4"};
    public static final int A0L;
    public static final int A0M;
    public static final int A0N;
    public static final int A0O;
    public static final int A0P;
    public static final int A0Q;
    public static final int A0R;
    public static final int A0S;
    public static final int A0T;
    public static final int A0U;
    public static final int A0V;
    public int A00;
    public int A01;
    public LinearLayout A02;
    public TextView A03;
    public TextView A04;
    public TextView A05;
    public C2427fL A06;
    public C2429fN A07;
    public C2431fP A08;
    public C3348uR A09;
    public boolean A0A;
    public boolean A0B;
    public final LinearLayout A0C;
    public final RelativeLayout A0D;
    public final RelativeLayout A0E;
    public final TextView A0F;
    public final C1643Hi A0G;
    public final String A0H;
    public final boolean A0I;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0J, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 99);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A04() {
        this.A0D.removeAllViews();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.bottomMargin = A0O;
        this.A0D.setLayoutParams(layoutParams);
        AbstractC3111qc.A0L(this.A0D);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(super.A04, super.A04);
        layoutParams2.addRule(15);
        layoutParams2.addRule(9);
        this.A0D.addView(super.A09, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.leftMargin = A0P;
        layoutParams3.addRule(1, super.A09.getId());
        layoutParams3.addRule(15);
        this.A0D.addView(this.A0E, layoutParams3);
        this.A0E.removeAllViews();
        AbstractC3111qc.A0L(this.A05);
        this.A05.setLayoutParams(AbstractC3309to.A0C);
        this.A05.setTextColor(this.A0B ? this.A07.A07(true) : -1);
        AbstractC3111qc.A0b(this.A05, true, 18);
        this.A0E.addView(this.A05);
        this.A02.setOrientation(0);
        this.A02.setGravity(16);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, A0Q);
        layoutParams4.topMargin = A0P / 2;
        layoutParams4.addRule(3, this.A05.getId());
        this.A0E.addView(this.A02, layoutParams4);
        this.A02.removeAllViews();
        this.A09.setGravity(16);
        this.A02.addView(this.A09, new LinearLayout.LayoutParams(-2, -1));
        this.A04.setTextColor(this.A0B ? this.A07.A07(true) : -1);
        this.A04.setGravity(16);
        this.A04.setIncludeFontPadding(false);
        AbstractC3111qc.A0b(this.A04, false, 14);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams5.leftMargin = A0P;
        this.A02.addView(this.A04, layoutParams5);
    }

    public static void A09() {
        A0J = new byte[]{-111, -20};
    }

    static {
        A09();
        A0U = AbstractC2526gx.A02(-1, 77);
        A0O = AbstractC3068pv.A0c;
        A0P = AbstractC3068pv.A0y;
        A0L = AbstractC3068pv.A0j;
        A0N = (int) (AbstractC3070px.A02 * 144.0f);
        A0M = (int) (AbstractC3070px.A02 * 48.0f);
        A0Q = (int) (AbstractC3070px.A02 * 16.0f);
        A0V = (int) (AbstractC3070px.A02 * 14.0f);
        A0R = (int) (C2515gm.A08 * 21.0f);
        A0S = (int) (C2515gm.A08 * 12.0f);
        A0T = (int) (C2515gm.A08 * 10.0f);
    }

    public C1565Eh(C1643Hi c1643Hi, ViewOnClickListenerC1569El viewOnClickListenerC1569El, int i, boolean z, C2429fN c2429fN, boolean z2, String str, InterfaceC2909nG interfaceC2909nG, InterfaceC3144r9 interfaceC3144r9, C2224c2 c2224c2, C3102qT c3102qT, LA la) {
        this(c1643Hi, viewOnClickListenerC1569El, i, z, c2429fN, false, str, interfaceC2909nG, interfaceC3144r9, c2224c2, c3102qT, la.A33(), la.A2W(), la.A1f(), la.A2g(), la.A1n());
    }

    public C1565Eh(C1643Hi c1643Hi, ViewOnClickListenerC1569El viewOnClickListenerC1569El, int i, boolean z, C2429fN c2429fN, boolean z2, String str, InterfaceC2909nG interfaceC2909nG, InterfaceC3144r9 interfaceC3144r9, C2224c2 c2224c2, C3102qT c3102qT, C2435fT c2435fT, boolean z3, String str2, boolean z4, String str3) {
        super(c1643Hi, viewOnClickListenerC1569El, i, c2429fN, z2, str, interfaceC2909nG, interfaceC3144r9, c2224c2, c3102qT, c2435fT, z3, str2);
        this.A00 = 0;
        this.A01 = 0;
        this.A0A = true;
        this.A0G = c1643Hi;
        this.A0H = str3;
        super.A09.setFullCircleCorners(z);
        setPadding(A0O, A0O, A0O, A0L);
        this.A0D = new RelativeLayout(getContext());
        this.A05 = new TextView(getContext());
        this.A02 = new LinearLayout(getContext());
        this.A09 = new C3348uR(this.A0G, A0V, 5, A0U, -1);
        this.A0E = new RelativeLayout(getContext());
        this.A0C = new LinearLayout(getContext());
        this.A04 = new TextView(getContext());
        this.A03 = new TextView(getContext());
        super.A06.addView(this.A0D);
        super.A06.addView(this.A0C);
        this.A0F = new TextView(getContext());
        this.A07 = c2429fN;
        this.A0I = C2888mv.A16(c1643Hi);
        AbstractC3111qc.A0V(this, c1643Hi);
        this.A0B = C2888mv.A2e(this.A0G);
        A0A();
        if (z4) {
            this.A03.setVisibility(8);
            this.A0C.setVisibility(8);
        }
    }

    private GradientDrawable A00(int i, float f) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setCornerRadius(f);
        drawable.setColor(i);
        return drawable;
    }

    private void A02() {
        super.A08.setPadding(0, 0, 0, 0);
        super.A08.setLayoutParams(new LinearLayout.LayoutParams(-1, A0M));
    }

    private void A03() {
        LinearLayout.LayoutParams layoutParams;
        this.A0C.setOrientation(1);
        this.A0C.setPadding(0, 0, 0, A0O);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(3, this.A0D.getId());
        this.A0C.setLayoutParams(layoutParams2);
        this.A0C.removeAllViews();
        this.A03.setMaxLines(2);
        this.A03.setEllipsize(TextUtils.TruncateAt.END);
        this.A03.setGravity(16);
        this.A03.setTextColor(this.A0B ? this.A07.A06(true) : -1);
        if (A0K[3].charAt(12) != '1') {
            throw new RuntimeException();
        }
        A0K[3] = "GrwjTtxURhrO1EQl6RsuguGKXpAC8Gmx";
        AbstractC3111qc.A0b(this.A03, false, 16);
        if (this.A0I) {
            layoutParams = new LinearLayout.LayoutParams(-2, -2);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-1, -2);
        }
        LinearLayout linearLayout = this.A0C;
        String[] strArr = A0K;
        if (strArr[2].charAt(17) != strArr[6].charAt(17)) {
            throw new RuntimeException();
        }
        A0K[1] = "ewlwa2SJNlK21mEN5Hlfw30tD2ecrw";
        linearLayout.addView(this.A03, layoutParams);
    }

    private void A05() {
        if (super.A01 != null) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            super.A01.setPadding(0, 0, 0, A0S);
            super.A01.setText(super.A02);
            super.A01.setTextColor(-1);
            AbstractC3111qc.A0b(super.A01, false, 15);
            super.A01.setLayoutParams(layoutParams);
        }
    }

    private void A06() {
        if (super.A00 != null) {
            super.A00.removeAllViews();
            super.A00.setOrientation(1);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            layoutParams.setMargins(0, A0R, 0, A0R);
            super.A00.setGravity(17);
            super.A00.setPadding(A0S, A0S, A0S, A0S);
            super.A00.setLayoutParams(layoutParams);
            AbstractC3111qc.A0W(super.A00, A00(-1121112787, A0T));
            A05();
            A02();
            if (super.A01 != null) {
                LinearLayout linearLayout = super.A00;
                TextView textView = super.A01;
                String[] strArr = A0K;
                if (strArr[2].charAt(17) != strArr[6].charAt(17)) {
                    throw new RuntimeException();
                }
                A0K[5] = "ATO";
                linearLayout.addView(textView);
            }
            super.A00.addView(super.A08);
        }
    }

    private void A07() {
        LinearLayout.LayoutParams layoutParams;
        this.A0F.setMaxLines(1);
        this.A0F.setEllipsize(TextUtils.TruncateAt.END);
        this.A0F.setGravity(17);
        this.A0F.setTextColor(this.A0B ? this.A07.A07(true) : -1);
        this.A0F.setAllCaps(true);
        AbstractC3111qc.A0b(this.A0F, false, 12);
        new LinearLayout.LayoutParams(-1, -2);
        if (this.A0I) {
            layoutParams = new LinearLayout.LayoutParams(-2, -2);
        } else {
            layoutParams = new LinearLayout.LayoutParams(-1, -2);
        }
        layoutParams.topMargin = A0O;
        this.A0F.setLayoutParams(layoutParams);
    }

    private void A08() {
        if (this.A06 == null) {
            return;
        }
        this.A05.setText(this.A06.A0H());
        this.A03.setText(this.A06.A04());
        String str = this.A0H;
        boolean z = (str == null || str.isEmpty()) ? false : true;
        if (z) {
            this.A0F.setAllCaps(false);
            this.A0F.setText(str);
        } else {
            TextView textView = this.A0F;
            if (A0K[3].charAt(12) != '1') {
                A0K[4] = "PRqEppX5";
                textView.setAllCaps(true);
                TextView textView2 = this.A0F;
                String promoCodeTitle = this.A06.A0F();
                textView2.setText(promoCodeTitle);
            } else {
                A0K[5] = "U7U";
                textView.setAllCaps(true);
                TextView textView3 = this.A0F;
                String promoCodeTitle2 = this.A06.A0F();
                textView3.setText(promoCodeTitle2);
            }
        }
        String promoCodeTitle3 = this.A08.A05();
        if (TextUtils.isEmpty(promoCodeTitle3)) {
            AbstractC3111qc.A0I(super.A08);
        }
        if (!z) {
            String promoCodeTitle4 = this.A06.A0F();
            if (TextUtils.isEmpty(promoCodeTitle4)) {
                AbstractC3111qc.A0I(this.A0F);
            }
        }
        String strA0D = this.A06.A0D();
        String promoCodeTitle5 = A0K[4];
        if (promoCodeTitle5.length() != 8) {
            throw new RuntimeException();
        }
        A0K[4] = "KlO90K15";
        if (TextUtils.isEmpty(strA0D)) {
            this.A02.setVisibility(8);
            return;
        }
        this.A02.setVisibility(0);
        C3348uR c3348uR = this.A09;
        String promoCodeTitle6 = this.A06.A0D();
        c3348uR.setRating(Float.parseFloat(promoCodeTitle6));
        String promoCodeTitle7 = this.A06.A0A();
        if (promoCodeTitle7 == null) {
            return;
        }
        TextView textView4 = this.A04;
        StringBuilder sb = new StringBuilder();
        String promoCodeTitle8 = A01(0, 1, 6);
        StringBuilder sbAppend = sb.append(promoCodeTitle8);
        NumberFormat numberInstance = NumberFormat.getNumberInstance();
        String promoCodeTitle9 = this.A06.A0A();
        StringBuilder sbAppend2 = sbAppend.append(numberInstance.format(Integer.parseInt(promoCodeTitle9)));
        String promoCodeTitle10 = A01(1, 1, 96);
        textView4.setText(sbAppend2.append(promoCodeTitle10).toString());
    }

    private final void A0A() {
        removeAllViews();
        if (this.A0A) {
            A0C();
        } else {
            A0B();
        }
    }

    private final void A0B() {
        setWeightSum(5.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.weight = !super.A03 ? 4.0f : 3.0f;
        layoutParams.bottomMargin = A0L - A0O;
        super.A06.setLayoutParams(layoutParams);
        AbstractC3111qc.A0K(super.A06);
        addView(super.A06);
        if (!super.A03) {
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, A0M);
            layoutParams2.bottomMargin = A0L / 2;
            layoutParams2.weight = 1.0f;
            layoutParams2.gravity = 80;
            super.A08.setLayoutParams(layoutParams2);
            super.A08.setMinWidth(A0N);
            AbstractC3111qc.A0K(super.A08);
            addView(super.A08);
        } else if (super.A00 != null) {
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, -2);
            layoutParams3.weight = 2.0f;
            super.A00.setLayoutParams(layoutParams3);
            super.A00.requestLayout();
        }
        AbstractC3111qc.A0K(this.A0F);
        LinearLayout.LayoutParams socialContextParams = new LinearLayout.LayoutParams(-1, -1);
        socialContextParams.topMargin = 0;
        socialContextParams.bottomMargin = A0P;
        this.A0C.addView(this.A0F, socialContextParams);
        this.A0C.setPadding(0, 0, 0, 0);
        this.A0F.setGravity(3);
    }

    private final void A0C() {
        super.A06.setLayoutParams(AbstractC3309to.A0C);
        A04();
        A03();
        if (!super.A03) {
            A02();
        } else {
            A06();
        }
        A07();
        A08();
        AbstractC3111qc.A0K(super.A06);
        if (!super.A03) {
            ViewOnClickListenerC1569El viewOnClickListenerC1569El = super.A08;
            if (A0K[4].length() != 8) {
                throw new RuntimeException();
            }
            A0K[4] = "zaXcM54b";
            AbstractC3111qc.A0K(viewOnClickListenerC1569El);
        }
        addView(super.A06);
        if (!super.A03) {
            ViewOnClickListenerC1569El viewOnClickListenerC1569El2 = super.A08;
            if (A0K[0].length() == 17) {
                throw new RuntimeException();
            }
            String[] strArr = A0K;
            strArr[2] = "NZcjAgexlZrKuNflL0XnKw9N6dxGExbL";
            strArr[6] = "FeYbzRWfRAUsD40JO0HontMqMj3Ps5Kr";
            addView(viewOnClickListenerC1569El2);
        } else if (super.A00 != null) {
            addView(super.A00);
        }
        AbstractC3111qc.A0K(this.A0F);
        addView(this.A0F);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3309to
    public final void A0k() {
        super.A0k();
        this.A09.setOnClickListener(super.A05);
        this.A0F.setOnClickListener(super.A05);
        this.A04.setOnClickListener(super.A05);
        this.A03.setOnClickListener(super.A05);
        this.A05.setOnClickListener(super.A05);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3309to
    public final void A0l(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        this.A0A = z;
        setOrientation(this.A0A ? 1 : 0);
        A0A();
        bringToFront();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3309to
    public final View getExpandableLayout() {
        return this.A0C;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.A00 == 0) {
            this.A00 = this.A03.getHeight();
            this.A01 = this.A0F.getHeight();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3309to
    public void setInfo(C2427fL c2427fL, C2431fP c2431fP, String str, String str2, InterfaceC3081q8 interfaceC3081q8, InterfaceC3328u7 interfaceC3328u7) {
        super.setInfo(c2427fL, c2431fP, str, str2, interfaceC3081q8, interfaceC3328u7);
        this.A06 = c2427fL;
        this.A08 = c2431fP;
        A08();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3309to
    public void setTitleMaxLines(int i) {
        this.A05.setMaxLines(i);
        this.A05.setEllipsize(TextUtils.TruncateAt.END);
    }
}
