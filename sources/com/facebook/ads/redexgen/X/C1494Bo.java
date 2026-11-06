package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1494Bo extends C3347uQ {
    public final ImageView A00;
    public final C1643Hi A01;

    public C1494Bo(C1643Hi c1643Hi) {
        super(c1643Hi);
        this.A01 = c1643Hi;
        setRadius(30);
        this.A00 = new ImageView(c1643Hi);
        this.A00.setAdjustViewBounds(true);
        addView(this.A00, new RelativeLayout.LayoutParams(-2, -1));
    }

    public final /* synthetic */ void A00(C3301tg c3301tg) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = -2;
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.updateViewLayout(this, layoutParams);
        }
    }

    public void setUrl(String str) {
        AsyncTaskC1577Et asyncTaskC1577Et = new AsyncTaskC1577Et(this.A00, this.A01);
        asyncTaskC1577Et.A04();
        asyncTaskC1577Et.A07(str);
        asyncTaskC1577Et.A06(new InterfaceC3302th() { // from class: com.facebook.ads.redexgen.X.Bp
            @Override // com.facebook.ads.redexgen.X.InterfaceC3302th
            public final void AFA(C3301tg c3301tg) {
                this.A00.A00(c3301tg);
            }
        });
    }
}
