package com.ironsource.adapters.admob;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.libraries.ads.mobile.sdk.MobileAds;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.AdFormat;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationStatus;
import com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.Signal;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalError;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.ironsource.adapters.admob.banner.AdMobBannerAdapter;
import com.ironsource.adapters.admob.interstitial.AdMobInterstitialAdapter;
import com.ironsource.adapters.admob.nativead.AdMobNativeAdAdapter;
import com.ironsource.adapters.admob.rewardedvideo.AdMobRewardedVideoAdapter;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.StringUtils;
import com.ironsource.mediationsdk.AbstractAdapter;
import com.ironsource.mediationsdk.AdapterNetworkData;
import com.ironsource.mediationsdk.INetworkInitCallbackListener;
import com.ironsource.mediationsdk.IntegrationData;
import com.ironsource.mediationsdk.LoadWhileShowSupportState;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.metadata.MetaData;
import com.ironsource.mediationsdk.metadata.MetaDataUtils;
import com.unity3d.mediation.LevelPlay;
import io.bidmachine.Framework;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobAdapter extends AbstractAdapter {
    private static final String AD_UNIT_ID = "adUnitId";
    public static final String CREATIVE_ID_KEY = "creativeId";
    private static final String EMPTY_STRING = "";
    private static final String GitHash = "8ccbcb8";
    private static final String NETWORK_DATA_CONTENT_MAPPING = "ContentMapping";
    private static final String NETWORK_DATA_CONTENT_RATING = "MaxAdContentRating";
    private static final String VERSION = "5.15.0";
    private static Boolean mCCPAValue;
    private static Boolean mConsent;
    private static String mContentMappingURLValue;
    private static RequestConfiguration.TagForChildDirectedTreatment mCoppaValue;
    private static RequestConfiguration.TagForUnderAgeOfConsent mEuValue;
    private static RequestConfiguration.MaxAdContentRating mRatingValue;
    private final String INIT_RESPONSE_REQUIRED;
    private final String NETWORK_ONLY_INIT;
    private final String PLATFORM_NAME;
    private final String REQUEST_AGENT;
    private static Set<String> mNeighboringContentMappingURLValue = new HashSet();
    private static final HashSet<INetworkInitCallbackListener> initCallbackListeners = new HashSet<>();
    public static InitState mInitState = InitState.INIT_STATE_NONE;
    private static final AtomicBoolean mWasInitCalled = new AtomicBoolean(false);

    public interface AdMobMaxContentRating {
        public static final String ADMOB_MAX_AD_CONTENT_RATING_G = "max_ad_content_rating_g";
        public static final String ADMOB_MAX_AD_CONTENT_RATING_MA = "max_ad_content_rating_ma";
        public static final String ADMOB_MAX_AD_CONTENT_RATING_PG = "max_ad_content_rating_pg";
        public static final String ADMOB_MAX_AD_CONTENT_RATING_T = "max_ad_content_rating_t";
    }

    public interface AdMobMetaDataFlags {
        public static final String ADMOB_CONTENT_MAPPING_KEY = "google_content_mapping";
        public static final String ADMOB_MAX_RATING_KEY = "admob_maxcontentrating";
        public static final String ADMOB_TFCD_KEY = "admob_tfcd";
        public static final String ADMOB_TFUA_KEY = "admob_tfua";
    }

    public enum InitState {
        INIT_STATE_NONE,
        INIT_STATE_IN_PROGRESS,
        INIT_STATE_SUCCESS,
        INIT_STATE_FAILED
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public boolean isUsingActivityBeforeImpression(LevelPlay.AdFormat adFormat) {
        return false;
    }

    public static AdMobAdapter startAdapter(String str) {
        return new AdMobAdapter(str);
    }

    private AdMobAdapter(String str) {
        super(str);
        this.REQUEST_AGENT = Framework.UNITY;
        this.PLATFORM_NAME = Framework.UNITY;
        this.NETWORK_ONLY_INIT = "networkOnlyInit";
        this.INIT_RESPONSE_REQUIRED = "initResponseRequired";
        IronLog.INTERNAL.verbose();
        setRewardedVideoAdapter(new AdMobRewardedVideoAdapter(this));
        setInterstitialAdapter(new AdMobInterstitialAdapter(this));
        setBannerAdapter(new AdMobBannerAdapter(this));
        setNativeAdAdapter(new AdMobNativeAdAdapter(this));
        this.mLWSSupportState = LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_INSTANCE;
    }

    public static IntegrationData getIntegrationData(Context context) {
        return new IntegrationData("AdMob", "5.15.0");
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public String getVersion() {
        return "5.15.0";
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return getAdapterSDKVersion();
    }

    public static String getAdapterSDKVersion() {
        return MobileAds.getVersion().toString();
    }

    public static String networkAdapterVersion() {
        return "5.15.0";
    }

    @SuppressLint({"MissingPermission"})
    public void initSDK(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("appId", "");
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.ADAPTER_API.error("appId is missing from config");
            initializationFailure();
            return;
        }
        if (mInitState == InitState.INIT_STATE_NONE || mInitState == InitState.INIT_STATE_IN_PROGRESS) {
            initCallbackListeners.add(this);
        }
        if (mWasInitCalled.compareAndSet(false, true)) {
            mInitState = InitState.INIT_STATE_IN_PROGRESS;
            IronLog ironLog = IronLog.ADAPTER_API;
            ironLog.verbose("appId = " + strOptString);
            boolean zOptBoolean = jSONObject.optBoolean("networkOnlyInit", true);
            final boolean zOptBoolean2 = jSONObject.optBoolean("initResponseRequired", false);
            InitializationConfig.Builder builder = new InitializationConfig.Builder(strOptString);
            if (zOptBoolean) {
                ironLog.verbose("disableMediationAdapterInitialization");
                builder.disableMediationAdapterInitialization();
            }
            final InitializationConfig initializationConfigBuild = builder.build();
            new Thread(new Runnable() { // from class: com.ironsource.adapters.admob.AdMobAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() throws InterruptedException {
                    AdMobAdapter.m930$r8$lambda$6pmdMnwK87mSkYsoC2yXoCItHM(this.f$0, zOptBoolean2, initializationConfigBuild);
                }
            }).start();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$6pmdMnwK87mSkYsoC2yXoCItH-M, reason: not valid java name */
    public static /* synthetic */ void m930$r8$lambda$6pmdMnwK87mSkYsoC2yXoCItHM(final AdMobAdapter adMobAdapter, boolean z, InitializationConfig initializationConfig) throws InterruptedException {
        adMobAdapter.getClass();
        if (z) {
            IronLog.ADAPTER_API.verbose("init and wait for callback");
            MobileAds.initialize(ContextProvider.getInstance().getApplicationContext(), initializationConfig, new OnAdapterInitializationCompleteListener() { // from class: com.ironsource.adapters.admob.AdMobAdapter$$ExternalSyntheticLambda1
                @Override // com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener
                public final void onAdapterInitializationComplete(InitializationStatus initializationStatus) {
                    AdMobAdapter.m931$r8$lambda$WGVPHZlKVlBiLOVHE386euRQb0(this.f$0, initializationStatus);
                }
            });
        } else {
            IronLog.ADAPTER_API.verbose("init without callback");
            MobileAds.initialize(ContextProvider.getInstance().getApplicationContext(), initializationConfig);
            adMobAdapter.initializationSuccess();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$WGVPHZlKVlBiLOV-HE386euRQb0, reason: not valid java name */
    public static /* synthetic */ void m931$r8$lambda$WGVPHZlKVlBiLOVHE386euRQb0(AdMobAdapter adMobAdapter, InitializationStatus initializationStatus) {
        adMobAdapter.getClass();
        AdapterStatus adapterStatus = initializationStatus.getAdapterStatusMap().get("com.google.android.gms.ads.MobileAds");
        if (adapterStatus != null) {
            IronLog.ADAPTER_API.verbose("AdMob initialization state = " + adapterStatus.getInitializationState() + ", description = " + adapterStatus.getDescription());
        }
        if (adapterStatus != null && adapterStatus.getInitializationState() == AdapterStatus.InitializationState.COMPLETE) {
            adMobAdapter.initializationSuccess();
            return;
        }
        String description = adapterStatus != null ? adapterStatus.getDescription() : "AdMob adapter status not found";
        IronLog.ADAPTER_API.error("AdMob init failed: " + description);
        adMobAdapter.initializationFailure();
    }

    private void initializationSuccess() {
        mInitState = InitState.INIT_STATE_SUCCESS;
        Iterator<INetworkInitCallbackListener> it = initCallbackListeners.iterator();
        while (it.hasNext()) {
            it.next().onNetworkInitCallbackSuccess();
        }
        initCallbackListeners.clear();
    }

    private void initializationFailure() {
        mInitState = InitState.INIT_STATE_FAILED;
        Iterator<INetworkInitCallbackListener> it = initCallbackListeners.iterator();
        while (it.hasNext()) {
            it.next().onNetworkInitCallbackFailed("AdMob sdk init failed");
        }
        initCallbackListeners.clear();
    }

    public InitState getInitState() {
        return mInitState;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public void setConsent(boolean z) {
        IronLog.ADAPTER_API.verbose("consent = " + z);
        mConsent = Boolean.valueOf(z);
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public void setMetaData(String str, List<String> list) {
        if (list.isEmpty()) {
            return;
        }
        if (list.size() > 1 && str.equalsIgnoreCase(AdMobMetaDataFlags.ADMOB_CONTENT_MAPPING_KEY)) {
            mNeighboringContentMappingURLValue = new HashSet(list);
            IronLog.ADAPTER_API.verbose("key = " + str + ", values = " + list);
            return;
        }
        String str2 = list.get(0);
        IronLog.ADAPTER_API.verbose("key = " + str + ", value = " + str2);
        if (MetaDataUtils.isValidCCPAMetaData(str, str2)) {
            setCCPAValue(MetaDataUtils.getMetaDataBooleanValue(str2));
        } else {
            setAdMobMetaDataValue(StringUtils.toLowerCase(str), StringUtils.toLowerCase(str2));
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNetworkDataInterface
    public void setNetworkData(AdapterNetworkData adapterNetworkData) {
        adapterNetworkData.allData();
        String str = (String) adapterNetworkData.dataByKeyIgnoreCase(NETWORK_DATA_CONTENT_MAPPING, String.class);
        if (str != null) {
            processContentMapping(str);
        }
        JSONArray jSONArray = (JSONArray) adapterNetworkData.dataByKeyIgnoreCase(NETWORK_DATA_CONTENT_MAPPING, JSONArray.class);
        if (jSONArray != null) {
            processContentMapping(jSONArray);
        }
        String str2 = (String) adapterNetworkData.dataByKeyIgnoreCase(NETWORK_DATA_CONTENT_RATING, String.class);
        if (str2 != null) {
            processContentRating(str2);
        }
    }

    private void processContentMapping(String str) {
        mContentMappingURLValue = str;
        IronLog.ADAPTER_API.verbose("key = ContentMapping, contentMappingValue = " + mContentMappingURLValue);
    }

    private void processContentMapping(JSONArray jSONArray) {
        mNeighboringContentMappingURLValue.clear();
        for (int i = 0; i < jSONArray.length(); i++) {
            mNeighboringContentMappingURLValue.add(jSONArray.optString(i));
        }
        IronLog.ADAPTER_API.verbose("key = ContentMapping, contentMappingValues = " + mNeighboringContentMappingURLValue.toString());
    }

    private void processContentRating(String str) {
        mRatingValue = getAdMobRatingValue(StringUtils.toLowerCase(str));
        IronLog.ADAPTER_API.verbose("key = MaxAdContentRating, inputValue = " + str + ", ratingValue = " + mRatingValue);
        setRequestConfiguration();
    }

    private void setCCPAValue(boolean z) {
        IronLog.ADAPTER_API.verbose("value = " + z);
        mCCPAValue = Boolean.valueOf(z);
    }

    private void setAdMobMetaDataValue(String str, String str2) {
        String valueForType;
        if (AdMobMetaDataFlags.ADMOB_TFCD_KEY.equals(str) || AdMobMetaDataFlags.ADMOB_TFUA_KEY.equals(str)) {
            valueForType = MetaDataUtils.formatValueForType(str2, MetaData.MetaDataValueTypes.META_DATA_VALUE_BOOLEAN);
            if (TextUtils.isEmpty(valueForType)) {
                IronLog.ADAPTER_API.verbose("MetaData value for key " + str + " is invalid " + str2);
                return;
            }
        } else {
            valueForType = str2;
        }
        str.getClass();
        switch (str) {
            case "google_content_mapping":
                mContentMappingURLValue = str2;
                IronLog.ADAPTER_API.verbose("key = " + str + ", contentMappingValue = " + mContentMappingURLValue);
                break;
            case "admob_maxcontentrating":
                mRatingValue = getAdMobRatingValue(valueForType);
                IronLog.ADAPTER_API.verbose("key = " + str + ", ratingValue = " + mRatingValue);
                break;
            case "admob_tfcd":
                mCoppaValue = getAdMobCoppaValue(valueForType);
                IronLog.ADAPTER_API.verbose("key = " + str + ", coppaValue = " + mCoppaValue);
                break;
            case "admob_tfua":
                mEuValue = getAdMobEuValue(valueForType);
                IronLog.ADAPTER_API.verbose("key = " + str + ", euValue = " + mEuValue);
                break;
        }
        setRequestConfiguration();
    }

    private RequestConfiguration.TagForChildDirectedTreatment getAdMobCoppaValue(String str) {
        if (MetaDataUtils.getMetaDataBooleanValue(str)) {
            return RequestConfiguration.TagForChildDirectedTreatment.TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE;
        }
        return RequestConfiguration.TagForChildDirectedTreatment.TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE;
    }

    private RequestConfiguration.TagForUnderAgeOfConsent getAdMobEuValue(String str) {
        if (MetaDataUtils.getMetaDataBooleanValue(str)) {
            return RequestConfiguration.TagForUnderAgeOfConsent.TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE;
        }
        return RequestConfiguration.TagForUnderAgeOfConsent.TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE;
    }

    private RequestConfiguration.MaxAdContentRating getAdMobRatingValue(String str) {
        if (TextUtils.isEmpty(str)) {
            IronLog.INTERNAL.error("The ratingValue is null");
            return null;
        }
        str.getClass();
        switch (str) {
            case "max_ad_content_rating_ma":
                break;
            case "max_ad_content_rating_pg":
                break;
            case "max_ad_content_rating_g":
                break;
            case "max_ad_content_rating_t":
                break;
            default:
                IronLog.INTERNAL.error("The ratingValue = " + str + " is undefine");
                break;
        }
        return null;
    }

    public String getAdUnitIdKey() {
        return "adUnitId";
    }

    public AdRequest createAdRequest(String str, JSONObject jSONObject) {
        AdRequest.Builder builder = new AdRequest.Builder(str);
        builder.setRequestAgent(Framework.UNITY);
        if (!TextUtils.isEmpty(mContentMappingURLValue)) {
            IronLog.ADAPTER_API.verbose("mContentMappingURLValue = " + mContentMappingURLValue);
            builder.setContentUrl(mContentMappingURLValue);
        }
        if (!mNeighboringContentMappingURLValue.isEmpty()) {
            IronLog.ADAPTER_API.verbose("mNeighboringContentMappingURLValue = " + mNeighboringContentMappingURLValue);
            builder.setNeighboringContentUrls(mNeighboringContentMappingURLValue);
        }
        setRequestConfiguration();
        builder.setGoogleExtrasBundle(createExtrasBundle(jSONObject));
        return builder.build();
    }

    public BannerAdRequest createBannerAdRequest(String str, AdSize adSize, JSONObject jSONObject) {
        BannerAdRequest.Builder builder = new BannerAdRequest.Builder(str, adSize);
        builder.setRequestAgent(Framework.UNITY);
        if (!TextUtils.isEmpty(mContentMappingURLValue)) {
            IronLog.ADAPTER_API.verbose("mContentMappingURLValue = " + mContentMappingURLValue);
            builder.setContentUrl(mContentMappingURLValue);
        }
        if (!mNeighboringContentMappingURLValue.isEmpty()) {
            IronLog.ADAPTER_API.verbose("mNeighboringContentMappingURLValue = " + mNeighboringContentMappingURLValue);
            builder.setNeighboringContentUrls(mNeighboringContentMappingURLValue);
        }
        setRequestConfiguration();
        builder.setGoogleExtrasBundle(createExtrasBundle(jSONObject));
        return builder.build();
    }

    public NativeAdRequest createNativeAdRequest(String str, AdChoicesPlacement adChoicesPlacement, JSONObject jSONObject) {
        NativeAdRequest.Builder builder = new NativeAdRequest.Builder(str, Collections.singletonList(NativeAd.NativeAdType.NATIVE));
        builder.setRequestAgent(Framework.UNITY);
        builder.setAdChoicesPlacement(adChoicesPlacement);
        if (!TextUtils.isEmpty(mContentMappingURLValue)) {
            IronLog.ADAPTER_API.verbose("mContentMappingURLValue = " + mContentMappingURLValue);
            builder.setContentUrl(mContentMappingURLValue);
        }
        if (!mNeighboringContentMappingURLValue.isEmpty()) {
            IronLog.ADAPTER_API.verbose("mNeighboringContentMappingURLValue = " + mNeighboringContentMappingURLValue);
            builder.setNeighboringContentUrls(mNeighboringContentMappingURLValue);
        }
        setRequestConfiguration();
        builder.setGoogleExtrasBundle(createExtrasBundle(jSONObject));
        return builder.build();
    }

    private void setRequestConfiguration() {
        RequestConfiguration.Builder builder = new RequestConfiguration.Builder();
        RequestConfiguration.TagForChildDirectedTreatment tagForChildDirectedTreatment = mCoppaValue;
        RequestConfiguration requestConfigurationBuild = tagForChildDirectedTreatment != null ? builder.setTagForChildDirectedTreatment(tagForChildDirectedTreatment).build() : null;
        RequestConfiguration.TagForUnderAgeOfConsent tagForUnderAgeOfConsent = mEuValue;
        if (tagForUnderAgeOfConsent != null) {
            requestConfigurationBuild = builder.setTagForUnderAgeOfConsent(tagForUnderAgeOfConsent).build();
        }
        RequestConfiguration.MaxAdContentRating maxAdContentRating = mRatingValue;
        if (maxAdContentRating != null) {
            requestConfigurationBuild = builder.setMaxAdContentRating(maxAdContentRating).build();
        }
        if (requestConfigurationBuild != null) {
            MobileAds.setRequestConfiguration(requestConfigurationBuild);
        }
    }

    public static boolean isNoFillError(LoadAdError.ErrorCode errorCode) {
        return errorCode == LoadAdError.ErrorCode.NO_FILL;
    }

    public void collectBiddingData(final BiddingDataCallback biddingDataCallback, AdFormat adFormat, Bundle bundle) {
        if (mInitState == InitState.INIT_STATE_NONE) {
            IronLog.INTERNAL.verbose("returning null as token since init hasn't started");
            biddingDataCallback.onFailure("returning null as token since init hasn't started - AdMob");
            return;
        }
        IronLog.ADAPTER_API.verbose(adFormat.toString());
        SignalRequest signalRequestCreateSignalRequest = createSignalRequest(adFormat, bundle);
        if (signalRequestCreateSignalRequest == null) {
            String str = "unsupported ad format for signal generation: " + adFormat;
            IronLog.INTERNAL.error(str);
            biddingDataCallback.onFailure(str + " - AdMob");
            return;
        }
        MobileAds.generateSignal(signalRequestCreateSignalRequest, new SignalGenerationCallback() { // from class: com.ironsource.adapters.admob.AdMobAdapter.1
            @Override // com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback
            public void onSuccess(Signal signal) {
                String signalString = signal.getSignalString() != null ? signal.getSignalString() : "";
                String coreSDKVersion = AdMobAdapter.this.getCoreSDKVersion();
                IronLog.ADAPTER_API.verbose("token = " + signalString + ", sdkVersion = " + coreSDKVersion);
                HashMap map = new HashMap();
                map.put("token", signalString);
                map.put("sdkVersion", coreSDKVersion);
                biddingDataCallback.onSuccess(map);
            }

            @Override // com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback
            public void onFailure(SignalError signalError) {
                biddingDataCallback.onFailure("failed to receive token - AdMob " + signalError.getMessage());
            }
        });
    }

    /* JADX INFO: renamed from: com.ironsource.adapters.admob.AdMobAdapter$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$google$android$libraries$ads$mobile$sdk$common$AdFormat;

        static {
            int[] iArr = new int[AdFormat.values().length];
            $SwitchMap$com$google$android$libraries$ads$mobile$sdk$common$AdFormat = iArr;
            try {
                iArr[AdFormat.INTERSTITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$android$libraries$ads$mobile$sdk$common$AdFormat[AdFormat.REWARDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$android$libraries$ads$mobile$sdk$common$AdFormat[AdFormat.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$android$libraries$ads$mobile$sdk$common$AdFormat[AdFormat.NATIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SignalRequest createSignalRequest(AdFormat adFormat, Bundle bundle) {
        int i = AnonymousClass2.$SwitchMap$com$google$android$libraries$ads$mobile$sdk$common$AdFormat[adFormat.ordinal()];
        if (i == 1) {
            return new InterstitialSignalRequest.Builder("requester_type_2").build();
        }
        if (i == 2) {
            return new RewardedSignalRequest.Builder("requester_type_2").build();
        }
        if (i == 3) {
            return ((BannerSignalRequest.Builder) new BannerSignalRequest.Builder("requester_type_2").setGoogleExtrasBundle(bundle)).build();
        }
        if (i != 4) {
            return null;
        }
        return new NativeSignalRequest.Builder("requester_type_2").build();
    }

    private Bundle createExtrasBundle(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        bundle.putString("platform_name", Framework.UNITY);
        boolean zOptBoolean = false;
        if (jSONObject != null) {
            String strOptString = jSONObject.optString("requestId", "");
            zOptBoolean = jSONObject.optBoolean("isHybrid", false);
            if (!strOptString.isEmpty()) {
                bundle.putString("placement_req_id", strOptString);
                IronLog.INTERNAL.verbose("adData requestId = " + strOptString + ", isHybrid = " + zOptBoolean);
            }
        } else {
            IronLog.INTERNAL.verbose("adData is null, using default hybridMode = false");
        }
        bundle.putString("is_hybrid_setup", String.valueOf(zOptBoolean));
        Boolean bool = mConsent;
        if (bool != null || mCCPAValue != null) {
            if (bool != null && !bool.booleanValue()) {
                IronLog.ADAPTER_API.verbose("mConsent = " + mConsent);
                bundle.putString("npa", "1");
            }
            if (mCCPAValue != null) {
                IronLog.ADAPTER_API.verbose("mCCPAValue = " + mCCPAValue);
                bundle.putInt("rdp", mCCPAValue.booleanValue() ? 1 : 0);
            }
        }
        return bundle;
    }
}
