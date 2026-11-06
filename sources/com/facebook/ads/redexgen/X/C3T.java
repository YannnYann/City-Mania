package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3T, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3T extends C13093u {
    public C13846r A00;
    public List<C2999ol> A01;

    public C3T(C1643Hi c1643Hi) {
        super(c1643Hi);
        this.A00 = new C13846r(this, 1, null, null, null);
    }

    public final void A27(C2224c2 c2224c2) {
        if (this.A00 != null) {
            this.A00.A0o(c2224c2);
        }
    }

    public C13846r getCarouselCardBehaviorHelper() {
        return this.A00;
    }

    public void setCardsInfo(ArrayList arrayList) {
        this.A01 = arrayList;
        this.A00.A0k(this.A01);
    }
}
