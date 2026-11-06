package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.api.NativeAdViewTypeApi;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.k3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2714k3 implements NativeAdViewTypeApi {
    public final EnumC2940nl A00;

    public C2714k3(int i) {
        this.A00 = EnumC2940nl.A00(i);
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewTypeApi
    public final int getHeight() {
        return this.A00.A04();
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewTypeApi
    public final int getValue() {
        return this.A00.A05();
    }

    @Override // com.facebook.ads.internal.api.NativeAdViewTypeApi
    public final int getWidth() {
        return this.A00.A06();
    }
}
