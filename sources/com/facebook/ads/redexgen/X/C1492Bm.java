package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeBannerAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1492Bm extends LinearLayout implements InterfaceC2481gD {
    public final NativeBannerAd A00;
    public final C1643Hi A01;
    public final ArrayList<View> A02;
    public static final int A04 = (int) (AbstractC3070px.A02 * 42.0f);
    public static final int A03 = (int) (AbstractC3070px.A02 * 48.0f);
    public static final int A05 = (int) (AbstractC3070px.A02 * 54.0f);
    public static final int A07 = (int) (AbstractC3070px.A02 * 4.0f);
    public static final int A06 = (int) (AbstractC3070px.A02 * 8.0f);

    public C1492Bm(C1643Hi c1643Hi, NativeBannerAd nativeBannerAd, C2939nk c2939nk, EnumC2940nl enumC2940nl, MediaView mediaView, AdOptionsView adOptionsView, C3237se c3237se) {
        LinearLayout.LayoutParams layoutParams;
        ViewGroup.LayoutParams commonLayoutParams;
        super(c1643Hi);
        this.A02 = new ArrayList<>();
        this.A00 = nativeBannerAd;
        this.A01 = c1643Hi;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        int iA00 = A00(enumC2940nl);
        C3347uQ c3347uQ = new C3347uQ(this.A01);
        c3347uQ.setFullCircleCorners(true);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iA00, iA00);
        c3347uQ.addView(mediaView, new LinearLayout.LayoutParams(-1, -1));
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 16;
        relativeLayout.addView(c3347uQ, layoutParams2);
        if (c3237se != null) {
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams4.addRule(10);
            layoutParams4.setMargins(AbstractC3068pv.A0B, AbstractC3068pv.A0B, AbstractC3068pv.A00, AbstractC3068pv.A00);
            relativeLayout.addView(c3237se, layoutParams4);
        }
        linearLayout.addView(relativeLayout, layoutParams3);
        View c2493gP = new C2493gP(c1643Hi, this.A00, enumC2940nl, c2939nk, adOptionsView);
        c2493gP.setPadding(A06, 0, 0, 0);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -2);
        layoutParams5.weight = 1.0f;
        layoutParams5.gravity = 16;
        linearLayout.addView(c2493gP, layoutParams5);
        if (enumC2940nl == EnumC2940nl.A0A) {
            setPadding(A07, A07, A07, A07);
            setOrientation(0);
            layoutParams = new LinearLayout.LayoutParams(0, -1);
            commonLayoutParams = new LinearLayout.LayoutParams(-2, -1);
            linearLayout.setPadding(0, 0, A07, 0);
        } else {
            setPadding(A06, A06, A06, A06);
            setOrientation(1);
            layoutParams = new LinearLayout.LayoutParams(-1, 0);
            commonLayoutParams = new LinearLayout.LayoutParams(-1, -2);
            linearLayout.setPadding(0, 0, 0, A06);
        }
        layoutParams.weight = 1.0f;
        addView(linearLayout, layoutParams);
        TextView textView = new TextView(getContext());
        textView.setPadding(A06, A07, A06, A07);
        c2939nk.A05(textView);
        textView.setText(this.A00.getAdCallToAction());
        addView(textView, commonLayoutParams);
        this.A02.add(mediaView);
        this.A02.add(textView);
    }

    public static int A00(EnumC2940nl enumC2940nl) {
        switch (enumC2940nl) {
            case A0A:
                return A04;
            case A06:
                return A03;
            default:
                return A05;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2481gD
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2481gD
    public ArrayList<View> getViewsForInteraction() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2481gD
    public final void unregisterView() {
        this.A00.unregisterView();
    }
}
