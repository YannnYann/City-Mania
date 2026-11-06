package io.bidmachine.ads.networks.nast;

import io.bidmachine.ContextProvider;
import io.bidmachine.ImageDataImpl;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.core.VisibilitySource;
import io.bidmachine.nativead.NativeNetworkAdapter;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.unified.UnifiedNativeAd;
import io.bidmachine.unified.UnifiedNativeAdCallback;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class NastNative extends UnifiedNativeAd {
    @Override // io.bidmachine.unified.UnifiedAd
    public void load(ContextProvider contextProvider, UnifiedNativeAdCallback callback, UnifiedNativeAdRequestParams adRequestParams, UnifiedMediationParams unifiedMediationParams, NetworkAdUnit networkAdUnit) throws Throwable {
        String videoUrl;
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(adRequestParams, "adRequestParams");
        Intrinsics.checkNotNullParameter(unifiedMediationParams, "unifiedMediationParams");
        Intrinsics.checkNotNullParameter(networkAdUnit, "networkAdUnit");
        NastParams nastParams = new NastParams(unifiedMediationParams);
        if (nastParams.isValid(adRequestParams, callback)) {
            callback.setVisibilitySource(VisibilitySource.BidMachine);
            NativeNetworkAdapter videoAdm = new NativeNetworkAdapter().setTitle(nastParams.getTitle()).setDescription(nastParams.getDescription()).setCallToAction(nastParams.getCallToAction()).setIcon(new ImageDataImpl(nastParams.getIconUrl())).setMainImage(new ImageDataImpl(nastParams.getImageUrl())).setVideoUrl(nastParams.getVideoUrl()).setVideoAdm(nastParams.getVideoAdm());
            String videoAdm2 = nastParams.getVideoAdm();
            callback.onAdLoaded(videoAdm.setHasVideo(((videoAdm2 == null || videoAdm2.length() == 0) && ((videoUrl = nastParams.getVideoUrl()) == null || videoUrl.length() == 0)) ? false : true).setRating(nastParams.getRating()).setClickUrl(nastParams.getClickUrl()).setNetworkControlLoadingAssets(false).setAdLabelData(nastParams.getAdLabelData()).setPrivacySheetData(nastParams.getPrivacySheetData()).setDisclaimerData(nastParams.getDisclaimerData()));
        }
    }
}
