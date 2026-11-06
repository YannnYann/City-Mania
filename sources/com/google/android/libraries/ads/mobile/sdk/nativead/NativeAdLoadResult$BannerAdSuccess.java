package com.google.android.libraries.ads.mobile.sdk.nativead;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAd;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class NativeAdLoadResult$BannerAdSuccess {
    public final BannerAd a;

    public NativeAdLoadResult$BannerAdSuccess(BannerAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.a = ad;
    }

    public final BannerAd getAd() {
        return this.a;
    }
}
