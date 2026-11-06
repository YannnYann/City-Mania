package com.ironsource.adapters.vungle;

import android.content.Context;
import com.ironsource.adapters.vungle.VungleConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.metadata.MetaData;
import com.ironsource.mediationsdk.metadata.MetaDataUtils;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter;
import com.vungle.ads.BidTokenCallback;
import com.vungle.ads.InitializationListener;
import com.vungle.ads.VungleAds;
import com.vungle.ads.VungleError;
import com.vungle.ads.VunglePrivacySettings;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VungleAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class VungleAdapter extends LevelPlayBaseAdapter {
    private static final String GitHash = "7bd8c3d";
    public static final Companion Companion = new Companion(null);
    private static final AtomicBoolean wasInitCalled = new AtomicBoolean(false);
    private static Companion.InitState initState = Companion.InitState.INIT_STATE_NONE;
    private static final CopyOnWriteArrayList<NetworkInitializationListener> initCallbackListeners = new CopyOnWriteArrayList<>();

    public static final AdapterErrorType getLoadErrorType(VungleError vungleError) {
        return Companion.getLoadErrorType(vungleError);
    }

    public static final String networkAdapterVersion() {
        return Companion.networkAdapterVersion();
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface
    public boolean isUsingActivityBeforeImpression(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        return false;
    }

    /* JADX INFO: compiled from: VungleAdapter.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: VungleAdapter.kt */
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

        public final AdapterErrorType getLoadErrorType(VungleError adError) {
            Intrinsics.checkNotNullParameter(adError, "adError");
            if (adError.getCode() == 10001) {
                return AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL;
            }
            return AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL;
        }

        public final String networkAdapterVersion() {
            return "5.16.0";
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getAdapterVersion() {
        return "5.16.0";
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getNetworkSDKVersion() {
        return VungleAds.Companion.getSdkVersion();
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public void init(AdData adData, Context context, NetworkInitializationListener networkInitializationListener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(context, "context");
        String string = adData.getString(VungleConstants.APP_ID_KEY);
        if (string == null || string.length() == 0) {
            String str = String.format("Missing params - %s", Arrays.copyOf(new Object[]{VungleConstants.APP_ID_KEY}, 1));
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
            IronLog.INTERNAL.error(VungleConstants.Logs.SDK_INIT_FAILED);
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitFailed(1000, VungleConstants.Logs.SDK_INIT_FAILED);
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
            String str2 = String.format(VungleConstants.Logs.APP_ID, Arrays.copyOf(new Object[]{string}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            ironLog.verbose(str2);
            VungleAds.Companion companion = VungleAds.Companion;
            companion.setIntegrationName(VungleConstants.MEDIATION_NAME, "5.16.0");
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            companion.init(applicationContext, string, new InitializationListener() { // from class: com.ironsource.adapters.vungle.VungleAdapter.init.2
                @Override // com.vungle.ads.InitializationListener
                public void onSuccess() {
                    VungleAdapter.this.initializationSuccess();
                }

                @Override // com.vungle.ads.InitializationListener
                public void onError(VungleError vungleError) {
                    Intrinsics.checkNotNullParameter(vungleError, "vungleError");
                    VungleAdapter.this.initializationFailure(vungleError.getCode(), vungleError.getErrorMessage());
                }
            });
        }
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
        String valueForType = MetaDataUtils.formatValueForType(str2, MetaData.MetaDataValueTypes.META_DATA_VALUE_BOOLEAN);
        Intrinsics.checkNotNullExpressionValue(valueForType, "formatValueForType(...)");
        if (MetaDataUtils.isValidCCPAMetaData(str, str2)) {
            setCCPAValue(MetaDataUtils.getMetaDataBooleanValue(str2));
        } else if (MetaDataUtils.isValidMetaData(str, VungleConstants.META_DATA_VUNGLE_COPPA_KEY, valueForType)) {
            setCOPPAValue(MetaDataUtils.getMetaDataBooleanValue(valueForType));
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterConsentInterface
    public void setConsent(boolean z) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format(VungleConstants.Logs.CONSENT, Arrays.copyOf(new Object[]{Boolean.valueOf(z)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        VunglePrivacySettings.setGDPRStatus(z, VungleConstants.META_DATA_VUNGLE_CONSENT_MESSAGE_VERSION);
    }

    private final void setCCPAValue(boolean z) {
        boolean z2 = !z;
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("ccpa = %s", Arrays.copyOf(new Object[]{Boolean.valueOf(z2)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        VunglePrivacySettings.setCCPAStatus(z2);
    }

    private final void setCOPPAValue(boolean z) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("coppa = %s", Arrays.copyOf(new Object[]{Boolean.valueOf(z)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        VunglePrivacySettings.setCOPPAStatus(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initializationSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose(VungleConstants.Logs.INIT_SUCCESS);
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void initializationFailure(int i, String str) {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str2 = String.format(VungleConstants.Logs.INIT_FAILED, Arrays.copyOf(new Object[]{Integer.valueOf(i), str}, 2));
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

    public final void collectBiddingData$vungleadapter_release(Context context, final BiddingDataCallback biddingDataCallback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        VungleAds.Companion companion = VungleAds.Companion;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        companion.getBiddingToken(applicationContext, new BidTokenCallback() { // from class: com.ironsource.adapters.vungle.VungleAdapter$collectBiddingData$1
            @Override // com.vungle.ads.BidTokenCallback
            public void onBidTokenCollected(String bidToken) {
                Intrinsics.checkNotNullParameter(bidToken, "bidToken");
                HashMap map = new HashMap();
                String networkSDKVersion = this.this$0.getNetworkSDKVersion();
                IronLog ironLog = IronLog.ADAPTER_API;
                String str = String.format(VungleConstants.Logs.TOKEN, Arrays.copyOf(new Object[]{networkSDKVersion, bidToken}, 2));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                ironLog.verbose(str);
                map.put("sdkVersion", networkSDKVersion);
                map.put("token", bidToken);
                biddingDataCallback.onSuccess(map);
            }

            @Override // com.vungle.ads.BidTokenCallback
            public void onBidTokenError(String errorMessage) {
                Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
                BiddingDataCallback biddingDataCallback2 = biddingDataCallback;
                String str = String.format(VungleConstants.Logs.TOKEN_FAILURE, Arrays.copyOf(new Object[]{errorMessage}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                biddingDataCallback2.onFailure(str);
            }
        });
    }
}
