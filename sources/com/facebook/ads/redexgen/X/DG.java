package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DG implements InterfaceC3302th {
    public final /* synthetic */ C13655y A00;

    public DG(C13655y c13655y) {
        this.A00 = c13655y;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3302th
    public final void AFA(C3301tg c3301tg) {
        if (this.A00.A05 != null && c3301tg.A00() != null) {
            this.A00.A05.setImageBitmap(c3301tg.A00());
            this.A00.A05.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.A00.A05.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        }
    }
}
