package com.ironsource.adapters.admob.nativead;

import android.text.TextUtils;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.AdFormat;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoader;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.mediationsdk.adapter.AbstractNativeAdAdapter;
import com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdSmashListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdOptionsPosition;
import com.ironsource.mediationsdk.adunit.adapter.utility.NativeAdProperties;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobNativeAdAdapter extends AbstractNativeAdAdapter<AdMobAdapter> {
    protected WeakReference<NativeAd> mAd;
    private NativeAdSmashListener mSmashListener;

    public AdMobNativeAdAdapter(AdMobAdapter adMobAdapter) {
        super(adMobAdapter);
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractNativeAdAdapter, com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public void initNativeAds(String str, String str2, JSONObject jSONObject, NativeAdSmashListener nativeAdSmashListener) {
        initNativeAdsInternal(jSONObject, nativeAdSmashListener);
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractNativeAdAdapter, com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public void initNativeAdForBidding(String str, String str2, JSONObject jSONObject, NativeAdSmashListener nativeAdSmashListener) {
        initNativeAdsInternal(jSONObject, nativeAdSmashListener);
    }

    public void initNativeAdsInternal(final JSONObject jSONObject, final NativeAdSmashListener nativeAdSmashListener) {
        String adUnitIdKey = getAdapter().getAdUnitIdKey();
        final String configStringValueFromKey = getConfigStringValueFromKey(jSONObject, adUnitIdKey);
        if (TextUtils.isEmpty(configStringValueFromKey)) {
            nativeAdSmashListener.onNativeAdInitFailed(ErrorBuilder.buildInitFailedError(getAdUnitIdMissingErrorString(adUnitIdKey), IronSourceConstants.NATIVE_AD_UNIT));
            return;
        }
        IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
        this.mSmashListener = nativeAdSmashListener;
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.nativead.AdMobNativeAdAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                if (AdMobNativeAdAdapter.this.getAdapter().getInitState() == AdMobAdapter.InitState.INIT_STATE_SUCCESS) {
                    IronLog.INTERNAL.verbose("onNativeAdInitSuccess - adUnitId = " + configStringValueFromKey);
                    nativeAdSmashListener.onNativeAdInitSuccess();
                    return;
                }
                if (AdMobNativeAdAdapter.this.getAdapter().getInitState() == AdMobAdapter.InitState.INIT_STATE_FAILED) {
                    IronLog.INTERNAL.verbose("onNativeAdInitFailed - adUnitId = " + configStringValueFromKey);
                    nativeAdSmashListener.onNativeAdInitFailed(ErrorBuilder.buildInitFailedError("AdMob sdk init failed", IronSourceConstants.NATIVE_AD_UNIT));
                    return;
                }
                AdMobNativeAdAdapter.this.getAdapter().initSDK(jSONObject);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractAdUnitAdapter, com.ironsource.mediationsdk.INetworkInitCallbackListener
    public void onNetworkInitCallbackSuccess() {
        NativeAdSmashListener nativeAdSmashListener = this.mSmashListener;
        if (nativeAdSmashListener != null) {
            nativeAdSmashListener.onNativeAdInitSuccess();
        }
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractAdUnitAdapter, com.ironsource.mediationsdk.INetworkInitCallbackListener
    public void onNetworkInitCallbackFailed(String str) {
        NativeAdSmashListener nativeAdSmashListener = this.mSmashListener;
        if (nativeAdSmashListener != null) {
            nativeAdSmashListener.onNativeAdInitFailed(ErrorBuilder.buildInitFailedError(str, IronSourceConstants.NATIVE_AD_UNIT));
        }
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractNativeAdAdapter, com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public void loadNativeAd(JSONObject jSONObject, JSONObject jSONObject2, NativeAdSmashListener nativeAdSmashListener) {
        loadNativeAdInternal(jSONObject, jSONObject2, null, nativeAdSmashListener);
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractNativeAdAdapter, com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public void loadNativeAdForBidding(JSONObject jSONObject, JSONObject jSONObject2, String str, NativeAdSmashListener nativeAdSmashListener) {
        loadNativeAdInternal(jSONObject, jSONObject2, str, nativeAdSmashListener);
    }

    public void loadNativeAdInternal(JSONObject jSONObject, final JSONObject jSONObject2, final String str, final NativeAdSmashListener nativeAdSmashListener) {
        final String configStringValueFromKey = getConfigStringValueFromKey(jSONObject, getAdapter().getAdUnitIdKey());
        IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
        final NativeAdProperties nativeAdProperties = getNativeAdProperties(jSONObject);
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.nativead.AdMobNativeAdAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AdOptionsPosition adOptionsPosition = nativeAdProperties.getAdOptionsPosition();
                    AdMobNativeAdListener adMobNativeAdListener = new AdMobNativeAdListener(AdMobNativeAdAdapter.this, configStringValueFromKey, nativeAdSmashListener);
                    if (str != null) {
                        IronLog.ADAPTER_API.verbose("loading with serverData");
                        NativeAdLoader.loadFromAdResponse(str, adMobNativeAdListener);
                    } else {
                        NativeAdLoader.load(AdMobNativeAdAdapter.this.getAdapter().createNativeAdRequest(configStringValueFromKey, AdMobNativeAdAdapter.this.getAdChoicesPlacement(adOptionsPosition), jSONObject2), adMobNativeAdListener);
                    }
                } catch (Exception e) {
                    nativeAdSmashListener.onNativeAdLoadFailed(ErrorBuilder.buildLoadFailedError("AdMobAdapter loadNativeAd exception " + e.getMessage()));
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractNativeAdAdapter, com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public void destroyNativeAd(JSONObject jSONObject) {
        final String configStringValueFromKey = getConfigStringValueFromKey(jSONObject, getAdapter().getAdUnitIdKey());
        IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.nativead.AdMobNativeAdAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                WeakReference<NativeAd> weakReference = AdMobNativeAdAdapter.this.mAd;
                if (weakReference == null || weakReference.get() == null) {
                    return;
                }
                try {
                    AdMobNativeAdAdapter.this.mSmashListener = null;
                    AdMobNativeAdAdapter.this.mAd.get().destroy();
                    AdMobNativeAdAdapter.this.mAd = null;
                } catch (Exception e) {
                    IronLog.INTERNAL.error("destroyNativeAd failed for adUnitId - " + configStringValueFromKey + " with an exception = " + e);
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adapter.AbstractNativeAdAdapter, com.ironsource.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public void collectNativeAdBiddingData(JSONObject jSONObject, JSONObject jSONObject2, BiddingDataCallback biddingDataCallback) {
        getAdapter().collectBiddingData(biddingDataCallback, AdFormat.NATIVE, null);
    }

    /* JADX INFO: renamed from: com.ironsource.adapters.admob.nativead.AdMobNativeAdAdapter$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$ironsource$mediationsdk$adunit$adapter$utility$AdOptionsPosition;

        static {
            int[] iArr = new int[AdOptionsPosition.values().length];
            $SwitchMap$com$ironsource$mediationsdk$adunit$adapter$utility$AdOptionsPosition = iArr;
            try {
                iArr[AdOptionsPosition.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ironsource$mediationsdk$adunit$adapter$utility$AdOptionsPosition[AdOptionsPosition.TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ironsource$mediationsdk$adunit$adapter$utility$AdOptionsPosition[AdOptionsPosition.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ironsource$mediationsdk$adunit$adapter$utility$AdOptionsPosition[AdOptionsPosition.BOTTOM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdChoicesPlacement getAdChoicesPlacement(AdOptionsPosition adOptionsPosition) {
        int i = AnonymousClass4.$SwitchMap$com$ironsource$mediationsdk$adunit$adapter$utility$AdOptionsPosition[adOptionsPosition.ordinal()];
        if (i == 1) {
            return AdChoicesPlacement.TOP_LEFT;
        }
        if (i == 2) {
            return AdChoicesPlacement.TOP_RIGHT;
        }
        if (i == 3) {
            return AdChoicesPlacement.BOTTOM_LEFT;
        }
        if (i == 4) {
            return AdChoicesPlacement.BOTTOM_RIGHT;
        }
        return AdChoicesPlacement.BOTTOM_LEFT;
    }
}
