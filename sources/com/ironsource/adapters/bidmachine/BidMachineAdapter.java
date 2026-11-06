package com.ironsource.adapters.bidmachine;

import android.content.Context;
import com.ironsource.adapters.bidmachine.BidMachineConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.metadata.MetaData;
import com.ironsource.mediationsdk.metadata.MetaDataUtils;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter;
import io.bidmachine.AdPlacementConfig;
import io.bidmachine.BidMachine;
import io.bidmachine.BidTokenCallback;
import io.bidmachine.InitializationCallback;
import io.bidmachine.utils.BMError;
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

/* JADX INFO: compiled from: BidMachineAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
public final class BidMachineAdapter extends LevelPlayBaseAdapter {
    private static final String GitHash = "4ee0027";
    public static final Companion Companion = new Companion(null);
    private static final AtomicBoolean wasInitCalled = new AtomicBoolean(false);
    private static Companion.InitState initState = Companion.InitState.INIT_STATE_NONE;
    private static final CopyOnWriteArrayList<NetworkInitializationListener> initListeners = new CopyOnWriteArrayList<>();

    public static final AdapterErrorType getLoadErrorType(BMError bMError) {
        return Companion.getLoadErrorType(bMError);
    }

    public static final String networkAdapterVersion() {
        return Companion.networkAdapterVersion();
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface
    public boolean isUsingActivityBeforeImpression(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        return false;
    }

    /* JADX INFO: compiled from: BidMachineAdapter.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: BidMachineAdapter.kt */
        public static final class InitState {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ InitState[] $VALUES;
            public static final InitState INIT_STATE_NONE = new InitState("INIT_STATE_NONE", 0);
            public static final InitState INIT_STATE_IN_PROGRESS = new InitState("INIT_STATE_IN_PROGRESS", 1);
            public static final InitState INIT_STATE_SUCCESS = new InitState("INIT_STATE_SUCCESS", 2);

            private static final /* synthetic */ InitState[] $values() {
                return new InitState[]{INIT_STATE_NONE, INIT_STATE_IN_PROGRESS, INIT_STATE_SUCCESS};
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

        public final AdapterErrorType getLoadErrorType(BMError error) {
            Intrinsics.checkNotNullParameter(error, "error");
            if (error.getCode() == 103) {
                return AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL;
            }
            return AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL;
        }

        public final String networkAdapterVersion() {
            return "5.8.0";
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getAdapterVersion() {
        return "5.8.0";
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getNetworkSDKVersion() {
        return "3.8.0";
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
                networkInitializationListener.onInitFailed(103, str);
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
        if ((initState == Companion.InitState.INIT_STATE_NONE || initState == Companion.InitState.INIT_STATE_IN_PROGRESS) && networkInitializationListener != null) {
            initListeners.add(networkInitializationListener);
        }
        if (wasInitCalled.compareAndSet(false, true)) {
            initState = Companion.InitState.INIT_STATE_IN_PROGRESS;
            IronLog ironLog = IronLog.ADAPTER_API;
            String str2 = String.format("sourceId = %s", Arrays.copyOf(new Object[]{string}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            ironLog.verbose(str2);
            BidMachine.setLoggingEnabled(isAdaptersDebugEnabled());
            BidMachine.initialize(context.getApplicationContext(), string, new InitializationCallback() { // from class: com.ironsource.adapters.bidmachine.BidMachineAdapter$$ExternalSyntheticLambda0
                @Override // io.bidmachine.InitializationCallback
                public final void onInitialized() {
                    this.f$0.initializationSuccess();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initializationSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose();
        initState = Companion.InitState.INIT_STATE_SUCCESS;
        Iterator<NetworkInitializationListener> it = initListeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            it.next().onInitSuccess();
        }
        initListeners.clear();
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
        } else if (MetaDataUtils.isValidMetaData(str, BidMachineConstants.META_DATA_COPPA_KEY, valueForType)) {
            setCOPPAValue(MetaDataUtils.getMetaDataBooleanValue(valueForType));
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterConsentInterface
    public void setConsent(boolean z) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("consent = %s", Arrays.copyOf(new Object[]{Boolean.valueOf(z)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        BidMachine.setSubjectToGDPR(Boolean.TRUE);
        BidMachine.setConsentConfig(z, null);
    }

    private final void setCCPAValue(boolean z) {
        String str;
        if (z) {
            str = BidMachineConstants.CCPA_NO_CONSENT_VALUE;
        } else {
            str = BidMachineConstants.CCPA_CONSENT_VALUE;
        }
        IronLog ironLog = IronLog.ADAPTER_API;
        String str2 = String.format(BidMachineConstants.Logs.CCPA, Arrays.copyOf(new Object[]{str}, 1));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        ironLog.verbose(str2);
        BidMachine.setUSPrivacyString(str);
    }

    private final void setCOPPAValue(boolean z) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format(BidMachineConstants.Logs.COPPA, Arrays.copyOf(new Object[]{Boolean.valueOf(z)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        BidMachine.setCoppa(Boolean.valueOf(z));
    }

    public final void collectBiddingData$bidmachineadapter_release(Context context, final BiddingDataCallback biddingDataCallback, AdPlacementConfig adPlacementConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        Intrinsics.checkNotNullParameter(adPlacementConfig, "adPlacementConfig");
        if (initState != Companion.InitState.INIT_STATE_SUCCESS) {
            IronLog.INTERNAL.error(BidMachineConstants.Logs.TOKEN_ERROR);
            String str = String.format(BidMachineConstants.Logs.TOKEN_FAILED, Arrays.copyOf(new Object[]{BidMachineConstants.Logs.TOKEN_ERROR}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            biddingDataCallback.onFailure(str);
            return;
        }
        BidMachine.getBidToken(context.getApplicationContext(), adPlacementConfig, new BidTokenCallback() { // from class: com.ironsource.adapters.bidmachine.BidMachineAdapter$$ExternalSyntheticLambda1
            @Override // io.bidmachine.BidTokenCallback
            public final void onCollected(String str2) {
                BidMachineAdapter.collectBiddingData$lambda$2(biddingDataCallback, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void collectBiddingData$lambda$2(BiddingDataCallback biddingDataCallback, String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        if (token.length() == 0) {
            IronLog.INTERNAL.error(BidMachineConstants.TOKEN_EMPTY);
            String str = String.format(BidMachineConstants.Logs.TOKEN_FAILED, Arrays.copyOf(new Object[]{BidMachineConstants.TOKEN_EMPTY}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            biddingDataCallback.onFailure(str);
            return;
        }
        IronLog ironLog = IronLog.ADAPTER_API;
        String str2 = String.format("token = %s", Arrays.copyOf(new Object[]{token}, 1));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        ironLog.verbose(str2);
        HashMap map = new HashMap();
        map.put("token", token);
        biddingDataCallback.onSuccess(map);
    }
}
