package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Er, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1575Er extends C2515gm {
    public static byte[] A07;
    public static final int A08;
    public static final int A09;
    public static final int A0A;
    public static final int A0B;
    public static final int A0C;
    public final LinearLayout A00;
    public final RelativeLayout A01;
    public final LA A02;
    public final C1643Hi A03;
    public final InterfaceC2909nG A04;
    public final C3102qT A05;
    public final InterfaceC3144r9 A06;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 50);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A02() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A03);
        C3346uP c3346uP = new C3346uP(this.A03);
        new AsyncTaskC1577Et(c3346uP, this.A03).A05(A0C, A0C).A07(this.A02.A35().A01());
        c3346uP.setFullCircleCorners(true);
        AbstractC3111qc.A0O(c3346uP, 0);
        AbstractC3111qc.A0L(c3346uP);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0C, A0C);
        layoutParams.setMargins(A0B, A0B, A0B, A0B);
        layoutParams.addRule(14);
        relativeLayout.addView(c3346uP, layoutParams);
        TextView textView = new TextView(this.A03);
        AbstractC3111qc.A0L(textView);
        textView.setTextColor(this.A02.A31().A01().A07(true));
        textView.setText(this.A02.A32().A0J().A0H());
        textView.setGravity(17);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(14);
        layoutParams2.addRule(3, c3346uP.getId());
        relativeLayout.addView(textView, layoutParams2);
        LinearLayout linearLayout = new LinearLayout(this.A03);
        AbstractC3111qc.A0L(linearLayout);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.setMargins(A0B, 0, A0B, A0B);
        layoutParams3.addRule(14);
        layoutParams3.addRule(3, textView.getId());
        relativeLayout.addView(linearLayout, layoutParams3);
        C3348uR c3348uR = new C3348uR(this.A03, A0A, 5, A09, -1);
        c3348uR.setGravity(16);
        linearLayout.addView(c3348uR, new LinearLayout.LayoutParams(-2, -1));
        TextView textView2 = new TextView(this.A03);
        textView2.setTextColor(this.A02.A31().A01().A07(true));
        textView2.setGravity(16);
        textView2.setIncludeFontPadding(false);
        AbstractC3111qc.A0b(textView2, false, 14);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -1);
        layoutParams4.leftMargin = A08;
        linearLayout.addView(textView2, layoutParams4);
        if (TextUtils.isEmpty(this.A02.A32().A0J().A0D())) {
            linearLayout.setVisibility(8);
        } else {
            linearLayout.setVisibility(0);
            c3348uR.setRating(Float.parseFloat(this.A02.A32().A0J().A0D()));
            if (this.A02.A32().A0J().A0A() != null) {
                textView2.setText(A00(0, 1, 20) + NumberFormat.getNumberInstance().format(Integer.parseInt(this.A02.A32().A0J().A0A())) + A00(1, 1, 41));
            }
        }
        TextView textView3 = new TextView(this.A03);
        textView3.setTextColor(this.A02.A31().A01().A07(true));
        textView3.setText(this.A02.A32().A0J().A04());
        textView3.setGravity(17);
        textView3.setPadding(A0B, A0B, A0B, A0B);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams5.addRule(14);
        layoutParams5.addRule(3, linearLayout.getId());
        relativeLayout.addView(textView3, layoutParams5);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-1, -1);
        layoutParams6.gravity = 4;
        layoutParams6.weight = 0.8f;
        this.A00.addView(relativeLayout, layoutParams6);
    }

    public static void A03() {
        A07 = new byte[]{110, -124};
    }

    static {
        A03();
        A0B = (int) (C2515gm.A08 * 12.0f);
        A0C = (int) (C2515gm.A08 * 84.0f);
        A0A = (int) (C2515gm.A08 * 14.0f);
        A08 = AbstractC3068pv.A0y;
        A09 = AbstractC2526gx.A02(-1, 77);
    }

    public C1575Er(C1643Hi c1643Hi, LA la, InterfaceC2909nG interfaceC2909nG, InterfaceC3144r9 interfaceC3144r9) {
        super(c1643Hi);
        this.A05 = new C3102qT();
        this.A03 = c1643Hi;
        this.A02 = la;
        this.A04 = interfaceC2909nG;
        this.A06 = interfaceC3144r9;
        this.A05.A05();
        setRadius(20.0f);
        setMaxCardElevation(75.0f);
        this.A01 = new RelativeLayout(c1643Hi);
        String strA08 = la.A32().A0I().A08();
        if (strA08 != null) {
            AbstractC3353uW.A00(c1643Hi, this.A01, strA08);
        }
        this.A00 = new LinearLayout(this.A03);
        this.A00.setOrientation(1);
        A02();
        A01();
        this.A01.addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
        addView(this.A01, new FrameLayout.LayoutParams(-1, -1));
    }

    private void A01() {
        ViewOnClickListenerC1569El viewOnClickListenerC1569El = new ViewOnClickListenerC1569El(this.A03, EnumC2343dy.A04.A03(), this.A02.A31().A01(), this.A02.A32().A0K().A07(), this.A04, this.A06, null, this.A05, this.A02.A33());
        viewOnClickListenerC1569El.setViewShowsOverMedia(true);
        AbstractC3111qc.A0H(1001, viewOnClickListenerC1569El);
        viewOnClickListenerC1569El.setCta(this.A02.A32().A0K(), this.A02.A37(), new HashMap(), null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        viewOnClickListenerC1569El.setPadding(A0B, A0B, A0B, A0B);
        layoutParams.setMargins(A0B, A0B, A0B, A0B * 2);
        this.A00.addView(viewOnClickListenerC1569El, layoutParams);
    }
}
