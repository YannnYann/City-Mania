package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3184rn extends LinearLayout {
    public LinearLayout A00;
    public String A01;
    public boolean A02;
    public final int A03;
    public final C1643Hi A04;
    public final C3346uP A05;
    public final C3352uV A06;
    public static String[] A07 = {"ikrAQeZ", "GEbcoUE3g5mmhvDK1accGi9uoxyDpqlb", "IoEeK9dLJSDS9xEhArFsaHxFRkOUOwko", "MRryK7TPTl", "xYvAqelZm4vIlfu7l4YCkPewkt8BGS3e", "XJHoxX8Fkr6J", "", "ZK"};
    public static final int A0A = (int) (AbstractC3070px.A02 * 16.0f);
    public static final int A0B = (int) (AbstractC3070px.A02 * 32.0f);
    public static final int A0C = (int) (AbstractC3070px.A02 * 16.0f);
    public static final int A09 = (int) (AbstractC3070px.A02 * 4.0f);
    public static final int A08 = (int) (AbstractC3070px.A02 * 72.0f);

    public C3184rn(C3186rp c3186rp) {
        super(c3186rp.A08);
        this.A02 = false;
        this.A01 = "";
        this.A04 = c3186rp.A08;
        this.A05 = new C3346uP(this.A04);
        this.A06 = new C3352uV(this.A04, c3186rp.A01, true, false, true);
        this.A03 = c3186rp.A00;
        this.A02 = c3186rp.A05;
        this.A01 = c3186rp.A04;
        A03(c3186rp);
    }

    public /* synthetic */ C3184rn(C3186rp c3186rp, C1523Cr c1523Cr) {
        this(c3186rp);
    }

    private void A00() {
        A01(this.A05, 150);
        A01(this.A06, 170);
        if (this.A00 != null) {
            A01(this.A00, 190);
        }
    }

    private void A01(View view, int i) {
        view.setTranslationY(i);
        view.setScaleY(0.75f);
        view.setScaleX(0.75f);
        view.animate().translationYBy(-i).scaleX(1.0f).scaleY(1.0f).setDuration(300L).setInterpolator(new DecelerateInterpolator(2.0f));
    }

    private void A02(C3186rp c3186rp) {
        if (!TextUtils.isEmpty(c3186rp.A03)) {
            this.A00 = new LinearLayout(getContext());
            this.A00.setGravity(17);
            int i = A0C / 2;
            if (this.A02) {
                i = 0;
            }
            LinearLayout linearLayout = this.A00;
            int i2 = A0C;
            int i3 = A0C;
            int marginTop = A0C;
            linearLayout.setPadding(i2, i, i3, marginTop / 2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, i, 0, 0);
            TextView textView = new TextView(getContext());
            textView.setTextColor(-1);
            AbstractC3111qc.A0b(textView, false, 16);
            textView.setText(c3186rp.A03);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            ImageView imageView = new ImageView(getContext());
            if (c3186rp.A02 != null) {
                new AsyncTaskC1577Et(imageView, this.A04).A04().A07(c3186rp.A02);
            }
            int i4 = A0A;
            int marginTop2 = A0A;
            LinearLayout.LayoutParams informativeContainerParams = new LinearLayout.LayoutParams(i4, marginTop2);
            int marginTop3 = A0C;
            informativeContainerParams.setMargins(0, 0, marginTop3 / 2, 0);
            if (this.A02) {
                C3340uJ c3340uJ = new C3340uJ(getContext(), 0, -1, EnumC3122qn.PLAYABLE_ICON);
                c3340uJ.setLayoutParams(new LinearLayout.LayoutParams(A0B, A0B));
                this.A00.addView(c3340uJ);
            } else {
                this.A00.addView(imageView, informativeContainerParams);
                this.A00.addView(textView, layoutParams2);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setCornerRadius(100.0f);
                gradientDrawable.setColor(469762047);
                AbstractC3111qc.A0W(this.A00, gradientDrawable);
            }
            View view = this.A00;
            if (A07[0].length() == 13) {
                throw new RuntimeException();
            }
            String[] strArr = A07;
            strArr[3] = "NcANBdwAoJ";
            strArr[7] = "XL";
            addView(view, layoutParams);
        }
    }

    private void A03(C3186rp c3186rp) {
        AbstractC3111qc.A0O(this.A05, 0);
        this.A05.setRadius(50);
        if (!this.A02 && c3186rp.A06.A00() == EnumC2425fJ.A05) {
            this.A05.setFullCircleCorners(true);
        } else {
            this.A05.setRadius(A09);
        }
        new AsyncTaskC1577Et(this.A05, this.A04).A04().A07(c3186rp.A07.A01());
        this.A06.A04(c3186rp.A06.A0H(), c3186rp.A07.A03(), null, false, true);
        if (!this.A02) {
            this.A06.getDescriptionTextView().setAlpha(0.8f);
        } else {
            this.A06.getDescriptionTextView().setText(this.A01);
        }
        this.A06.setAlignment(17);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A0C, 0, A0C / 2);
        View view = this.A05;
        ViewGroup.LayoutParams titleAndDescriptionParams = new LinearLayout.LayoutParams(A08, A08);
        addView(view, titleAndDescriptionParams);
        addView(this.A06, layoutParams);
        A02(c3186rp);
        AbstractC3111qc.A0O(this, -14473425);
        setGravity(17);
        setOrientation(1);
    }

    public final void A04(InterfaceC3185ro interfaceC3185ro) {
        A00();
        postDelayed(new C1523Cr(this, interfaceC3185ro), this.A03);
    }
}
