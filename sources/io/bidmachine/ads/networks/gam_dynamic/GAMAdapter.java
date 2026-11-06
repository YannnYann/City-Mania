package io.bidmachine.ads.networks.gam_dynamic;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.explorestack.protobuf.Struct;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.ExtraParamsManager;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.InitializationParams;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfigParams;
import io.bidmachine.NetworkInitializationCallback;
import io.bidmachine.ads.networks.gam_dynamic.versions.VersionWrapper;
import io.bidmachine.protobuf.Waterfall;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.utils.BMError;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class GAMAdapter extends HeaderBiddingAdapter {
    public GAMNetwork gamNetwork;

    @Override // io.bidmachine.NetworkAdapter
    public boolean isNetworkInitializationStatusCheckSupported() {
        return true;
    }

    public GAMAdapter(String key) {
        this(key, "", "3.8.0.0", 16);
    }

    public GAMAdapter(String key, String version, String adapterVersion, int adapterMinDeviceApiVersion) {
        this(key, version, adapterVersion, adapterMinDeviceApiVersion, new AdsType[]{AdsType.Banner, AdsType.Interstitial, AdsType.Rewarded});
    }

    public GAMAdapter(String key, String version, String adapterVersion, int adapterMinDeviceApiVersion, AdsType[] supportedTypes) {
        super(key, version, adapterVersion, adapterMinDeviceApiVersion, supportedTypes);
    }

    @Override // io.bidmachine.NetworkAdapter
    public String getNetworkSdkVersion() throws Throwable {
        GAMNetwork gAMNetwork = this.gamNetwork;
        if (gAMNetwork != null) {
            return gAMNetwork.getVersion();
        }
        return null;
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedBannerAd createBanner() {
        GAMNetwork gAMNetwork = this.gamNetwork;
        if (gAMNetwork != null) {
            return new GAMBannerAd(gAMNetwork);
        }
        throw new IllegalArgumentException("GAMNetwork is null");
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedFullscreenAd createInterstitial() {
        GAMNetwork gAMNetwork = this.gamNetwork;
        if (gAMNetwork != null) {
            return new GAMInterstitialAd(gAMNetwork);
        }
        throw new IllegalArgumentException("GAMNetwork is null");
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedFullscreenAd createRewarded() {
        GAMNetwork gAMNetwork = this.gamNetwork;
        if (gAMNetwork != null) {
            return new GAMRewardedAd(gAMNetwork);
        }
        throw new IllegalArgumentException("GAMNetwork is null");
    }

    public String getNetworkName() {
        return "GAMDynamic";
    }

    @Override // io.bidmachine.NetworkAdapter
    public boolean isNetworkInitialized(ContextProvider contextProvider) throws Throwable {
        GAMNetwork gAMNetwork = this.gamNetwork;
        return gAMNetwork != null && gAMNetwork.isInitialized();
    }

    @Override // io.bidmachine.NetworkAdapter
    public void onNetworkInitialize(ContextProvider contextProvider, InitializationParams initializationParams, NetworkConfigParams networkConfigParams, NetworkInitializationCallback callback) throws Throwable {
        String strRemoveFromNetworkParams = networkConfigParams.removeFromNetworkParams("supported_versions_range");
        if (TextUtils.isEmpty(strRemoveFromNetworkParams)) {
            callback.onFail("supported_versions_range not provided");
            return;
        }
        VersionWrapper versionWrapperFindVersionWrapper = VersionManager.findVersionWrapper(strRemoveFromNetworkParams);
        if (versionWrapperFindVersionWrapper == null) {
            callback.onFail("Unsupported GAM version (VersionWrapper not found)");
            return;
        }
        Context applicationContext = contextProvider.getApplicationContext();
        if (!versionWrapperFindVersionWrapper.isGAMPresent(applicationContext)) {
            callback.onFail("GAM is absent or used unsupported version");
            return;
        }
        String strRemoveFromNetworkParams2 = networkConfigParams.removeFromNetworkParams("context");
        if (TextUtils.isEmpty(strRemoveFromNetworkParams2)) {
            callback.onFail("context not provided");
            return;
        }
        Waterfall.Context waterfallContext = parseWaterfallContext(strRemoveFromNetworkParams2);
        if (waterfallContext == null) {
            callback.onFail("context can't transform to model");
            return;
        }
        GAMNetworkImpl gAMNetworkImpl = new GAMNetworkImpl(applicationContext, new GAMNetworkParams(getKey(), getNetworkName()), waterfallContext, versionWrapperFindVersionWrapper);
        this.gamNetwork = gAMNetworkImpl;
        gAMNetworkImpl.init(applicationContext);
        this.gamNetwork.cache();
        callback.onSuccess();
    }

    @Override // io.bidmachine.HeaderBiddingAdapter
    public void onCollectHeaderBiddingParams(ContextProvider contextProvider, UnifiedAdRequestParams adRequestParams, NetworkAdUnit networkAdUnit, HeaderBiddingAdRequestParams hbAdRequestParams, HeaderBiddingCollectParamsCallback collectCallback) throws Throwable {
        GAMNetwork gAMNetwork = this.gamNetwork;
        if (gAMNetwork == null) {
            collectCallback.onCollectFail(BMError.adapter("GAM network is null"));
            return;
        }
        InternalAdData internalAdDataReserveMostExpensiveAd = gAMNetwork.reserveMostExpensiveAd(networkAdUnit, networkAdUnit.getAdFormat());
        if (internalAdDataReserveMostExpensiveAd == null) {
            collectCallback.onCollectFail(BMError.adapter("Can't find idle ad"));
            return;
        }
        HashMap map = new HashMap();
        map.put("ad_unit_id", internalAdDataReserveMostExpensiveAd.getAdUnitId());
        map.put("price", String.valueOf(internalAdDataReserveMostExpensiveAd.getPrice()));
        for (Map.Entry<String, Object> entry : internalAdDataReserveMostExpensiveAd.getCustomParamsMap().entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (!TextUtils.isEmpty(key) && value != null) {
                map.put(key, String.valueOf(value));
            }
        }
        collectCallback.onCollectFinished(map);
    }

    @Override // io.bidmachine.NetworkAdapter
    public void onLossAuction(NetworkAdUnit networkAdUnit) throws Throwable {
        GAMNetwork gAMNetwork = this.gamNetwork;
        if (gAMNetwork != null) {
            gAMNetwork.unReserveAd(networkAdUnit);
        }
    }

    @Override // io.bidmachine.NetworkAdapter
    public void clearAuction(NetworkAdUnit networkAdUnit) throws Throwable {
        GAMNetwork gAMNetwork = this.gamNetwork;
        if (gAMNetwork != null) {
            gAMNetwork.unReserveAd(networkAdUnit);
        }
    }

    public Waterfall.Context parseWaterfallContext(String context) {
        try {
            return Waterfall.Context.parseFrom(Base64.decode(context, 0));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static class GAMNetworkParams extends NetworkParamsImpl {
        public GAMNetworkParams(String networkKey, String networkName) {
            super(networkKey, networkName);
        }

        @Override // io.bidmachine.ads.networks.gam_dynamic.NetworkParams
        public Struct getExt(Context context) {
            return ExtraParamsManager.get().getPrivateStruct(context);
        }
    }
}
