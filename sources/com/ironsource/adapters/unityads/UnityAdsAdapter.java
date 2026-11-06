package com.ironsource.adapters.unityads;

import android.content.Context;
import com.ironsource.adapters.unityads.UnityAdsConstants;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.metadata.MetaData;
import com.ironsource.mediationsdk.metadata.MetaDataUtils;
import com.unity3d.ads.AdFormat;
import com.unity3d.ads.BannerSize;
import com.unity3d.ads.IUnityAdsTokenListener;
import com.unity3d.ads.InitializationConfiguration;
import com.unity3d.ads.InitializationListener;
import com.unity3d.ads.LogLevel;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.TokenConfiguration;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsError;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: UnityAdsAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class UnityAdsAdapter extends LevelPlayBaseAdapter {
    private static final String GitHash = "924c844";
    private final Object unityAdsStorageLock = new Object();
    public static final Companion Companion = new Companion(null);
    private static final MediationInfo mediationInfo = new MediationInfo(UnityAdsConstants.MEDIATION_NAME, LevelPlay.getSdkVersion(), "5.13.0");
    private static final AtomicBoolean wasInitCalled = new AtomicBoolean(false);
    private static Companion.InitState initState = Companion.InitState.INIT_STATE_NONE;
    private static final CopyOnWriteArrayList<NetworkInitializationListener> initCallbackListeners = new CopyOnWriteArrayList<>();

    public static final AdapterErrorType getLoadErrorType(UnityAdsError unityAdsError) {
        return Companion.getLoadErrorType(unityAdsError);
    }

    public static final String networkAdapterVersion() {
        return Companion.networkAdapterVersion();
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface
    public boolean isUsingActivityBeforeImpression(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        return false;
    }

    /* JADX INFO: compiled from: UnityAdsAdapter.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: UnityAdsAdapter.kt */
        public static final class InitState {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ InitState[] $VALUES;
            public static final InitState INIT_STATE_NONE = new InitState("INIT_STATE_NONE", 0);
            public static final InitState INIT_STATE_IN_PROGRESS = new InitState("INIT_STATE_IN_PROGRESS", 1);
            public static final InitState INIT_STATE_SUCCESS = new InitState("INIT_STATE_SUCCESS", 2);
            public static final InitState INIT_STATE_FAILED = new InitState("INIT_STATE_FAILED", 3);

            private static final /* synthetic */ InitState[] $values() {
                return new InitState[]{INIT_STATE_NONE, INIT_STATE_IN_PROGRESS, INIT_STATE_SUCCESS, INIT_STATE_FAILED};
            }

            public static EnumEntries<InitState> getEntries() {
                return $ENTRIES;
            }

            private InitState(String str, int i) {
            }

            static {
                InitState[] initStateArr$values = $values();
                $VALUES = initStateArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(initStateArr$values);
            }

            public static InitState valueOf(String str) {
                return (InitState) Enum.valueOf(InitState.class, str);
            }

            public static InitState[] values() {
                return (InitState[]) $VALUES.clone();
            }
        }

        public final MediationInfo getMediationInfo$unityadsadapter_release() {
            return UnityAdsAdapter.mediationInfo;
        }

        public final AdapterErrorType getLoadErrorType(UnityAdsError unityAdsError) {
            if (unityAdsError != null && unityAdsError.getCode() == 52100) {
                return AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL;
            }
            return AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL;
        }

        public final String networkAdapterVersion() {
            return "5.13.0";
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getAdapterVersion() {
        return "5.13.0";
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getNetworkSDKVersion() {
        return UnityAds.getVersion();
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public void init(AdData adData, Context context, NetworkInitializationListener networkInitializationListener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(context, "context");
        String string = adData.getString("sourceId");
        if (string == null || string.length() == 0) {
            String str = String.format("Missing params - %s", Arrays.copyOf(new Object[]{"sourceId"}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            IronLog.INTERNAL.error(str);
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitFailed(1002, str);
                return;
            }
            return;
        }
        if (initState == Companion.InitState.INIT_STATE_SUCCESS) {
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitSuccess();
                return;
            }
            return;
        }
        if (initState == Companion.InitState.INIT_STATE_FAILED) {
            IronLog.INTERNAL.error(UnityAdsConstants.Logs.SDK_INIT_FAILED);
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitFailed(1000, UnityAdsConstants.Logs.SDK_INIT_FAILED);
                return;
            }
            return;
        }
        if ((initState == Companion.InitState.INIT_STATE_NONE || initState == Companion.InitState.INIT_STATE_IN_PROGRESS) && networkInitializationListener != null) {
            initCallbackListeners.add(networkInitializationListener);
        }
        if (wasInitCalled.compareAndSet(false, true)) {
            initState = Companion.InitState.INIT_STATE_IN_PROGRESS;
            IronLog ironLog = IronLog.ADAPTER_API;
            String str2 = String.format("sourceId = %s", Arrays.copyOf(new Object[]{string}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            ironLog.verbose(str2);
            InitializationConfiguration.Builder builderWithMediationInfo = new InitializationConfiguration.Builder(string).withTestMode(false).withMediationInfo(mediationInfo);
            if (isAdaptersDebugEnabled()) {
                builderWithMediationInfo.withLogLevel(LogLevel.DEBUG);
            }
            Map<String, String> mapBuildInitExtras = buildInitExtras(adData);
            if (!mapBuildInitExtras.isEmpty()) {
                builderWithMediationInfo.withExtras(mapBuildInitExtras);
            }
            UnityAds.initialize(builderWithMediationInfo.build(), new InitializationListener() { // from class: com.ironsource.adapters.unityads.UnityAdsAdapter$$ExternalSyntheticLambda0
                @Override // com.unity3d.ads.InitializationListener
                public final void onInitializationComplete(UnityAdsError unityAdsError) {
                    UnityAdsAdapter.init$lambda$2(this.f$0, unityAdsError);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void init$lambda$2(UnityAdsAdapter unityAdsAdapter, UnityAdsError unityAdsError) {
        if (unityAdsError == null) {
            unityAdsAdapter.initializationSuccess();
            return;
        }
        int code = unityAdsError.getCode();
        String message = unityAdsError.getMessage();
        if (message == null) {
            message = "";
        }
        unityAdsAdapter.initializationFailure(code, message);
    }

    private final void initializationSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose();
        initState = Companion.InitState.INIT_STATE_SUCCESS;
        Iterator<NetworkInitializationListener> it = initCallbackListeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            NetworkInitializationListener next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            next.onInitSuccess();
        }
        initCallbackListeners.clear();
    }

    private final void initializationFailure(int i, String str) {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str2 = String.format(UnityAdsConstants.Logs.INIT_FAILED, Arrays.copyOf(new Object[]{Integer.valueOf(i), str}, 2));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        ironLog.error(str2);
        initState = Companion.InitState.INIT_STATE_FAILED;
        Iterator<NetworkInitializationListener> it = initCallbackListeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            NetworkInitializationListener next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            next.onInitFailed(i, str);
        }
        initCallbackListeners.clear();
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterConsentInterface
    public void setConsent(boolean z) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("consent = %s", Arrays.copyOf(new Object[]{Boolean.valueOf(z)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        setUnityAdsMetaData(UnityAdsConstants.CONSENT_GDPR, z);
        UnityAds.setUserConsent(Boolean.valueOf(z));
    }

    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterMetaDataInterface
    public void setMetaData(String str, List<String> list) {
        String str2;
        List<String> list2 = list;
        if (list2 == null || list2.isEmpty() || (str2 = list.get(0)) == null) {
            return;
        }
        IronLog ironLog = IronLog.ADAPTER_API;
        String str3 = String.format("key = %s, value = %s", Arrays.copyOf(new Object[]{str == null ? "" : str, str2}, 2));
        Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
        ironLog.verbose(str3);
        if (MetaDataUtils.isValidCCPAMetaData(str, str2)) {
            setCCPAValue(MetaDataUtils.getMetaDataBooleanValue(str2));
            return;
        }
        String valueForType = MetaDataUtils.formatValueForType(str2, MetaData.MetaDataValueTypes.META_DATA_VALUE_BOOLEAN);
        if (MetaDataUtils.isValidMetaData(str, UnityAdsConstants.UNITYADS_METADATA_COPPA_KEY, valueForType)) {
            setCOPPAValue(MetaDataUtils.getMetaDataBooleanValue(valueForType));
        }
    }

    private final void setCCPAValue(boolean z) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("ccpa = %s", Arrays.copyOf(new Object[]{Boolean.valueOf(z)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        setUnityAdsMetaData(UnityAdsConstants.CONSENT_CCPA, !z);
        UnityAds.setUserOptOut(Boolean.valueOf(z));
    }

    private final void setCOPPAValue(boolean z) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("coppa = %s", Arrays.copyOf(new Object[]{Boolean.valueOf(z)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        setUnityAdsMetaData(UnityAdsConstants.UNITYADS_COPPA, z);
        UnityAds.setNonBehavioral(Boolean.valueOf(z));
    }

    private final Map<String, String> buildInitExtras(AdData adData) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String string = adData.getString(UnityAdsConstants.UADS_INIT_BLOB);
        if (string != null && string.length() > 0) {
            linkedHashMap.put(UnityAdsConstants.UADS_INIT_BLOB, string);
        }
        Object obj = adData.getConfiguration().get("traits");
        Map map = obj instanceof Map ? (Map) obj : null;
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                String str = key instanceof String ? (String) key : null;
                String str2 = value instanceof String ? (String) value : null;
                if (str != null && str.length() != 0 && str2 != null && str2.length() != 0) {
                    linkedHashMap.put(str, str2);
                }
            }
        }
        return linkedHashMap;
    }

    private final void setUnityAdsMetaData(String str, boolean z) {
        IronLog ironLog = IronLog.INTERNAL;
        String str2 = String.format("key = %s, value = %s", Arrays.copyOf(new Object[]{str, Boolean.valueOf(z)}, 2));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        ironLog.verbose(str2);
        synchronized (this.unityAdsStorageLock) {
            com.unity3d.ads.metadata.MetaData metaData = new com.unity3d.ads.metadata.MetaData(ContextProvider.getInstance().getApplicationContext());
            metaData.set(str, Boolean.valueOf(z));
            metaData.commit();
            Unit unit = Unit.INSTANCE;
        }
    }

    public static /* synthetic */ void collectBiddingData$unityadsadapter_release$default(UnityAdsAdapter unityAdsAdapter, AdData adData, BiddingDataCallback biddingDataCallback, AdFormat adFormat, BannerSize bannerSize, int i, Object obj) {
        if ((i & 8) != 0) {
            bannerSize = null;
        }
        unityAdsAdapter.collectBiddingData$unityadsadapter_release(adData, biddingDataCallback, adFormat, bannerSize);
    }

    public final void collectBiddingData$unityadsadapter_release(AdData adData, final BiddingDataCallback biddingDataCallback, AdFormat adFormat, BannerSize bannerSize) {
        Map<String, Object> adUnitData;
        String string;
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        TokenConfiguration.Builder builderWithMediationInfo = new TokenConfiguration.Builder(adFormat).withMediationInfo(mediationInfo);
        if (adData != null && (string = adData.getString(UnityAdsConstants.ZONE_ID_KEY)) != null && !StringsKt__StringsKt.isBlank(string)) {
            builderWithMediationInfo.withPlacementId(string);
        }
        Object obj = (adData == null || (adUnitData = adData.getAdUnitData()) == null) ? null : adUnitData.get("adUnitId");
        String str = obj instanceof String ? (String) obj : null;
        if (str != null && !StringsKt__StringsKt.isBlank(str)) {
            builderWithMediationInfo.withMediationAdUnitId(str);
        }
        if (bannerSize != null) {
            builderWithMediationInfo.withBannerSize(bannerSize);
        }
        UnityAds.getToken(builderWithMediationInfo.build(), new IUnityAdsTokenListener() { // from class: com.ironsource.adapters.unityads.UnityAdsAdapter$$ExternalSyntheticLambda1
            @Override // com.unity3d.ads.IUnityAdsTokenListener
            public final void onUnityAdsTokenReady(String str2) {
                UnityAdsAdapter.collectBiddingData$lambda$10(biddingDataCallback, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void collectBiddingData$lambda$10(BiddingDataCallback biddingDataCallback, String str) {
        if (str != null && str.length() != 0) {
            IronLog ironLog = IronLog.ADAPTER_API;
            String str2 = String.format("token = %s", Arrays.copyOf(new Object[]{str}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            ironLog.verbose(str2);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("token", str);
            biddingDataCallback.onSuccess(linkedHashMap);
            return;
        }
        IronLog.ADAPTER_API.verbose(UnityAdsConstants.Logs.TOKEN_FAILURE);
        biddingDataCallback.onFailure(UnityAdsConstants.Logs.TOKEN_FAILURE);
    }
}
