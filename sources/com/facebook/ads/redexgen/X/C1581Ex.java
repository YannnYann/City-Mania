package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ex, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1581Ex extends AbstractRunnableC3004oq {
    public final WeakReference<C2224c2> A00;

    public C1581Ex(C2224c2 c2224c2) {
        this.A00 = new WeakReference<>(c2224c2);
    }

    public C1581Ex(WeakReference<C2224c2> weakReference) {
        this.A00 = weakReference;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        C2224c2 viewabilityChecker = this.A00.get();
        if (viewabilityChecker != null) {
            viewabilityChecker.A0U();
        }
    }
}
