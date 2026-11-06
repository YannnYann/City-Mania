package com.unity3d.ironsourceads.banner;

import com.ironsource.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes4.dex */
public interface BannerAdLoaderListener {
    void onBannerAdLoadFailed(IronSourceError ironSourceError);

    void onBannerAdLoaded(BannerAdView bannerAdView);
}
