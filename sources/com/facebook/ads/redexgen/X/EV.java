package com.facebook.ads.redexgen.X;

import com.unity3d.ads.core.domain.WebViewScreenCapture;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class EV extends AbstractRunnableC3004oq {
    public final /* synthetic */ ET A00;

    public EV(ET et) {
        this.A00 = et;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (!this.A00.A0Z) {
            AbstractC3111qc.A0G(1000, this.A00.A0K);
        }
        this.A00.postDelayed(this, WebViewScreenCapture.CACHE_TTL_MS);
    }
}
