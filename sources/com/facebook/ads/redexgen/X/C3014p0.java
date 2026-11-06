package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.p0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3014p0 extends LinearLayout {
    public static final int A04 = (int) (AbstractC3070px.A02 * 32.0f);
    public static final int A05 = (int) (AbstractC3070px.A02 * 8.0f);
    public TextView A00;
    public TextView A01;
    public C3346uP A02;
    public final C1643Hi A03;

    public C3014p0(C1643Hi c1643Hi) {
        super(c1643Hi);
        this.A03 = c1643Hi;
        A00(c1643Hi);
    }

    private final void A00(C1643Hi c1643Hi) {
        setGravity(16);
        this.A02 = new C3346uP(c1643Hi);
        this.A02.setFullCircleCorners(true);
        LinearLayout.LayoutParams pageImageViewParams = new LinearLayout.LayoutParams(A04, A04);
        pageImageViewParams.setMargins(0, 0, A05, 0);
        addView(this.A02, pageImageViewParams);
        LinearLayout pageInfoView = new LinearLayout(c1643Hi);
        pageInfoView.setOrientation(1);
        this.A00 = new TextView(c1643Hi);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        AbstractC3111qc.A0b(this.A00, true, 16);
        this.A00.setEllipsize(TextUtils.TruncateAt.END);
        this.A00.setSingleLine(true);
        this.A01 = new TextView(c1643Hi);
        AbstractC3111qc.A0b(this.A01, false, 14);
        pageInfoView.addView(this.A00);
        pageInfoView.addView(this.A01);
        addView(pageInfoView, layoutParams);
    }

    public final void A01() {
        this.A02.setImageBitmap(null);
        this.A00.setText("");
        this.A01.setText("");
    }

    public final void A02(int i, int i2) {
        this.A00.setTextColor(i);
        this.A01.setTextColor(i2);
    }

    public void setPageDetails(C2441fZ c2441fZ) {
        AsyncTaskC1577Et asyncTaskC1577Et = new AsyncTaskC1577Et(this.A02, this.A03);
        asyncTaskC1577Et.A05(A04, A04);
        asyncTaskC1577Et.A07(c2441fZ.A01());
        this.A00.setText(c2441fZ.A02());
        this.A01.setText(c2441fZ.A03());
    }
}
