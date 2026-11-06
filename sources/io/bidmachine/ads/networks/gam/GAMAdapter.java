package io.bidmachine.ads.networks.gam;

import android.content.Context;
import android.text.TextUtils;
import io.bidmachine.AdsFormat;
import io.bidmachine.AdsType;
import io.bidmachine.ContextProvider;
import io.bidmachine.HeaderBiddingAdRequestParams;
import io.bidmachine.HeaderBiddingAdapter;
import io.bidmachine.HeaderBiddingCollectParamsCallback;
import io.bidmachine.InitializationParams;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.NetworkConfigParams;
import io.bidmachine.NetworkInitializationCallback;
import io.bidmachine.ads.networks.gam.versions.VersionWrapper;
import io.bidmachine.core.Utils;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.utils.BMError;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class GAMAdapter extends HeaderBiddingAdapter {
    public GAMNetwork gamNetwork;

    @Override // io.bidmachine.NetworkAdapter
    public boolean isNetworkInitializationStatusCheckSupported() {
        return true;
    }

    public GAMAdapter() {
        this("gam", "", "3.8.0.3", 16);
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
        if (this.gamNetwork != null) {
            return new GAMBanner(this.gamNetwork);
        }
        throw new IllegalArgumentException("GAMNetwork is null");
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedFullscreenAd createInterstitial() {
        if (this.gamNetwork != null) {
            return new GAMInterstitial(this.gamNetwork);
        }
        throw new IllegalArgumentException("GAMNetwork is null");
    }

    @Override // io.bidmachine.NetworkAdapter
    public UnifiedFullscreenAd createRewarded() {
        if (this.gamNetwork != null) {
            return new GAMRewarded(this.gamNetwork);
        }
        throw new IllegalArgumentException("GAMNetwork is null");
    }

    public String getNetworkName() {
        return "GAM";
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
        String strRemoveFromNetworkParams2 = networkConfigParams.removeFromNetworkParams("waterfall_configurations");
        if (TextUtils.isEmpty(strRemoveFromNetworkParams2)) {
            callback.onFail("waterfall_configurations not provided");
            return;
        }
        Map<AdsFormat, GAMTypeConfig> gAMTypeConfigMap = toGAMTypeConfigMap(strRemoveFromNetworkParams2);
        if (gAMTypeConfigMap == null || gAMTypeConfigMap.isEmpty()) {
            callback.onFail("waterfall_configurations is empty");
            return;
        }
        GAMNetwork gAMNetwork = new GAMNetwork(applicationContext, versionWrapperFindVersionWrapper, getNetworkName(), gAMTypeConfigMap, networkConfigParams.removeFromNetworkParams("request_agent"), TimeUnit.SECONDS.toMillis(Utils.parseIntOrDefault(networkConfigParams.removeFromNetworkParams("expiration_time"), 3600)), Boolean.parseBoolean(networkConfigParams.removeFromNetworkParams("override_callbacks")));
        this.gamNetwork = gAMNetwork;
        gAMNetwork.init(applicationContext);
        this.gamNetwork.cache();
        callback.onSuccess();
    }

    @Override // io.bidmachine.HeaderBiddingAdapter
    public void onCollectHeaderBiddingParams(ContextProvider contextProvider, UnifiedAdRequestParams adRequestParams, NetworkAdUnit networkAdUnit, HeaderBiddingAdRequestParams hbAdRequestParams, HeaderBiddingCollectParamsCallback collectCallback) throws Throwable {
        String mediationParameter = networkAdUnit.getMediationParameter("ad_unit_id");
        if (TextUtils.isEmpty(mediationParameter)) {
            collectCallback.onCollectFail(BMError.adapterGetsParameter("ad_unit_id"));
            return;
        }
        GAMNetwork gAMNetwork = this.gamNetwork;
        if (gAMNetwork == null) {
            collectCallback.onCollectFail(BMError.adapter("GAM network is null"));
            return;
        }
        GAMUnitData gAMUnitDataReserveMostExpensiveGAMAd = gAMNetwork.reserveMostExpensiveGAMAd(networkAdUnit, mediationParameter);
        this.gamNetwork.cache(adRequestParams.getAdRequestParameters().getAdsFormat());
        if (gAMUnitDataReserveMostExpensiveGAMAd == null) {
            collectCallback.onCollectFail(BMError.adapter("Can't find idle ad"));
            return;
        }
        HashMap map = new HashMap();
        map.put("ad_unit_id", gAMUnitDataReserveMostExpensiveGAMAd.getAdUnitId());
        map.put("score", String.valueOf(gAMUnitDataReserveMostExpensiveGAMAd.getScore()));
        map.put("price", String.valueOf(gAMUnitDataReserveMostExpensiveGAMAd.getPrice()));
        collectCallback.onCollectFinished(map);
    }

    @Override // io.bidmachine.NetworkAdapter
    public void onLossAuction(NetworkAdUnit networkAdUnit) throws Throwable {
        GAMNetwork gAMNetwork = this.gamNetwork;
        if (gAMNetwork != null) {
            gAMNetwork.unReserveGAMAd(networkAdUnit);
        }
    }

    @Override // io.bidmachine.NetworkAdapter
    public void clearAuction(NetworkAdUnit networkAdUnit) throws Throwable {
        GAMNetwork gAMNetwork = this.gamNetwork;
        if (gAMNetwork != null) {
            gAMNetwork.unReserveGAMAd(networkAdUnit);
        }
    }

    public final Map<AdsFormat, GAMTypeConfig> toGAMTypeConfigMap(String json) {
        GAMTypeConfig gAMTypeConfigCreate;
        HashMap map = new HashMap();
        try {
            JSONArray jSONArray = new JSONArray(json);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null && (gAMTypeConfigCreate = GAMTypeConfigFactory.create(jSONObjectOptJSONObject)) != null) {
                    map.put(gAMTypeConfigCreate.getAdsFormat(), gAMTypeConfigCreate);
                }
            }
            return map;
        } catch (Throwable unused) {
            return null;
        }
    }
}
