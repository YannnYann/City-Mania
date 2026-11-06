package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class EH implements InterfaceC3302th {
    public final /* synthetic */ EE A00;

    public EH(EE ee) {
        this.A00 = ee;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3302th
    public final void AFA(C3301tg c3301tg) {
        if (this.A00.A06 != null && c3301tg.A00() != null) {
            this.A00.A06.setImageBitmap(c3301tg.A00());
            this.A00.A06.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.A00.A06.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        }
    }
}
