package com.vungle.ads;

import com.vungle.ads.internal.util.t;

/* JADX INFO: loaded from: classes4.dex */
public final class VungleMediationLoggerKt {
    public static final t access$getAdLogEntry(VungleAdType vungleAdType) {
        if (vungleAdType instanceof BaseAd) {
            return ((BaseAd) vungleAdType).getLogEntry$vungle_ads_release();
        }
        if (vungleAdType instanceof VungleBannerView) {
            return ((VungleBannerView) vungleAdType).getLogEntry$vungle_ads_release();
        }
        return null;
    }
}
