package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tW, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3291tW extends RelativeLayout {
    public ViewOnClickListenerC1569El A00;
    public final View.OnClickListener A01;
    public final C2427fL A02;
    public final C2441fZ A03;
    public final C1643Hi A04;
    public final C3346uP A05;
    public final C3352uV A06;
    public final String A07;
    public static final int A0B = (int) (AbstractC3070px.A02 * 2.0f);
    public static final int A0F = (int) (AbstractC3070px.A02 * 16.0f);
    public static final int A0D = (int) (AbstractC3070px.A02 * 20.0f);
    public static final int A0E = (int) (AbstractC3070px.A02 * 13.0f);
    public static final int A08 = (int) (AbstractC3070px.A02 * 72.0f);
    public static final int A0C = (int) (AbstractC3070px.A02 * 8.0f);
    public static final int A0A = (int) (AbstractC3070px.A02 * 24.0f);
    public static final int A09 = (int) (AbstractC3070px.A02 * 16.0f);

    public C3291tW(C1643Hi c1643Hi, C2441fZ c2441fZ, C2427fL c2427fL, ViewOnClickListenerC1569El viewOnClickListenerC1569El, String str, View.OnClickListener onClickListener) {
        super(c1643Hi);
        this.A04 = c1643Hi;
        this.A03 = c2441fZ;
        this.A02 = c2427fL;
        this.A00 = viewOnClickListenerC1569El;
        this.A07 = str;
        this.A01 = onClickListener;
        this.A05 = new C3346uP(this.A04);
        this.A06 = new C3352uV(this.A04, C2429fN.A01(null), true, false, true);
        A00();
    }

    private void A00() {
        AbstractC3353uW.A00(this.A04, this, this.A03.A01());
        ImageView imageView = new ImageView(this.A04);
        imageView.setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.REDESIGN_CLOSE_ICON));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0A, A0A);
        imageView.setColorFilter(-1);
        layoutParams.addRule(11);
        layoutParams.setMargins(A09, A09, A09, A09);
        imageView.setLayoutParams(layoutParams);
        addView(imageView);
        imageView.setOnClickListener(this.A01);
        LinearLayout layout = new LinearLayout(this.A04);
        layout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        layout.setGravity(17);
        layout.setOrientation(1);
        ImageView closeImageView = this.A05;
        AbstractC3111qc.A0O(closeImageView, 0);
        this.A05.setRadius(A0B);
        new AsyncTaskC1577Et(this.A05, this.A04).A04().A07(this.A03.A01());
        this.A06.A04(this.A02.A0H(), this.A03.A03(), null, false, true);
        this.A06.setAlignment(17);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(0, A0F, 0, A0F);
        this.A06.getDescriptionTextView().setText(this.A07);
        layout.addView(this.A05, new LinearLayout.LayoutParams(A08, A08));
        layout.addView(this.A06, layoutParams2);
        if (this.A00 != null) {
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
            this.A00.setPadding(A0D, A0E, A0D, A0E);
            this.A00.setLayoutParams(layoutParams3);
            AbstractC3111qc.A0W(this.A00, AbstractC3111qc.A06(-16738826, A0C));
            this.A00.setStateListAnimator(null);
            AbstractC3111qc.A0a(this.A00);
            layout.addView(this.A00);
        }
        addView(layout);
    }
}
