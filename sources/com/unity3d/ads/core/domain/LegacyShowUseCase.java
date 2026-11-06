package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.adplayer.model.ShowStatus;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.Listeners;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.model.ShowEvent;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.LegacyShowUseCase;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.core.extensions.ShowStatusExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.OperativeEventErrorDataKt;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import java.util.Map;
import java.util.UUID;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.time.TimeMark;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.json.JSONObject;

/* JADX INFO: compiled from: LegacyShowUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LegacyShowUseCase {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_OBJECT_ID = "objectId";
    public static final String MESSAGE_AD_OBJECT_EXPIRED = "The ad has expired";
    public static final String MESSAGE_AD_PLAYER_UNAVAILABLE = "Ad player is unavailable.";
    public static final String MESSAGE_ALREADY_SHOWING = "Can't show a new ad unit when ad unit is already open";
    public static final String MESSAGE_NO_AD_OBJECT = "No ad object found for opportunity id: ";
    public static final String MESSAGE_OPPORTUNITY_ID = "No valid opportunity id provided";
    public static final String MESSAGE_OPT_TIMEOUT = "timeout";
    public static final String MESSAGE_PLACEMENT_NOT_LOADED = "Placement %s must be Loaded before calling Show";
    public static final String MESSAGE_TIMEOUT = "[UnityAds] Timeout while trying to show ";
    public static final String MSG_OPPORTUNITY_AND_PLACEMENT_NOT_MATCHING = "[UnityAds] Object ID and Placement ID provided does not match previously loaded ad";
    public static final int NATIVE_START_SIGNAL_COUNT = 2;
    private static volatile boolean isFullscreenAdShowing;
    private AdObject adObject;
    private final AdRepository adRepository;
    private final GetInitializationState getInitializationState;
    private final GetOperativeEventApi getOperativeEventApi;
    private final Logger logger;
    private String placement;
    private final SafeCallbackInvoke safeCallbackInvoke;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private final Show show;
    private final MutableStateFlow<Integer> startedCount;
    private final MutableStateFlow<Boolean> timeoutCancellationRequested;
    private UnityAdsShowOptions unityAdsShowOptions;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase", f = "LegacyShowUseCase.kt", l = {Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR_VALUE, Sdk.SDKError.Reason.INVALID_CONFIG_RESPONSE_VALUE, 143, 148, 154, 161, 166, 182, Sdk.SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE}, m = "invoke")
    public static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        int I$1;
        long J$0;
        long J$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyShowUseCase.this.invoke(null, null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object sendOperativeError(OperativeEventRequestOuterClass.OperativeEventErrorType operativeEventErrorType, String str, AdObject adObject, Continuation<? super Unit> continuation) {
        OperativeEventErrorDataKt.Dsl.Companion companion = OperativeEventErrorDataKt.Dsl.Companion;
        OperativeEventRequestOuterClass.OperativeEventErrorData.Builder builderNewBuilder = OperativeEventRequestOuterClass.OperativeEventErrorData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        OperativeEventErrorDataKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setErrorType(operativeEventErrorType);
        dsl_create.setMessage(str);
        OperativeEventRequestOuterClass.OperativeEventErrorData operativeEventErrorData_build = dsl_create._build();
        GetOperativeEventApi getOperativeEventApi = this.getOperativeEventApi;
        OperativeEventRequestOuterClass.OperativeEventType operativeEventType = OperativeEventRequestOuterClass.OperativeEventType.OPERATIVE_EVENT_TYPE_SHOW_ERROR;
        ByteString byteString = operativeEventErrorData_build.toByteString();
        Intrinsics.checkNotNullExpressionValue(byteString, "toByteString(...)");
        Object objInvoke = getOperativeEventApi.invoke(operativeEventType, adObject, byteString, continuation);
        return objInvoke == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : Unit.INSTANCE;
    }

    public LegacyShowUseCase(Show show, AdRepository adRepository, SendDiagnosticEvent sendDiagnosticEvent, GetOperativeEventApi getOperativeEventApi, GetInitializationState getInitializationState, SessionRepository sessionRepository, SafeCallbackInvoke safeCallbackInvoke, Logger logger) {
        Intrinsics.checkNotNullParameter(show, "show");
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(getOperativeEventApi, "getOperativeEventApi");
        Intrinsics.checkNotNullParameter(getInitializationState, "getInitializationState");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(safeCallbackInvoke, "safeCallbackInvoke");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.show = show;
        this.adRepository = adRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.getOperativeEventApi = getOperativeEventApi;
        this.getInitializationState = getInitializationState;
        this.sessionRepository = sessionRepository;
        this.safeCallbackInvoke = safeCallbackInvoke;
        this.logger = logger;
        this.startedCount = StateFlowKt.MutableStateFlow(0);
        this.timeoutCancellationRequested = StateFlowKt.MutableStateFlow(Boolean.FALSE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0256, code lost:
    
        if (r3.invoke("ad_object_expired", r5, com.unity3d.ads.core.domain.LegacyShowUseCase.MESSAGE_AD_OBJECT_EXPIRED, null, null, r9) == r12) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0283, code lost:
    
        if (r3.invoke("ad_player_scope_not_active", r5, com.unity3d.ads.core.domain.LegacyShowUseCase.MESSAGE_AD_PLAYER_UNAVAILABLE, null, null, r9) == r12) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02a6, code lost:
    
        if (r3.invoke("already_showing", r5, com.unity3d.ads.core.domain.LegacyShowUseCase.MESSAGE_ALREADY_SHOWING, null, null, r9) == r12) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x02d7, code lost:
    
        if (r3.invoke("placement_validation", r5, com.unity3d.ads.core.domain.LegacyShowUseCase.MSG_OPPORTUNITY_AND_PLACEMENT_NOT_MATCHING, null, null, r9) == r12) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0184, code lost:
    
        if (r3.invoke("not_initialized", r0, com.unity3d.ads.core.data.model.LoadResult.MSG_NOT_INITIALIZED, null, null, r9) == r12) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x019d, code lost:
    
        if (r3.invoke("placement_null", r5, com.unity3d.ads.core.data.model.LoadResult.MSG_PLACEMENT_NULL, null, null, r9) == r12) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01cc, code lost:
    
        if (r3.invoke("no_opportunity_id", r5, com.unity3d.ads.core.domain.LegacyShowUseCase.MESSAGE_OPPORTUNITY_ID, null, r8, r9) == r12) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01f7, code lost:
    
        if (r3.invoke("placement_not_loaded", r5, r6, null, null, r9) == r12) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0232, code lost:
    
        if (r3.invoke("ad_object_not_found", r5, r6, null, null, r9) == r12) goto L61;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:151:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x040f  */
    /* JADX WARN: Removed duplicated region for block: B:178:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001c  */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v5, types: [int] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invoke(java.lang.String r31, com.unity3d.ads.UnityAdsShowOptions r32, com.unity3d.ads.core.data.model.Listeners r33, kotlin.coroutines.Continuation<? super kotlin.Unit> r34) {
        /*
            Method dump skipped, instruction units count: 1074
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase.invoke(java.lang.String, com.unity3d.ads.UnityAdsShowOptions, com.unity3d.ads.core.data.model.Listeners, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$2", f = "LegacyShowUseCase.kt", l = {202, 208, 209}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<Function0<? extends Unit>, Continuation<? super Unit>, Object> {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ NativeConfigurationOuterClass.NativeStartMode $nativeStartMode;
        final /* synthetic */ String $placement;
        final /* synthetic */ Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> $reportShowError;
        final /* synthetic */ boolean $useTimeout;
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ LegacyShowUseCase this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(NativeConfigurationOuterClass.NativeStartMode nativeStartMode, LegacyShowUseCase legacyShowUseCase, AdObject adObject, boolean z, Function6<? super String, ? super UnityAds.UnityAdsShowError, ? super String, ? super Integer, ? super String, ? super Continuation<? super Unit>, ? extends Object> function6, String str, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$nativeStartMode = nativeStartMode;
            this.this$0 = legacyShowUseCase;
            this.$adObject = adObject;
            this.$useTimeout = z;
            this.$reportShowError = function6;
            this.$placement = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$nativeStartMode, this.this$0, this.$adObject, this.$useTimeout, this.$reportShowError, this.$placement, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Function0<? extends Unit> function0, Continuation<? super Unit> continuation) {
            return invoke2((Function0<Unit>) function0, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Function0<Unit> function0, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(function0, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x00bf  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                Method dump skipped, instruction units count: 201
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$3, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$3", f = "LegacyShowUseCase.kt", l = {Sdk.SDKError.Reason.AD_RESPONSE_EMPTY_VALUE}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ShowEvent>, Throwable, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $isBanner;
        final /* synthetic */ Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> $reportShowError;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass3(Function6<? super String, ? super UnityAds.UnityAdsShowError, ? super String, ? super Integer, ? super String, ? super Continuation<? super Unit>, ? extends Object> function6, boolean z, Continuation<? super AnonymousClass3> continuation) {
            super(3, continuation);
            this.$reportShowError = function6;
            this.$isBanner = z;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector<? super ShowEvent> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$reportShowError, this.$isBanner, continuation);
            anonymousClass3.L$0 = th;
            return anonymousClass3.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AnonymousClass3 anonymousClass3;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Throwable th = (Throwable) this.L$0;
                Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> function6 = this.$reportShowError;
                UnityAds.UnityAdsShowError unityAdsShowError = UnityAds.UnityAdsShowError.INTERNAL_ERROR;
                String shortenedStackTrace$default = ExceptionExtensionsKt.getShortenedStackTrace$default(th, 0, 1, null);
                this.label = 1;
                anonymousClass3 = this;
                if (function6.invoke("uncaught_exception", unityAdsShowError, UnityAdsConstants.Messages.MSG_INTERNAL_ERROR, null, shortenedStackTrace$default, anonymousClass3) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                anonymousClass3 = this;
            }
            if (!anonymousClass3.$isBanner) {
                LegacyShowUseCase.isFullscreenAdShowing = false;
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$4, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    public static final class AnonymousClass4<T> implements FlowCollector {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ Ref$BooleanRef $displayReadyEventSent;
        final /* synthetic */ boolean $isBanner;
        final /* synthetic */ Listeners $listeners;
        final /* synthetic */ NativeConfigurationOuterClass.NativeStartMode $nativeStartMode;
        final /* synthetic */ String $placement;
        final /* synthetic */ Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> $reportShowError;
        final /* synthetic */ long $startTime;
        final /* synthetic */ UnityAdsShowOptions $unityAdsShowOptions;
        final /* synthetic */ LegacyShowUseCase this$0;

        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass4(Ref$BooleanRef ref$BooleanRef, boolean z, NativeConfigurationOuterClass.NativeStartMode nativeStartMode, LegacyShowUseCase legacyShowUseCase, AdObject adObject, long j, String str, Listeners listeners, UnityAdsShowOptions unityAdsShowOptions, Function6<? super String, ? super UnityAds.UnityAdsShowError, ? super String, ? super Integer, ? super String, ? super Continuation<? super Unit>, ? extends Object> function6) {
            this.$displayReadyEventSent = ref$BooleanRef;
            this.$isBanner = z;
            this.$nativeStartMode = nativeStartMode;
            this.this$0 = legacyShowUseCase;
            this.$adObject = adObject;
            this.$startTime = j;
            this.$placement = str;
            this.$listeners = listeners;
            this.$unityAdsShowOptions = unityAdsShowOptions;
            this.$reportShowError = function6;
        }

        /* JADX WARN: Code restructure failed: missing block: B:80:0x01fe, code lost:
        
            if (r4.invoke("uncaught_exception", r6, com.unity3d.services.UnityAdsConstants.Messages.MSG_INTERNAL_ERROR, null, r9, r10) != r3) goto L82;
         */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00ce A[Catch: all -> 0x004a, TryCatch #0 {all -> 0x004a, blocks: (B:18:0x0045, B:23:0x0051, B:68:0x0190, B:26:0x0058, B:46:0x009c, B:48:0x00c8, B:50:0x00ce, B:29:0x005f, B:31:0x0063, B:33:0x0069, B:35:0x006d, B:37:0x0073, B:42:0x007c, B:51:0x00df, B:53:0x00e3, B:54:0x00f4, B:56:0x00f8, B:57:0x0125, B:59:0x0129, B:60:0x013a, B:62:0x013e, B:64:0x0150, B:65:0x0178, B:71:0x01bf, B:73:0x01c3, B:74:0x01cf, B:76:0x01d3, B:77:0x01e3, B:78:0x01e8), top: B:84:0x002e }] */
        /* JADX WARN: Removed duplicated region for block: B:70:0x01be  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(com.unity3d.ads.core.data.model.ShowEvent r26, kotlin.coroutines.Continuation<? super kotlin.Unit> r27) {
            /*
                Method dump skipped, instruction units count: 516
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase.AnonymousClass4.emit(com.unity3d.ads.core.data.model.ShowEvent, kotlin.coroutines.Continuation):java.lang.Object");
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return emit((ShowEvent) obj, (Continuation<? super Unit>) continuation);
        }
    }

    public final void showReceivedReward(TimeMark startTime, final String placement, final Listeners listeners) {
        Intrinsics.checkNotNullParameter(startTime, "startTime");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        this.logger.info("Rewarding ad " + getAdInfoString());
        MutableStateFlow<Integer> mutableStateFlow = this.startedCount;
        mutableStateFlow.setValue(Integer.valueOf(Math.max(mutableStateFlow.getValue().intValue(), 2)));
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_SHOW_REWARDED, Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), (Map) null, (Map) null, this.adObject, (Integer) null, (ByteString) null, 108, (Object) null);
        this.safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LegacyShowUseCase.showReceivedReward$lambda$3(listeners, placement);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showReceivedReward$lambda$3(Listeners listeners, String str) {
        listeners.onRewarded(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void bannerLeftApplication(TimeMark timeMark, final String str, final Listeners listeners) {
        this.logger.info("Left app while showing ad " + getAdInfoString());
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_SHOW_LEFT_APP, Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark)), (Map) null, (Map) null, this.adObject, (Integer) null, (ByteString) null, 108, (Object) null);
        this.safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LegacyShowUseCase.bannerLeftApplication$lambda$4(listeners, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit bannerLeftApplication$lambda$4(Listeners listeners, String str) {
        listeners.onLeftApplication(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancelTimeout(TimeMark timeMark) {
        this.timeoutCancellationRequested.setValue(Boolean.TRUE);
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_cancel_timeout", Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark)), (Map) null, (Map) null, this.adObject, (Integer) null, (ByteString) null, 108, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showStarted(TimeMark timeMark, final String str, final Listeners listeners) {
        MutableStateFlow<Integer> mutableStateFlow = this.startedCount;
        mutableStateFlow.setValue(Integer.valueOf(mutableStateFlow.getValue().intValue() + 1));
        if (this.startedCount.getValue().intValue() >= 2) {
            return;
        }
        this.logger.info("Started showing ad " + getAdInfoString());
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_SHOW_WV_STARTED, Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark)), (Map) null, (Map) null, this.adObject, (Integer) null, (ByteString) null, 108, (Object) null);
        this.safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LegacyShowUseCase.showStarted$lambda$6(listeners, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showStarted$lambda$6(Listeners listeners, String str) {
        listeners.onStart(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showClicked(TimeMark timeMark, final String str, final Listeners listeners) {
        this.logger.info("Clicked on ad " + getAdInfoString());
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_SHOW_CLICKED, Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark)), (Map) null, (Map) null, this.adObject, (Integer) null, (ByteString) null, 108, (Object) null);
        this.safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LegacyShowUseCase.showClicked$lambda$7(listeners, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showClicked$lambda$7(Listeners listeners, String str) {
        listeners.onClick(str);
        return Unit.INSTANCE;
    }

    private final String getOpportunityId(UnityAdsShowOptions unityAdsShowOptions) throws IllegalArgumentException {
        Object objOpt;
        String string;
        JSONObject data = unityAdsShowOptions.getData();
        if (data == null || (objOpt = data.opt("objectId")) == null || (string = objOpt.toString()) == null) {
            return null;
        }
        return UUID.fromString(string).toString();
    }

    private final void showStart(String str, UnityAdsShowOptions unityAdsShowOptions) {
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_SHOW_STARTED, (Double) null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("new_api", String.valueOf((unityAdsShowOptions != null ? unityAdsShowOptions.showConfiguration : null) != null))), (Map) null, getTmpAdObject(str), (Integer) null, (ByteString) null, 106, (Object) null);
    }

    public static /* synthetic */ void showCompleted$default(LegacyShowUseCase legacyShowUseCase, TimeMark timeMark, String str, ShowStatus showStatus, Listeners listeners, String str2, String str3, UnityAdsShowOptions unityAdsShowOptions, int i, Object obj) {
        if ((i & 16) != 0) {
            str2 = null;
        }
        if ((i & 32) != 0) {
            str3 = null;
        }
        legacyShowUseCase.showCompleted(timeMark, str, showStatus, listeners, str2, str3, unityAdsShowOptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showCompleted(TimeMark timeMark, final String str, final ShowStatus showStatus, final Listeners listeners, String str2, String str3, UnityAdsShowOptions unityAdsShowOptions) {
        this.logger.info("Finished showing ad " + getAdInfoString());
        Map mapCreateMapBuilder = MapsKt__MapsJVMKt.createMapBuilder();
        if (str2 != null) {
        }
        if (str3 != null) {
        }
        TuplesKt.to("new_api", String.valueOf((unityAdsShowOptions != null ? unityAdsShowOptions.showConfiguration : null) != null));
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_SHOW_SUCCESS_TIME, Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark)), MapsKt__MapsJVMKt.build(mapCreateMapBuilder), (Map) null, this.adObject, (Integer) null, (ByteString) null, 104, (Object) null);
        this.safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return LegacyShowUseCase.showCompleted$lambda$12(listeners, str, showStatus, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit showCompleted$lambda$12(Listeners listeners, String str, ShowStatus showStatus, LegacyShowUseCase legacyShowUseCase) {
        NativeConfigurationOuterClass.ShowCompletionState defaultShowCompletionState = legacyShowUseCase.sessionRepository.getNativeConfiguration().getDefaultShowCompletionState();
        Intrinsics.checkNotNullExpressionValue(defaultShowCompletionState, "getDefaultShowCompletionState(...)");
        listeners.onComplete(str, ShowStatusExtensionsKt.toUnityAdsShowCompletionState(showStatus, defaultShowCompletionState));
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showError$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$showError$1", f = "LegacyShowUseCase.kt", l = {}, m = "invokeSuspend")
    public static final class C40291 extends SuspendLambda implements Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> {
        final /* synthetic */ Listeners $listeners;
        final /* synthetic */ String $opportunityId;
        final /* synthetic */ String $placement;
        final /* synthetic */ UnityAdsShowOptions $showOptions;
        final /* synthetic */ TimeMark $startTime;
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        /* synthetic */ Object L$3;
        /* synthetic */ Object L$4;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C40291(String str, TimeMark timeMark, UnityAdsShowOptions unityAdsShowOptions, Listeners listeners, String str2, Continuation<? super C40291> continuation) {
            super(6, continuation);
            this.$opportunityId = str;
            this.$startTime = timeMark;
            this.$showOptions = unityAdsShowOptions;
            this.$listeners = listeners;
            this.$placement = str2;
        }

        @Override // kotlin.jvm.functions.Function6
        public final Object invoke(String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2, Integer num, String str3, Continuation<? super Unit> continuation) {
            C40291 c40291 = LegacyShowUseCase.this.new C40291(this.$opportunityId, this.$startTime, this.$showOptions, this.$listeners, this.$placement, continuation);
            c40291.L$0 = str;
            c40291.L$1 = unityAdsShowError;
            c40291.L$2 = str2;
            c40291.L$3 = num;
            c40291.L$4 = str3;
            return c40291.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                String str = (String) this.L$0;
                final UnityAds.UnityAdsShowError unityAdsShowError = (UnityAds.UnityAdsShowError) this.L$1;
                final String str2 = (String) this.L$2;
                Integer num = (Integer) this.L$3;
                String str3 = (String) this.L$4;
                Logger.DefaultImpls.error$default(LegacyShowUseCase.this.logger, "Failed to show ad " + LegacyShowUseCase.this.getAdInfoString() + ", error: " + str2, null, 2, null);
                AdObject tmpAdObject = LegacyShowUseCase.this.adObject;
                if (tmpAdObject == null) {
                    tmpAdObject = LegacyShowUseCase.this.getTmpAdObject(this.$opportunityId);
                }
                SendDiagnosticEvent.DefaultImpls.invoke$default(LegacyShowUseCase.this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_SHOW_FAILURE_TIME, Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(this.$startTime)), LegacyShowUseCase.this.getTags(str, num, str3, this.$showOptions), (Map) null, tmpAdObject, (Integer) null, (ByteString) null, 104, (Object) null);
                SafeCallbackInvoke safeCallbackInvoke = LegacyShowUseCase.this.safeCallbackInvoke;
                final Listeners listeners = this.$listeners;
                final String str4 = this.$placement;
                safeCallbackInvoke.invoke(new Function0() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$showError$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return LegacyShowUseCase.C40291.invokeSuspend$lambda$0(listeners, str4, unityAdsShowError, str2);
                    }
                });
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(Listeners listeners, String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2) {
            listeners.onError(str, unityAdsShowError, str2);
            return Unit.INSTANCE;
        }
    }

    private final Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> showError(TimeMark timeMark, String str, String str2, Listeners listeners, UnityAdsShowOptions unityAdsShowOptions) {
        return new C40291(str2, timeMark, unityAdsShowOptions, listeners, str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, String> getTags(String str, Integer num, String str2, UnityAdsShowOptions unityAdsShowOptions) {
        Map<String, String> mapMutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.to("operation", OperationType.SHOW.toString()), TuplesKt.to("reason", str), TuplesKt.to("new_api", String.valueOf((unityAdsShowOptions != null ? unityAdsShowOptions.showConfiguration : null) != null)));
        if (num != null) {
            mapMutableMapOf.put("reason_code", String.valueOf(num.intValue()));
        }
        if (str2 != null) {
            mapMutableMapOf.put("reason_debug", str2);
        }
        return mapMutableMapOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AdObject getTmpAdObject(String str) {
        UUID uuidFromString = UUID.fromString(str);
        Intrinsics.checkNotNullExpressionValue(uuidFromString, "fromString(...)");
        AdObject ad = this.adRepository.getAd(ProtobufExtensionsKt.toByteString(uuidFromString));
        if (ad != null) {
            return ad;
        }
        SendDiagnosticEvent.Companion companion = SendDiagnosticEvent.Companion;
        UUID uuidFromString2 = UUID.fromString(str);
        Intrinsics.checkNotNullExpressionValue(uuidFromString2, "fromString(...)");
        ByteString byteString = ProtobufExtensionsKt.toByteString(uuidFromString2);
        String str2 = this.placement;
        if (str2 == null) {
            str2 = "";
        }
        return SendDiagnosticEvent.Companion.getTmpAdObjectForEventSending$default(companion, byteString, str2, false, null, null, 28, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getAdInfoString() {
        ByteString opportunityId;
        StringBuilder sb = new StringBuilder();
        sb.append("for placement ");
        AdObject adObject = this.adObject;
        UUID uuid = null;
        sb.append(adObject != null ? adObject.getPlacementId() : null);
        sb.append(" with instance id ");
        AdObject adObject2 = this.adObject;
        if (adObject2 != null && (opportunityId = adObject2.getOpportunityId()) != null) {
            uuid = ProtobufExtensionsKt.toUUID(opportunityId);
        }
        sb.append(uuid);
        return sb.toString();
    }

    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
