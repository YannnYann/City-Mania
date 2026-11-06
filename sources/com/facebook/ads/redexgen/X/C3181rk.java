package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.LinearLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3181rk extends LinearLayout {
    public static final int A03 = (int) (AbstractC3070px.A02 * 10.0f);
    public static final int A04 = (int) (AbstractC3070px.A02 * 24.0f);
    public final ImageView A00;
    public final C2504ga A01;
    public final C1643Hi A02;

    public C3181rk(C1643Hi c1643Hi) {
        super(c1643Hi);
        this.A02 = c1643Hi;
        this.A01 = AbstractC2505gb.A00(c1643Hi.A02());
        this.A00 = new ImageView(c1643Hi);
        A02();
    }

    private void A02() {
        A03(this.A00, EnumC3122qn.REDESIGN_INFO_ICON);
        setPadding(A03, A03 / 3, A03, A03 / 3);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A04, A04);
        layoutParams.gravity = 16;
        addView(this.A00, layoutParams);
    }

    public static void A03(ImageView imageView, EnumC3122qn enumC3122qn) {
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setImageBitmap(AbstractC3123qo.A01(enumC3122qn));
        imageView.setColorFilter(-1);
    }

    public void setAdDetails(C2441fZ c2441fZ, String str, C2917nO c2917nO, InterfaceC3144r9 interfaceC3144r9) {
        setOnClickListener(new ViewOnClickListenerC3180rj(this, c2917nO, interfaceC3144r9, str, c2441fZ));
    }

    public void setIconColors(int i) {
        this.A00.setColorFilter(i);
    }
}
