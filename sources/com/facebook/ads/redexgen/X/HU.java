package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.dynamicloading.DynamicLoader;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class HU extends AbstractRunnableC3004oq {
    public final /* synthetic */ C1642Hh A00;

    public HU(C1642Hh c1642Hh) {
        this.A00 = c1642Hh;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        DynamicLoader dynamicLoader = DynamicLoaderFactory.getDynamicLoader();
        if (dynamicLoader != null) {
            dynamicLoader.createBidderTokenProviderApi().getBidderToken(this.A00);
        }
    }
}
