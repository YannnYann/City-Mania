package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.bridge.gms.AdvertisingId;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class HK implements InterfaceC2784lE {
    public final /* synthetic */ AdvertisingId A00;
    public final /* synthetic */ HJ A01;

    public HK(HJ hj, AdvertisingId advertisingId) {
        this.A01 = hj;
        this.A00 = advertisingId;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2784lE
    public final boolean ABF() {
        return this.A00.isLimitAdTracking();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2784lE
    public final String getId() {
        return this.A00.getId();
    }
}
