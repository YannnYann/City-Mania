package com.unity3d.ads.core.domain.adquality;

import android.content.Context;
import com.google.protobuf.ByteString;
import com.ironsource.R6;
import com.ironsource.adqualitysdk.sdk.ISAdQualityConfig;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener;
import com.ironsource.adqualitysdk.sdk.ISAdQualityLogLevel;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.GetGameId;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.core.log.LogLevelInternal;
import com.unity3d.ads.core.log.Logger;
import com.vungle.ads.internal.protos.Sdk;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlin.time.Duration;
import kotlin.time.TimeSource$Monotonic;

/* JADX INFO: compiled from: AndroidInitializeAdQuality.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidInitializeAdQuality implements InitializeAdQuality {
    private final Context context;
    private final GetGameId getGameId;
    private final Logger logger;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: compiled from: AndroidInitializeAdQuality.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LogLevelInternal.values().length];
            try {
                iArr[LogLevelInternal.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LogLevelInternal.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LogLevelInternal.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LogLevelInternal.DEBUG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LogLevelInternal.TRACE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public AndroidInitializeAdQuality(Context context, SendDiagnosticEvent sendDiagnosticEvent, Logger logger, GetGameId getGameId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(getGameId, "getGameId");
        this.context = context;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.logger = logger;
        this.getGameId = getGameId;
    }

    @Override // com.unity3d.ads.core.domain.adquality.InitializeAdQuality
    public void invoke(String appKey, ByteString sessionToken) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        try {
            IronSourceAdQuality.getInstance().initialize(this.context, appKey, startInitialization(sessionToken));
        } catch (ClassNotFoundException e) {
            reportLoadFailure(e, "ClassNotFoundException");
        } catch (NoClassDefFoundError e2) {
            reportLoadFailure(e2, "NoClassDefFoundError");
        } catch (NoSuchMethodError e3) {
            reportLoadFailure(e3, "NoSuchMethodError");
        } catch (Throwable th) {
            this.logger.error("Ad Quality SDK initialization failed", th);
            SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
            DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType = DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME;
            Double dValueOf = Double.valueOf(0.0d);
            String message = th.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, diagnosticEventType, dValueOf, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("reason_debug", message)), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, 120, (Object) null);
        }
    }

    @Override // com.unity3d.ads.core.domain.adquality.InitializeAdQuality
    public void invokeWithGameId(ByteString sessionToken) {
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        String strInvoke = this.getGameId.invoke();
        if (strInvoke == null || StringsKt__StringsKt.isBlank(strInvoke)) {
            return;
        }
        try {
            IronSourceAdQuality.getInstance().initializeWithGameId(this.context, strInvoke, startInitialization(sessionToken));
        } catch (ClassNotFoundException e) {
            reportLoadFailure(e, "ClassNotFoundException");
        } catch (NoClassDefFoundError e2) {
            reportLoadFailure(e2, "NoClassDefFoundError");
        } catch (NoSuchMethodError e3) {
            reportLoadFailure(e3, "NoSuchMethodError");
        } catch (Throwable th) {
            this.logger.error("Ad Quality SDK initialization failed", th);
            SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
            DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType = DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME;
            Double dValueOf = Double.valueOf(0.0d);
            String message = th.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, diagnosticEventType, dValueOf, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("reason_debug", message)), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, 120, (Object) null);
        }
    }

    private final ISAdQualityConfig startInitialization(ByteString byteString) {
        long jM2921markNowz9LOYto = TimeSource$Monotonic.INSTANCE.m2921markNowz9LOYto();
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_STARTED, (Double) null, (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE, (Object) null);
        return m1940buildConfigLaDbsBc(jM2921markNowz9LOYto, byteString);
    }

    /* JADX INFO: renamed from: buildConfig-LaDbsBc, reason: not valid java name */
    private final ISAdQualityConfig m1940buildConfigLaDbsBc(final long j, ByteString byteString) {
        ISAdQualityConfig.Builder builderAddAdQualityInitListener = new ISAdQualityConfig.Builder().setInitializationSource(R6.H1).setLogLevel(mapLogLevel(this.logger.getLogLevel())).setMetaData("uads_session_token", ProtobufExtensionsKt.toBase64$default(byteString, false, 1, null)).addAdQualityInitListener(new ISAdQualityInitListener() { // from class: com.unity3d.ads.core.domain.adquality.AndroidInitializeAdQuality$buildConfig$configBuilder$1
            @Override // com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener
            public void adQualitySdkInitSuccess() {
                SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_SUCCESS_TIME, Double.valueOf(Duration.m2881getInWholeMillisecondsimpl(TimeSource$Monotonic.ValueTimeMark.m2924elapsedNowUwyO8pc(j))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, (Object) null);
            }

            @Override // com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener
            public void adQualitySdkInitFailed(ISAdQualityInitError isAdQualityInitError, String message) {
                Intrinsics.checkNotNullParameter(isAdQualityInitError, "isAdQualityInitError");
                Intrinsics.checkNotNullParameter(message, "message");
                SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME, Double.valueOf(Duration.m2881getInWholeMillisecondsimpl(TimeSource$Monotonic.ValueTimeMark.m2924elapsedNowUwyO8pc(j))), MapsKt__MapsKt.mapOf(TuplesKt.to("reason", isAdQualityInitError.name()), TuplesKt.to("reason_debug", message)), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, 120, (Object) null);
                Logger.DefaultImpls.error$default(this.logger, "Ad Quality failed to initialize: " + message, null, 2, null);
            }
        });
        String userIdentifier = UnityAds.getUserIdentifier();
        if (userIdentifier != null) {
            builderAddAdQualityInitListener.setUserId(userIdentifier);
        }
        ISAdQualityConfig iSAdQualityConfigBuild = builderAddAdQualityInitListener.build();
        Intrinsics.checkNotNullExpressionValue(iSAdQualityConfigBuild, "build(...)");
        return iSAdQualityConfigBuild;
    }

    private final void safeRun(Function0<Unit> function0) {
        try {
            function0.invoke();
        } catch (ClassNotFoundException e) {
            reportLoadFailure(e, "ClassNotFoundException");
        } catch (NoClassDefFoundError e2) {
            reportLoadFailure(e2, "NoClassDefFoundError");
        } catch (NoSuchMethodError e3) {
            reportLoadFailure(e3, "NoSuchMethodError");
        } catch (Throwable th) {
            this.logger.error("Ad Quality SDK initialization failed", th);
            SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
            DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType = DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME;
            Double dValueOf = Double.valueOf(0.0d);
            String message = th.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, diagnosticEventType, dValueOf, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("reason_debug", message)), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, 120, (Object) null);
        }
    }

    private final void reportLoadFailure(final Throwable th, String str) {
        this.logger.debug(new Function0() { // from class: com.unity3d.ads.core.domain.adquality.AndroidInitializeAdQuality$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AndroidInitializeAdQuality.reportLoadFailure$lambda$3(th);
            }
        });
        SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
        DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType = DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME;
        Double dValueOf = Double.valueOf(0.0d);
        String message = th.getMessage();
        if (message != null) {
            str = message;
        }
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, diagnosticEventType, dValueOf, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("reason_debug", str)), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, 120, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String reportLoadFailure$lambda$3(Throwable th) {
        return "Ad Quality SDK not available: " + th.getMessage();
    }

    private final ISAdQualityLogLevel mapLogLevel(LogLevelInternal logLevelInternal) {
        int i = WhenMappings.$EnumSwitchMapping$0[logLevelInternal.ordinal()];
        if (i == 1) {
            return ISAdQualityLogLevel.NONE;
        }
        if (i == 2) {
            return ISAdQualityLogLevel.ERROR;
        }
        if (i == 3) {
            return ISAdQualityLogLevel.INFO;
        }
        if (i == 4) {
            return ISAdQualityLogLevel.DEBUG;
        }
        if (i != 5) {
            throw new NoWhenBranchMatchedException();
        }
        return ISAdQualityLogLevel.VERBOSE;
    }
}
