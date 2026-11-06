package com.unity3d.services.banners.bridge;

import com.unity3d.ads.BannerShowListenerWithOnFailedToShow;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.core.data.model.Listeners;
import com.unity3d.services.banners.BannerErrorInfo;
import com.unity3d.services.banners.BannerView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BannerBridge.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class BannerBridge$onBannerLoaded$1$2 implements Listeners {
    final /* synthetic */ BannerView $bannerAdView;
    final /* synthetic */ BannerView.IListener $bannerListener;

    @Override // com.unity3d.ads.core.data.model.Listeners
    public void onComplete(String placementId, UnityAds.UnityAdsShowCompletionState state) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(state, "state");
    }

    public BannerBridge$onBannerLoaded$1$2(BannerView.IListener iListener, BannerView bannerView) {
        this.$bannerListener = iListener;
        this.$bannerAdView = bannerView;
    }

    @Override // com.unity3d.ads.core.data.model.Listeners
    public void onRewarded(String str) {
        Listeners.DefaultImpls.onRewarded(this, str);
    }

    @Override // com.unity3d.ads.core.data.model.Listeners
    public void onLeftApplication(String placementId) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        BannerView.IListener iListener = this.$bannerListener;
        if (iListener != null) {
            iListener.onBannerLeftApplication(this.$bannerAdView);
        }
    }

    @Override // com.unity3d.ads.core.data.model.Listeners
    public void onClick(String placementId) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        BannerView.IListener iListener = this.$bannerListener;
        if (iListener != null) {
            iListener.onBannerClick(this.$bannerAdView);
        }
    }

    @Override // com.unity3d.ads.core.data.model.Listeners
    public void onStart(String placementId) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        BannerView.IListener iListener = this.$bannerListener;
        if (iListener != null) {
            iListener.onBannerShown(this.$bannerAdView);
        }
    }

    @Override // com.unity3d.ads.core.data.model.Listeners
    public void onError(String placementId, UnityAds.UnityAdsShowError error, String message) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(message, "message");
        if (this.$bannerListener instanceof BannerShowListenerWithOnFailedToShow) {
            BannerErrorInfo bannerErrorInfoFromShowError = BannerErrorInfo.fromShowError(error, message);
            BannerView.IListener iListener = this.$bannerListener;
            Intrinsics.checkNotNull(iListener, "null cannot be cast to non-null type com.unity3d.ads.BannerShowListenerWithOnFailedToShow");
            BannerView bannerView = this.$bannerAdView;
            Intrinsics.checkNotNull(bannerErrorInfoFromShowError);
            ((BannerShowListenerWithOnFailedToShow) iListener).onBannerFailedToShow(bannerView, bannerErrorInfoFromShowError);
        }
    }
}
