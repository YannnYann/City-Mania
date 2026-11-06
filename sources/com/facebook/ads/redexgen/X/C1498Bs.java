package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1498Bs extends C3347uQ {
    public final ImageView A00;
    public final C1643Hi A01;

    public C1498Bs(C1643Hi c1643Hi) {
        super(c1643Hi);
        this.A01 = c1643Hi;
        this.A00 = new ImageView(c1643Hi);
        this.A00.setAdjustViewBounds(true);
        addView(this.A00, new RelativeLayout.LayoutParams(-2, -1));
    }

    public final void A00(String str) {
        AsyncTaskC1577Et downloadImageTask = new AsyncTaskC1577Et(this.A00, this.A01);
        downloadImageTask.A04();
        downloadImageTask.A07(str);
    }
}
