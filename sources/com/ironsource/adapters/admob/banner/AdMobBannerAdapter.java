package com.ironsource.adapters.admob.banner;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.AdView;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AdFormat;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoader;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.AdapterUtils;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.adapter.AbstractBannerAdapter;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.sdk.BannerSmashListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.unity3d.mediation.LevelPlayAdSize;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobBannerAdapter extends AbstractBannerAdapter<AdMobAdapter> {
    private static final String IS_NATIVE = "isNative";
    private final ConcurrentHashMap<String, AdView> mAdUnitIdToBannerAd;
    private final ConcurrentHashMap<String, BannerSmashListener> mAdUnitIdToListener;
    public final ConcurrentHashMap<String, NativeAd> mAdUnitIdToNativeBannerAd;

    public AdMobBannerAdapter(AdMobAdapter adMobAdapter) {
        super(adMobAdapter);
        this.mAdUnitIdToListener = new ConcurrentHashMap<>();
        this.mAdUnitIdToBannerAd = new ConcurrentHashMap<>();
        this.mAdUnitIdToNativeBannerAd = new ConcurrentHashMap<>();
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractBannerAdapter, com.ironsource.mediationsdk.sdk.BannerAdapterInterface
    public void initBanners(String str, String str2, JSONObject jSONObject, BannerSmashListener bannerSmashListener) {
        initBannersInternal(jSONObject, bannerSmashListener);
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractBannerAdapter, com.ironsource.mediationsdk.sdk.BannerAdapterInterface
    public void initBannerForBidding(String str, String str2, JSONObject jSONObject, BannerSmashListener bannerSmashListener) {
        initBannersInternal(jSONObject, bannerSmashListener);
    }

    private void initBannersInternal(JSONObject jSONObject, BannerSmashListener bannerSmashListener) {
        String adUnitIdKey = getAdapter().getAdUnitIdKey();
        String configStringValueFromKey = getConfigStringValueFromKey(jSONObject, adUnitIdKey);
        if (TextUtils.isEmpty(configStringValueFromKey)) {
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError(getAdUnitIdMissingErrorString(adUnitIdKey), "Banner"));
            return;
        }
        IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
        this.mAdUnitIdToListener.put(configStringValueFromKey, bannerSmashListener);
        if (getAdapter().getInitState() == AdMobAdapter.InitState.INIT_STATE_SUCCESS) {
            IronLog.INTERNAL.verbose("onBannerInitSuccess - adUnitId = " + configStringValueFromKey);
            bannerSmashListener.onBannerInitSuccess();
            return;
        }
        if (getAdapter().getInitState() == AdMobAdapter.InitState.INIT_STATE_FAILED) {
            IronLog.INTERNAL.verbose("onBannerInitFailed - adUnitId = " + configStringValueFromKey);
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("AdMob sdk init failed", "Banner"));
            return;
        }
        getAdapter().initSDK(jSONObject);
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractAdUnitAdapter, com.ironsource.mediationsdk.INetworkInitCallbackListener
    public void onNetworkInitCallbackSuccess() {
        Iterator<BannerSmashListener> it = this.mAdUnitIdToListener.values().iterator();
        while (it.hasNext()) {
            it.next().onBannerInitSuccess();
        }
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractAdUnitAdapter, com.ironsource.mediationsdk.INetworkInitCallbackListener
    public void onNetworkInitCallbackFailed(String str) {
        Iterator<BannerSmashListener> it = this.mAdUnitIdToListener.values().iterator();
        while (it.hasNext()) {
            it.next().onBannerInitFailed(ErrorBuilder.buildInitFailedError(str, "Banner"));
        }
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractBannerAdapter, com.ironsource.mediationsdk.sdk.BannerAdapterInterface
    public void loadBanner(JSONObject jSONObject, JSONObject jSONObject2, ISBannerSize iSBannerSize, BannerSmashListener bannerSmashListener) {
        loadBannerInternal(jSONObject, jSONObject2, null, iSBannerSize, bannerSmashListener);
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractBannerAdapter, com.ironsource.mediationsdk.sdk.BannerAdapterInterface
    public void loadBannerForBidding(JSONObject jSONObject, JSONObject jSONObject2, String str, ISBannerSize iSBannerSize, BannerSmashListener bannerSmashListener) {
        loadBannerInternal(jSONObject, jSONObject2, str, iSBannerSize, bannerSmashListener);
    }

    private void loadBannerInternal(final JSONObject jSONObject, final JSONObject jSONObject2, final String str, final ISBannerSize iSBannerSize, final BannerSmashListener bannerSmashListener) {
        final String configStringValueFromKey = getConfigStringValueFromKey(jSONObject, getAdapter().getAdUnitIdKey());
        IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
        if (iSBannerSize == null) {
            IronLog.INTERNAL.error("banner size is null");
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.buildNoConfigurationAvailableError("banner size is null"));
        } else {
            final boolean z = Boolean.parseBoolean(getConfigStringValueFromKey(jSONObject, IS_NATIVE));
            postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.banner.AdMobBannerAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (z) {
                            AdMobBannerAdapter.this.loadNativeBanner(iSBannerSize, bannerSmashListener, configStringValueFromKey, str, jSONObject);
                            return;
                        }
                        AdSize adSize = AdMobBannerAdapter.this.getAdSize(iSBannerSize, AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()));
                        if (adSize == null) {
                            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.unsupportedBannerSize(AdMobBannerAdapter.this.getAdapter().getProviderName()));
                            return;
                        }
                        AdView adView = new AdView(ContextProvider.getInstance().getApplicationContext());
                        adView.setDescendantFocusability(393216);
                        AdMobBannerAdListener adMobBannerAdListener = new AdMobBannerAdListener(bannerSmashListener, configStringValueFromKey, adView);
                        AdMobBannerAdapter.this.mAdUnitIdToBannerAd.put(configStringValueFromKey, adView);
                        if (str != null) {
                            IronLog.ADAPTER_API.verbose("loadAd with serverData");
                            adView.loadFromAdResponse(str, adMobBannerAdListener);
                        } else {
                            BannerAdRequest bannerAdRequestCreateBannerAdRequest = AdMobBannerAdapter.this.getAdapter().createBannerAdRequest(configStringValueFromKey, adSize, jSONObject2);
                            IronLog.ADAPTER_API.verbose("loadAd");
                            adView.loadAd(bannerAdRequestCreateBannerAdRequest, adMobBannerAdListener);
                        }
                    } catch (Exception e) {
                        bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.buildLoadFailedError("AdMobAdapter loadBanner exception " + e.getMessage()));
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadNativeBanner(ISBannerSize iSBannerSize, BannerSmashListener bannerSmashListener, String str, String str2, JSONObject jSONObject) {
        if (!isNativeBannerSizeSupported(iSBannerSize, AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()))) {
            IronLog.INTERNAL.error("size not supported, size = " + iSBannerSize.getDescription());
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.unsupportedBannerSize(getAdapter().getProviderName()));
            return;
        }
        IronLog ironLog = IronLog.ADAPTER_API;
        ironLog.verbose("adUnitId = " + str);
        NativeTemplateType nativeTemplateTypeCreateTemplateType = NativeTemplateType.createTemplateType(jSONObject, iSBannerSize);
        AdMobNativeBannerAdListener adMobNativeBannerAdListener = new AdMobNativeBannerAdListener(this, bannerSmashListener, str, iSBannerSize, nativeTemplateTypeCreateTemplateType);
        VideoOptions videoOptionsBuild = new VideoOptions.Builder().setStartMuted(true).build();
        if (str2 != null) {
            ironLog.verbose("loading native banner with serverData");
            NativeAdLoader.loadFromAdResponse(str2, adMobNativeBannerAdListener);
        } else {
            NativeAdLoader.load(new NativeAdRequest.Builder(str, Collections.singletonList(NativeAd.NativeAdType.NATIVE)).setVideoOptions(videoOptionsBuild).setAdChoicesPlacement(nativeTemplateTypeCreateTemplateType.getAdChoicesPlacement()).setMediaAspectRatio(nativeTemplateTypeCreateTemplateType.getMediaAspectRatio()).build(), adMobNativeBannerAdListener);
        }
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractBannerAdapter, com.ironsource.mediationsdk.sdk.BannerAdapterInterface
    public void destroyBanner(final JSONObject jSONObject) {
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.banner.AdMobBannerAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AdMobBannerAdapter adMobBannerAdapter = AdMobBannerAdapter.this;
                    String configStringValueFromKey = adMobBannerAdapter.getConfigStringValueFromKey(jSONObject, adMobBannerAdapter.getAdapter().getAdUnitIdKey());
                    IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
                    if (AdMobBannerAdapter.this.mAdUnitIdToBannerAd.containsKey(configStringValueFromKey)) {
                        AdView adView = (AdView) AdMobBannerAdapter.this.mAdUnitIdToBannerAd.get(configStringValueFromKey);
                        if (adView != null) {
                            adView.destroy();
                        }
                        AdMobBannerAdapter.this.mAdUnitIdToBannerAd.remove(configStringValueFromKey);
                    }
                    if (AdMobBannerAdapter.this.mAdUnitIdToNativeBannerAd.containsKey(configStringValueFromKey)) {
                        NativeAd nativeAd = AdMobBannerAdapter.this.mAdUnitIdToNativeBannerAd.get(configStringValueFromKey);
                        if (nativeAd != null) {
                            nativeAd.destroy();
                        }
                        AdMobBannerAdapter.this.mAdUnitIdToNativeBannerAd.remove(configStringValueFromKey);
                    }
                } catch (Exception e) {
                    IronLog.ADAPTER_API.error("e = " + e);
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractBannerAdapter, com.ironsource.mediationsdk.sdk.BannerAdapterInterface
    public void collectBannerBiddingData(JSONObject jSONObject, JSONObject jSONObject2, BiddingDataCallback biddingDataCallback) {
        ISBannerSize iSBannerSize;
        Bundle bundle = new Bundle();
        if (jSONObject2 != null && (iSBannerSize = (ISBannerSize) jSONObject2.opt("bannerSize")) != null && iSBannerSize.isAdaptive()) {
            AdSize adSize = getAdSize(iSBannerSize, AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()));
            bundle.putInt("adaptive_banner_w", adSize.getWidth());
            bundle.putInt("adaptive_banner_h", adSize.getHeight());
            IronLog.ADAPTER_API.verbose("adaptive banner width = " + adSize.getWidth() + ", height = " + adSize.getHeight());
        }
        getAdapter().collectBiddingData(biddingDataCallback, AdFormat.BANNER, bundle);
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractBannerAdapter, com.ironsource.mediationsdk.sdk.BannerAdapterInterface
    public int getAdaptiveHeight(int i) {
        int height = getAdaptiveBannerSize(i).getHeight();
        IronLog.ADAPTER_API.verbose("height - " + height + " for width - " + i);
        return height;
    }

    public AdSize getAdSize(ISBannerSize iSBannerSize, boolean z) {
        AdSize adSize;
        String description = iSBannerSize.getDescription();
        description.getClass();
        switch (description) {
            case "RECTANGLE":
                adSize = AdSize.MEDIUM_RECTANGLE;
                break;
            case "LARGE":
                adSize = AdSize.LARGE_BANNER;
                break;
            case "SMART":
                if (!z) {
                    adSize = AdSize.BANNER;
                    break;
                } else {
                    adSize = AdSize.LEADERBOARD;
                    break;
                }
                break;
            case "BANNER":
                adSize = AdSize.BANNER;
                break;
            case "CUSTOM":
                adSize = new AdSize(iSBannerSize.getWidth(), iSBannerSize.getHeight());
                break;
            default:
                adSize = null;
                break;
        }
        if (iSBannerSize.isAdaptive() && adSize != null) {
            LevelPlayAdSize levelPlayAdSize = iSBannerSize.toLevelPlayAdSize(ContextProvider.getInstance().getApplicationContext());
            AdSize adaptiveBannerSize = getAdaptiveBannerSize(levelPlayAdSize.getWidth());
            if (adaptiveBannerSize != null) {
                IronLog.INTERNAL.verbose("default height - " + adSize.getHeight() + " adMobAdaptive height - " + adaptiveBannerSize.getHeight() + " levelPlayAdaptive height - " + levelPlayAdSize.getHeight() + " default width - " + adSize.getWidth() + " levelPlayAdaptive width - " + levelPlayAdSize.getWidth());
                return adaptiveBannerSize;
            }
        }
        return adSize;
    }

    private static AdSize getAdaptiveBannerSize(int i) {
        return AdSize.getLargeAnchoredAdaptiveBannerAdSize(ContextProvider.getInstance().getApplicationContext(), i);
    }

    private boolean isNativeBannerSizeSupported(ISBannerSize iSBannerSize, boolean z) {
        String description = iSBannerSize.getDescription();
        description.getClass();
        switch (description) {
            case "RECTANGLE":
            case "LARGE":
            case "BANNER":
                return true;
            case "SMART":
                return !z;
            default:
                return false;
        }
    }
}
