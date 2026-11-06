package com.facebook.ads.redexgen.X;

import android.graphics.Typeface;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vW, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3415vW extends FrameLayout {
    public final int A00;
    public final RelativeLayout A01;
    public final ViewOnClickListenerC1569El A02;
    public static final int A05 = (int) (AbstractC3070px.A02 * 36.0f);
    public static final int A06 = (int) (AbstractC3070px.A02 * 36.0f);
    public static final int A03 = (int) (AbstractC3070px.A02 * 23.0f);
    public static final int A04 = (int) (AbstractC3070px.A02 * 3.0f);
    public static final int A07 = (int) (AbstractC3070px.A02 * 4.0f);

    public C3415vW(C1643Hi c1643Hi, ViewOnClickListenerC1569El viewOnClickListenerC1569El, LA la, InterfaceC2909nG interfaceC2909nG, InterfaceC3144r9 interfaceC3144r9, C2224c2 c2224c2, C3102qT c3102qT, C2429fN c2429fN, InterfaceC3328u7 interfaceC3328u7) {
        super(c1643Hi);
        this.A00 = c2429fN.A09(true);
        this.A01 = new RelativeLayout(c1643Hi);
        addView(this.A01, new FrameLayout.LayoutParams(-1, -1));
        this.A01.setClickable(false);
        A01(c1643Hi, la.A32().A0K().A05());
        if (viewOnClickListenerC1569El == null) {
            this.A02 = new ViewOnClickListenerC1569El(c1643Hi, la.A1X(), (C2429fN) null, interfaceC2909nG, interfaceC3144r9, c2224c2, c3102qT, la.A33());
        } else {
            this.A02 = viewOnClickListenerC1569El;
        }
        A03();
        this.A02.setCta(la.A32().A0K(), la.A37(), new HashMap(), interfaceC3328u7);
        this.A02.setIsInAppBrowser(true);
        FrameLayout.LayoutParams ctaButtonParams = new FrameLayout.LayoutParams(-1, -1);
        addView(this.A02, ctaButtonParams);
    }

    private void A00(C1643Hi c1643Hi, View view) {
        ImageView imageView = new ImageView(c1643Hi);
        imageView.setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.MINIMIZE_ARROW));
        imageView.setRotation(180.0f);
        imageView.setClickable(false);
        imageView.setColorFilter(this.A00);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A03, A03);
        imageView.setPadding(A04, A04, A04, A04);
        layoutParams.addRule(2, view.getId());
        layoutParams.addRule(14);
        this.A01.addView(imageView, layoutParams);
    }

    private void A01(C1643Hi c1643Hi, String str) {
        Button button = new Button(c1643Hi);
        AbstractC3111qc.A0L(button);
        button.setPadding(A06, 0, A06, 0);
        button.setText(str.toUpperCase(Locale.getDefault()));
        button.setTextSize(14.0f);
        button.setTypeface(Typeface.defaultFromStyle(1));
        AbstractC3111qc.A0R(button, this.A00, A07);
        button.setTextColor(-16777216);
        RelativeLayout.LayoutParams ctaParams = new RelativeLayout.LayoutParams(-2, A05);
        ctaParams.addRule(12);
        ctaParams.addRule(14);
        this.A01.addView(button, ctaParams);
        A00(c1643Hi, button);
    }

    public final EnumC2383ec A02(String str) {
        return this.A02.A0E(str);
    }

    public final void A03() {
        this.A02.setBackgroundColor(0);
        this.A02.setTextColor(0);
    }

    @Override // android.view.View
    public final boolean performClick() {
        return this.A02.performClick();
    }

    public void setAutoClickTime(LA la, AbstractC3137r2 abstractC3137r2) {
        this.A02.A0I(la, abstractC3137r2);
    }

    public void setCta(C2431fP c2431fP, String str, HashMap<String, String> extras, InterfaceC3328u7 interfaceC3328u7) {
        this.A02.setCta(c2431fP, str, extras, interfaceC3328u7);
    }
}
