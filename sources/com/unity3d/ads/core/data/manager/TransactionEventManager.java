package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.data.datasource.ByteStringDataSource;
import com.unity3d.ads.core.data.manager.TransactionEventManager;
import com.unity3d.ads.core.data.model.exception.TransactionException;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.data.repository.TransactionEventRepository;
import com.unity3d.ads.core.domain.billing.IsBillingClientAvailable;
import com.unity3d.ads.core.domain.billing.ProductDetailsFetcher;
import com.unity3d.ads.core.domain.events.GetTransactionData;
import com.unity3d.ads.core.domain.events.GetTransactionRequest;
import com.unity3d.ads.core.log.Logger;
import com.unity3d.services.store.gpbl.BillingResultResponseCode;
import com.unity3d.services.store.gpbl.bridges.BillingResultBridge;
import com.unity3d.services.store.gpbl.bridges.PurchaseBridge;
import com.unity3d.services.store.gpbl.bridges.billingclient.BillingClientAdapter;
import com.unity3d.services.store.gpbl.listeners.BillingInitializationListener;
import com.unity3d.services.store.gpbl.listeners.PurchasesResponseListener;
import com.vungle.ads.internal.protos.Sdk;
import gatewayprotocol.v1.TransactionEventRequestOuterClass;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: TransactionEventManager.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class TransactionEventManager {
    public static final String BILLING_SERVICE_UNAVAILABLE = "Billing client is not available";
    public static final Companion Companion = new Companion(null);
    private static final String INAPP = "inapp";
    private static final String SUBS = "subs";
    private final BillingClientAdapter billingClientAdapter;
    private final GetTransactionData getTransactionData;
    private final GetTransactionRequest getTransactionRequest;
    private final ByteStringDataSource iapTransactionStore;
    private final IsBillingClientAvailable isBillingClientAvailable;
    private final Logger logger;
    private final ProductDetailsFetcher productDetailsFetcher;
    private final CoroutineScope scope;
    private final SessionRepository sessionRepository;
    private final TransactionEventRepository transactionEventRepository;

    public TransactionEventManager(CoroutineScope scope, BillingClientAdapter billingClientAdapter, GetTransactionData getTransactionData, GetTransactionRequest getTransactionRequest, TransactionEventRepository transactionEventRepository, ByteStringDataSource iapTransactionStore, IsBillingClientAvailable isBillingClientAvailable, SessionRepository sessionRepository, ProductDetailsFetcher productDetailsFetcher, Logger logger) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(getTransactionData, "getTransactionData");
        Intrinsics.checkNotNullParameter(getTransactionRequest, "getTransactionRequest");
        Intrinsics.checkNotNullParameter(transactionEventRepository, "transactionEventRepository");
        Intrinsics.checkNotNullParameter(iapTransactionStore, "iapTransactionStore");
        Intrinsics.checkNotNullParameter(isBillingClientAvailable, "isBillingClientAvailable");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(productDetailsFetcher, "productDetailsFetcher");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.scope = scope;
        this.billingClientAdapter = billingClientAdapter;
        this.getTransactionData = getTransactionData;
        this.getTransactionRequest = getTransactionRequest;
        this.transactionEventRepository = transactionEventRepository;
        this.iapTransactionStore = iapTransactionStore;
        this.isBillingClientAvailable = isBillingClientAvailable;
        this.sessionRepository = sessionRepository;
        this.productDetailsFetcher = productDetailsFetcher;
        this.logger = logger;
    }

    public final void invoke() {
        if (this.isBillingClientAvailable.invoke() && this.billingClientAdapter != null) {
            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass1(null), 3, null);
        } else {
            Logger.DefaultImpls.trace$default(this.logger, BILLING_SERVICE_UNAVAILABLE, null, 2, null);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.TransactionEventManager$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: TransactionEventManager.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.TransactionEventManager$invoke$1", f = "TransactionEventManager.kt", l = {162}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TransactionEventManager.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (Exception e) {
                TransactionEventManager.this.logger.trace(TransactionEventManager.BILLING_SERVICE_UNAVAILABLE, e);
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (!TransactionEventManager.this.billingClientAdapter.isInitialized()) {
                    final TransactionEventManager transactionEventManager = TransactionEventManager.this;
                    this.L$0 = transactionEventManager;
                    this.label = 1;
                    final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(this), 1);
                    cancellableContinuationImpl.initCancellability();
                    transactionEventManager.billingClientAdapter.initialize(new BillingInitializationListener() { // from class: com.unity3d.ads.core.data.manager.TransactionEventManager$invoke$1$1$1
                        private final MutableStateFlow<Boolean> hasBeenResumed = StateFlowKt.MutableStateFlow(Boolean.FALSE);

                        public final MutableStateFlow<Boolean> getHasBeenResumed() {
                            return this.hasBeenResumed;
                        }

                        private final void tryResume() {
                            Boolean value;
                            Boolean bool;
                            if (cancellableContinuationImpl.isActive()) {
                                MutableStateFlow<Boolean> mutableStateFlow = this.hasBeenResumed;
                                do {
                                    value = mutableStateFlow.getValue();
                                    bool = value;
                                    bool.getClass();
                                } while (!mutableStateFlow.compareAndSet(value, Boolean.TRUE));
                                if (bool.booleanValue()) {
                                    return;
                                }
                                CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl;
                                Result.Companion companion = Result.Companion;
                                cancellableContinuation.resumeWith(Result.m2760constructorimpl(Unit.INSTANCE));
                            }
                        }

                        private final void tryResumeWithException(Exception exc) {
                            Boolean value;
                            Boolean bool;
                            if (cancellableContinuationImpl.isActive()) {
                                MutableStateFlow<Boolean> mutableStateFlow = this.hasBeenResumed;
                                do {
                                    value = mutableStateFlow.getValue();
                                    bool = value;
                                    bool.getClass();
                                } while (!mutableStateFlow.compareAndSet(value, Boolean.TRUE));
                                if (bool.booleanValue()) {
                                    return;
                                }
                                CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl;
                                Result.Companion companion = Result.Companion;
                                cancellableContinuation.resumeWith(Result.m2760constructorimpl(ResultKt.createFailure(exc)));
                            }
                        }

                        @Override // com.unity3d.services.store.gpbl.listeners.BillingInitializationListener
                        public void onIsAlreadyInitialized() {
                            tryResume();
                        }

                        @Override // com.unity3d.services.store.gpbl.listeners.BillingClientStateListener
                        public void onBillingSetupFinished(BillingResultBridge billingResult) {
                            Intrinsics.checkNotNullParameter(billingResult, "billingResult");
                            if (billingResult.getResponseCode() != BillingResultResponseCode.OK) {
                                tryResumeWithException(new TransactionException("Billing setup failed"));
                            } else {
                                tryResume();
                            }
                        }

                        @Override // com.unity3d.services.store.gpbl.listeners.BillingClientStateListener
                        public void onBillingServiceDisconnected() {
                            tryResumeWithException(new TransactionException("Billing service disconnected"));
                        }

                        @Override // com.unity3d.services.store.gpbl.listeners.PurchaseUpdatedResponseListener
                        public void onPurchaseUpdated(BillingResultBridge billingResult, List<? extends PurchaseBridge> list) {
                            Intrinsics.checkNotNullParameter(billingResult, "billingResult");
                            transactionEventManager.onPurchasesReceived(billingResult, list, TransactionEventRequestOuterClass.TransactionOrigin.TRANSACTION_ORIGIN_LIVE_UPDATE);
                        }
                    });
                    Object result = cancellableContinuationImpl.getResult();
                    if (result == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(this);
                    }
                    if (result == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (TransactionEventManager.this.sessionRepository.getNativeConfiguration().getFeatureFlags().getShouldSendIapHistory()) {
                BillingClientAdapter billingClientAdapter = TransactionEventManager.this.billingClientAdapter;
                final TransactionEventManager transactionEventManager2 = TransactionEventManager.this;
                billingClientAdapter.queryPurchasesAsync("inapp", new PurchasesResponseListener() { // from class: com.unity3d.ads.core.data.manager.TransactionEventManager$invoke$1$$ExternalSyntheticLambda0
                    @Override // com.unity3d.services.store.gpbl.listeners.PurchasesResponseListener
                    public final void onPurchaseResponse(BillingResultBridge billingResultBridge, List list) {
                        TransactionEventManager.AnonymousClass1.invokeSuspend$lambda$1(transactionEventManager2, billingResultBridge, list);
                    }
                });
                BillingClientAdapter billingClientAdapter2 = TransactionEventManager.this.billingClientAdapter;
                final TransactionEventManager transactionEventManager3 = TransactionEventManager.this;
                billingClientAdapter2.queryPurchasesAsync("subs", new PurchasesResponseListener() { // from class: com.unity3d.ads.core.data.manager.TransactionEventManager$invoke$1$$ExternalSyntheticLambda1
                    @Override // com.unity3d.services.store.gpbl.listeners.PurchasesResponseListener
                    public final void onPurchaseResponse(BillingResultBridge billingResultBridge, List list) {
                        TransactionEventManager.AnonymousClass1.invokeSuspend$lambda$2(transactionEventManager3, billingResultBridge, list);
                    }
                });
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$1(TransactionEventManager transactionEventManager, BillingResultBridge billingResultBridge, List list) {
            transactionEventManager.onPurchasesReceived(billingResultBridge, list, TransactionEventRequestOuterClass.TransactionOrigin.TRANSACTION_ORIGIN_HISTORICAL);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$2(TransactionEventManager transactionEventManager, BillingResultBridge billingResultBridge, List list) {
            transactionEventManager.onPurchasesReceived(billingResultBridge, list, TransactionEventRequestOuterClass.TransactionOrigin.TRANSACTION_ORIGIN_HISTORICAL);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.manager.TransactionEventManager$onPurchasesReceived$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TransactionEventManager.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.data.manager.TransactionEventManager$onPurchasesReceived$1", f = "TransactionEventManager.kt", l = {Sdk.SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, Sdk.SDKError.Reason.STORE_REGION_CODE_ERROR_VALUE, 147, 150}, m = "invokeSuspend")
    public static final class C40121 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<PurchaseBridge> $purchases;
        final /* synthetic */ TransactionEventRequestOuterClass.TransactionOrigin $transactionOrigin;
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;
        final /* synthetic */ TransactionEventManager this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C40121(List<? extends PurchaseBridge> list, TransactionEventManager transactionEventManager, TransactionEventRequestOuterClass.TransactionOrigin transactionOrigin, Continuation<? super C40121> continuation) {
            super(2, continuation);
            this.$purchases = list;
            this.this$0 = transactionEventManager;
            this.$transactionOrigin = transactionOrigin;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C40121(this.$purchases, this.this$0, this.$transactionOrigin, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C40121) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(12:12|(3:113|13|14)|103|65|(1:67)|71|72|80|81|26|(21:28|(1:30)|31|105|32|33|111|34|35|(1:38)|(2:109|40)(1:43)|44|(1:46)(1:47)|(2:53|(4:56|97|57|(5:59|60|101|61|(10:64|103|65|(0)|71|72|80|81|26|(2:82|(5:85|86|(0)|92|93))(0)))(7:70|71|72|80|81|26|(0)(0))))|75|107|76|77|81|26|(0)(0))(0)|90) */
        /* JADX WARN: Can't wrap try/catch for region: R(21:28|(1:30)|31|105|32|33|111|34|35|(1:38)|(2:109|40)(1:43)|44|(1:46)(1:47)|(2:53|(4:56|97|57|(5:59|60|101|61|(10:64|103|65|(0)|71|72|80|81|26|(2:82|(5:85|86|(0)|92|93))(0)))(7:70|71|72|80|81|26|(0)(0))))|75|107|76|77|81|26|(0)(0)) */
        /* JADX WARN: Can't wrap try/catch for region: R(5:59|60|101|61|(10:64|103|65|(0)|71|72|80|81|26|(2:82|(5:85|86|(0)|92|93))(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x01ab, code lost:
        
            r12 = r5;
            r11 = r13;
            r13 = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x01c2, code lost:
        
            r14 = 2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x01c3, code lost:
        
            r6 = r3;
            r3 = r5;
            r9 = r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x01d5, code lost:
        
            r14 = r7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x0236, code lost:
        
            if (r1 == r2) goto L90;
         */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00c6  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x016e A[Catch: Exception -> 0x01af, TRY_LEAVE, TryCatch #0 {Exception -> 0x01af, blocks: (B:57:0x0154, B:59:0x016e), top: B:97:0x0154 }] */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0199 A[Catch: Exception -> 0x01d7, TryCatch #3 {Exception -> 0x01d7, blocks: (B:65:0x0193, B:67:0x0199, B:71:0x01b5), top: B:103:0x0193 }] */
        /* JADX WARN: Removed duplicated region for block: B:70:0x01b1  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x01e8  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x021b  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x018f -> B:103:0x0193). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x01b1 -> B:71:0x01b5). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x01d3 -> B:81:0x01e4). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x01d7 -> B:72:0x01c0). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r21) {
            /*
                Method dump skipped, instruction units count: 583
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.manager.TransactionEventManager.C40121.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onPurchasesReceived(BillingResultBridge billingResultBridge, List<? extends PurchaseBridge> list, TransactionEventRequestOuterClass.TransactionOrigin transactionOrigin) {
        List<? extends PurchaseBridge> list2;
        if (billingResultBridge.getResponseCode() != BillingResultResponseCode.OK || (list2 = list) == null || list2.isEmpty() || this.billingClientAdapter == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C40121(list, this, transactionOrigin, null), 3, null);
    }

    /* JADX INFO: compiled from: TransactionEventManager.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
