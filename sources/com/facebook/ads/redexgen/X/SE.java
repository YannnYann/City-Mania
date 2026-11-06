package com.facebook.ads.redexgen.X;

import android.os.Looper;
import com.facebook.ads.AdError;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class SE implements InterfaceC1897Ru {
    @Override // com.facebook.ads.redexgen.X.InterfaceC1897Ru
    public final /* synthetic */ InterfaceC1896Rt AIG(C1892Rp c1892Rp, VC vc) {
        return AbstractC1894Rr.A00(this, c1892Rp, vc);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1897Ru
    public final /* synthetic */ void AIH() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1897Ru
    public final InterfaceC1883Rg A3Y(C1892Rp c1892Rp, VC vc) {
        if (vc.A0O == null) {
            return null;
        }
        return new SC(new C1881Re(new SP(1), AdError.MEDIAVIEW_MISSING_ERROR_CODE));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1897Ru
    public final int A87(VC vc) {
        return vc.A0O != null ? 1 : 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1897Ru
    public final void AKw(Looper looper, QD qd) {
    }
}
