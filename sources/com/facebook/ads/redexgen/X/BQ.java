package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class BQ implements InterfaceC2360eF {
    public final View A00;
    public final C1643Hi A01;

    public BQ(C1643Hi c1643Hi, View view) {
        this.A01 = c1643Hi;
        this.A00 = view;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2360eF
    public final double AA9() {
        C2222c0 result = C2224c2.A0E(this.A00, 0, this.A01);
        return result.A00();
    }
}
