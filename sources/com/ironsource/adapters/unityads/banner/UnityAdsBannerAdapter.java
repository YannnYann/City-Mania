package com.ironsource.adapters.unityads.banner;

import android.app.Activity;
import android.content.Context;
import android.widget.FrameLayout;
import com.ironsource.adapters.unityads.UnityAdsAdapter;
import com.ironsource.adapters.unityads.UnityAdsConstants;
import com.ironsource.mediationsdk.AdapterUtils;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.ads.AdFormat;
import com.unity3d.ads.BannerAd;
import com.unity3d.ads.BannerConfiguration;
import com.unity3d.ads.BannerSize;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseBanner;
import com.unity3d.services.banners.UnityBannerSize;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsBannerAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class UnityAdsBannerAdapter extends LevelPlayBaseBanner<UnityAdsAdapter> {
    private BannerAd bannerAdView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnityAdsBannerAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void loadAd(AdData adData, Activity activity, ISBannerSize bannerSize, BannerAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String string = adData.getString(UnityAdsConstants.ZONE_ID_KEY);
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format(UnityAdsConstants.Logs.ZONE_ID, Arrays.copyOf(new Object[]{string == null ? "" : string}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        if (string == null || string.length() == 0) {
            String str2 = String.format("Missing params - %s", Arrays.copyOf(new Object[]{UnityAdsConstants.ZONE_ID_KEY}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            IronLog.INTERNAL.error(str2);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1002, str2);
            return;
        }
        UnityBannerSize bannerSize2 = getBannerSize(bannerSize, AdapterUtils.isLargeScreen(activity.getApplicationContext()));
        if (bannerSize2 == null) {
            IronLog.INTERNAL.error(UnityAdsConstants.Logs.UNSUPPORTED_BANNER_SIZE);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, UnityAdsConstants.Logs.UNSUPPORTED_BANNER_SIZE);
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(activity.getApplicationContext(), bannerSize2.getWidth()), -2, 17);
        Map<String, Object> adUnitData = adData.getAdUnitData();
        Object obj = adUnitData != null ? adUnitData.get("adUnitId") : null;
        String str3 = obj instanceof String ? (String) obj : null;
        BannerConfiguration.Builder builderWithMediationInfo = new BannerConfiguration.Builder(string, new BannerSize(bannerSize2.getWidth(), bannerSize2.getHeight()), new UnityAdsBannerShowListener(listener)).withMediationInfo(UnityAdsAdapter.Companion.getMediationInfo$unityadsadapter_release());
        String serverData = adData.getServerData();
        if (serverData != null && serverData.length() > 0) {
            builderWithMediationInfo.withAdMarkup(serverData);
        }
        if (str3 != null && str3.length() != 0) {
            builderWithMediationInfo.withMediationAdUnitId(str3);
        }
        BannerAd.Companion.load(builderWithMediationInfo.build(), new UnityAdsBannerLoadListener(listener, layoutParams, new WeakReference(this)));
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        this.bannerAdView = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseBanner, com.ironsource.InterfaceC3940y3
    public void collectBiddingData(AdData adData, Context context, BiddingDataCallback biddingDataCallback) {
        Map<String, Object> adUnitData;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        IronLog.ADAPTER_API.verbose();
        UnityAdsAdapter unityAdsAdapter = (UnityAdsAdapter) getNetworkAdapter();
        if (unityAdsAdapter == null) {
            IronLog.INTERNAL.error("Network adapter is null");
            biddingDataCallback.onFailure("Network adapter is null");
        } else {
            Object obj = (adData == null || (adUnitData = adData.getAdUnitData()) == null) ? null : adUnitData.get("bannerSize");
            ISBannerSize iSBannerSize = obj instanceof ISBannerSize ? (ISBannerSize) obj : null;
            unityAdsAdapter.collectBiddingData$unityadsadapter_release(adData, biddingDataCallback, AdFormat.BANNER, iSBannerSize != null ? new BannerSize(iSBannerSize.getWidth(), iSBannerSize.getHeight()) : null);
        }
    }

    public final void setBannerAdView$unityadsadapter_release(BannerAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.bannerAdView = ad;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final UnityBannerSize getBannerSize(ISBannerSize iSBannerSize, boolean z) {
        String description = iSBannerSize.getDescription();
        if (description == null) {
            return null;
        }
        switch (description.hashCode()) {
            case -387072689:
                if (description.equals("RECTANGLE")) {
                    return new UnityBannerSize(300, 250);
                }
                return null;
            case 72205083:
                if (!description.equals("LARGE")) {
                    return null;
                }
                break;
            case 79011241:
                if (!description.equals("SMART")) {
                    return null;
                }
                if (z) {
                    return new UnityBannerSize(728, 90);
                }
                return new UnityBannerSize(320, 50);
            case 1951953708:
                if (!description.equals("BANNER")) {
                    return null;
                }
                break;
            default:
                return null;
        }
        return new UnityBannerSize(320, 50);
    }
}
