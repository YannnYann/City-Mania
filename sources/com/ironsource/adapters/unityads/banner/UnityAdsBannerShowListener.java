package com.ironsource.adapters.unityads.banner;

import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.ads.BannerAd;
import com.unity3d.ads.BannerShowListener;
import com.unity3d.ads.UnityAdsError;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsBannerShowListener.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class UnityAdsBannerShowListener implements BannerShowListener {
    private final BannerAdListener listener;

    public UnityAdsBannerShowListener(BannerAdListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    @Override // com.unity3d.ads.BannerShowListener
    public void onImpression(BannerAd banner) {
        Intrinsics.checkNotNullParameter(banner, "banner");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }

    @Override // com.unity3d.ads.BannerShowListener
    public void onClicked(BannerAd banner) {
        Intrinsics.checkNotNullParameter(banner, "banner");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // com.unity3d.ads.BannerShowListener
    public void onFailedToShow(BannerAd banner, UnityAdsError error) {
        Intrinsics.checkNotNullParameter(banner, "banner");
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        Integer numValueOf = Integer.valueOf(error.getCode());
        String message = error.getMessage();
        if (message == null) {
            message = "";
        }
        String str = String.format("Failed to show, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{numValueOf, message}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
    }
}
