package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.core.data.repository.AdRevenueRepository;
import com.unity3d.ads.core.domain.GetRequestPolicy;
import com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.ads.gatewayclient.GatewayClient;
import gatewayprotocol.v1.AdRevenueEventRequestOuterClass;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: AdRevenueObserver.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdRevenueObserver {
    private final AdRevenueRepository adRevenueRepository;
    private final GatewayClient gatewayClient;
    private final GetRequestPolicy getRequestPolicy;
    private final GetUniversalRequestForPayLoad getUniversalRequestForPayLoad;
    private final MutableStateFlow<Boolean> isRunning;
    private final Logger logger;
    private final CoroutineScope scope;

    public AdRevenueObserver(GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, CoroutineScope scope, AdRevenueRepository adRevenueRepository, GatewayClient gatewayClient, GetRequestPolicy getRequestPolicy, Logger logger) {
        Intrinsics.checkNotNullParameter(getUniversalRequestForPayLoad, "getUniversalRequestForPayLoad");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(adRevenueRepository, "adRevenueRepository");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.getUniversalRequestForPayLoad = getUniversalRequestForPayLoad;
        this.scope = scope;
        this.adRevenueRepository = adRevenueRepository;
        this.gatewayClient = gatewayClient;
        this.getRequestPolicy = getRequestPolicy;
        this.logger = logger;
        this.isRunning = StateFlowKt.MutableStateFlow(Boolean.FALSE);
    }

    public final void invoke() {
        Boolean value;
        Boolean bool;
        MutableStateFlow<Boolean> mutableStateFlow = this.isRunning;
        do {
            value = mutableStateFlow.getValue();
            bool = value;
            bool.getClass();
        } while (!mutableStateFlow.compareAndSet(value, Boolean.TRUE));
        if (bool.booleanValue()) {
            return;
        }
        FlowKt.launchIn(FlowKt.onEach(this.adRevenueRepository.getAdRevenueEvents(), new AnonymousClass2(null)), this.scope).invokeOnCompletion(new Function1() { // from class: com.unity3d.ads.core.domain.events.AdRevenueObserver$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return AdRevenueObserver.invoke$lambda$1(this.f$0, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.events.AdRevenueObserver$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AdRevenueObserver.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.events.AdRevenueObserver$invoke$2", f = "AdRevenueObserver.kt", l = {36, 37}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<AdRevenueEventRequestOuterClass.AdRevenueEventRequest, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        public AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = AdRevenueObserver.this.new AnonymousClass2(continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AdRevenueEventRequestOuterClass.AdRevenueEventRequest adRevenueEventRequest, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(adRevenueEventRequest, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(9:0|2|32|(2:35|(1:(4:6|7|28|29)(2:10|11))(1:12))(5:14|33|15|(1:17)|22)|18|19|36|20|(1:(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0072, code lost:
        
            if (com.unity3d.ads.gatewayclient.GatewayClient.DefaultImpls.request$default(r3, null, r5, r6, r7, r8, 1, null) == r0) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0075, code lost:
        
            r0 = e;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                r11 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r11.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L24
                if (r1 == r3) goto L20
                if (r1 != r2) goto L18
                kotlin.ResultKt.throwOnFailure(r12)     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L14
            L11:
                r8 = r11
                goto L86
            L14:
                r0 = move-exception
                r12 = r0
                r8 = r11
                goto L7b
            L18:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L20:
                kotlin.ResultKt.throwOnFailure(r12)     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L14
                goto L53
            L24:
                kotlin.ResultKt.throwOnFailure(r12)
                java.lang.Object r12 = r11.L$0
                gatewayprotocol.v1.AdRevenueEventRequestOuterClass$AdRevenueEventRequest r12 = (gatewayprotocol.v1.AdRevenueEventRequestOuterClass.AdRevenueEventRequest) r12
                gatewayprotocol.v1.UniversalRequestKt r1 = gatewayprotocol.v1.UniversalRequestKt.INSTANCE     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                gatewayprotocol.v1.UniversalRequestKt$PayloadKt$Dsl$Companion r1 = gatewayprotocol.v1.UniversalRequestKt.PayloadKt.Dsl.Companion     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload$Builder r4 = gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder()     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                java.lang.String r5 = "newBuilder(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                gatewayprotocol.v1.UniversalRequestKt$PayloadKt$Dsl r1 = r1._create(r4)     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                r1.setAdRevenueEventRequest(r12)     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest$Payload r12 = r1._build()     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                com.unity3d.ads.core.domain.events.AdRevenueObserver r1 = com.unity3d.ads.core.domain.events.AdRevenueObserver.this     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad r1 = com.unity3d.ads.core.domain.events.AdRevenueObserver.access$getGetUniversalRequestForPayLoad$p(r1)     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                r11.label = r3     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                java.lang.Object r12 = r1.invoke(r12, r11)     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                if (r12 != r0) goto L53
                r8 = r11
                goto L74
            L53:
                r5 = r12
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest r5 = (gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest) r5     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                com.unity3d.ads.core.domain.events.AdRevenueObserver r12 = com.unity3d.ads.core.domain.events.AdRevenueObserver.this     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                com.unity3d.ads.gatewayclient.GatewayClient r3 = com.unity3d.ads.core.domain.events.AdRevenueObserver.access$getGatewayClient$p(r12)     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                com.unity3d.ads.core.domain.events.AdRevenueObserver r12 = com.unity3d.ads.core.domain.events.AdRevenueObserver.this     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                com.unity3d.ads.core.domain.GetRequestPolicy r12 = com.unity3d.ads.core.domain.events.AdRevenueObserver.access$getGetRequestPolicy$p(r12)     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                com.unity3d.ads.gatewayclient.RequestPolicy r6 = r12.invoke()     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                com.unity3d.ads.core.data.model.OperationType r7 = com.unity3d.ads.core.data.model.OperationType.AD_REVENUE_EVENT     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                r11.label = r2     // Catch: com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L11 java.lang.Exception -> L78
                r4 = 0
                r9 = 1
                r10 = 0
                r8 = r11
                java.lang.Object r12 = com.unity3d.ads.gatewayclient.GatewayClient.DefaultImpls.request$default(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L75 com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException -> L86
                if (r12 != r0) goto L86
            L74:
                return r0
            L75:
                r0 = move-exception
            L76:
                r12 = r0
                goto L7b
            L78:
                r0 = move-exception
                r8 = r11
                goto L76
            L7b:
                com.unity3d.ads.core.domain.events.AdRevenueObserver r0 = com.unity3d.ads.core.domain.events.AdRevenueObserver.this
                com.unity3d.ads.core.log.Logger r0 = com.unity3d.ads.core.domain.events.AdRevenueObserver.access$getLogger$p(r0)
                java.lang.String r1 = "Unexpected error processing ad revenue event"
                r0.trace(r1, r12)
            L86:
                kotlin.Unit r12 = kotlin.Unit.INSTANCE
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.events.AdRevenueObserver.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1(AdRevenueObserver adRevenueObserver, Throwable th) {
        adRevenueObserver.isRunning.setValue(Boolean.FALSE);
        return Unit.INSTANCE;
    }
}
