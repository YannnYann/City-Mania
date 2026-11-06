package com.unity3d.ads.core.domain.adload;

import com.google.protobuf.ByteString;
import com.ironsource.Hd;
import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.adload.WebViewContainerResult;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.core.log.Logger;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.TimeMark;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: EagerPreloadOnLoadStrategy.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class EagerPreloadOnLoadStrategy implements PreShowWebViewStrategy {
    private final ConcurrentHashMap<ByteString, CompletableDeferred<WebViewContainerResult.FullyPreloaded>> deferreds;
    private final AndroidGetWebViewContainerUseCase getWebViewContainer;
    private final Logger logger;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$acquireForShow$1, reason: invalid class name */
    /* JADX INFO: compiled from: EagerPreloadOnLoadStrategy.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy", f = "EagerPreloadOnLoadStrategy.kt", l = {107, 109, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE}, m = "acquireForShow")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EagerPreloadOnLoadStrategy.this.acquireForShow(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onLoadSuccess$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: EagerPreloadOnLoadStrategy.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy", f = "EagerPreloadOnLoadStrategy.kt", l = {59, 73, 79, 89}, m = Hd.f)
    public static final class C40371 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C40371(Continuation<? super C40371> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EagerPreloadOnLoadStrategy.this.onLoadSuccess(null, null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onShowComplete$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: EagerPreloadOnLoadStrategy.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy", f = "EagerPreloadOnLoadStrategy.kt", l = {Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE}, m = "onShowComplete")
    public static final class C40381 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C40381(Continuation<? super C40381> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return EagerPreloadOnLoadStrategy.this.onShowComplete(null, this);
        }
    }

    public EagerPreloadOnLoadStrategy(AndroidGetWebViewContainerUseCase getWebViewContainer, SendDiagnosticEvent sendDiagnosticEvent, Logger logger) {
        Intrinsics.checkNotNullParameter(getWebViewContainer, "getWebViewContainer");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.getWebViewContainer = getWebViewContainer;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.logger = logger;
        this.deferreds = new ConcurrentHashMap<>();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|2|(2:4|(1:6)(1:7))(0)|8|(1:(1:(1:(1:(3:14|86|87)(2:15|16))(3:17|72|(4:74|(1:76)|77|78)(2:79|80)))(7:18|98|19|61|66|(2:68|(3:71|72|(0)(0)))(2:81|(1:83)(4:88|(1:90)(2:91|(1:93)(2:96|97))|94|95))|85))(4:23|104|24|25))(8:29|108|30|31|106|32|(1:35)|85)|102|36|37|45|(2:47|(4:49|(1:51)|52|53)(2:54|55))(5:56|100|57|(4:60|61|66|(0)(0))|85)) */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b9, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01b4, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r0, r1, r3) == r4) goto L85;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0185  */
    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object onLoadSuccess(com.unity3d.ads.core.data.model.AdObject r24, java.lang.String r25, gatewayprotocol.v1.AdResponseOuterClass.AdResponse r26, kotlinx.coroutines.CoroutineScope r27, kotlin.jvm.functions.Function2<? super com.unity3d.ads.adplayer.WebViewContainer, ? super kotlin.coroutines.Continuation<? super com.unity3d.ads.core.domain.adload.PreloadedWebView>, ? extends java.lang.Object> r28, kotlin.coroutines.Continuation<? super kotlin.Unit> r29) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 548
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.onLoadSuccess(com.unity3d.ads.core.data.model.AdObject, java.lang.String, gatewayprotocol.v1.AdResponseOuterClass$AdResponse, kotlinx.coroutines.CoroutineScope, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onLoadSuccess$4, reason: invalid class name */
    /* JADX INFO: compiled from: EagerPreloadOnLoadStrategy.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onLoadSuccess$4", f = "EagerPreloadOnLoadStrategy.kt", l = {89}, m = "invokeSuspend")
    public static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AndroidWebViewContainer $container;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(AndroidWebViewContainer androidWebViewContainer, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$container = androidWebViewContainer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass4(this.$container, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                AndroidWebViewContainer androidWebViewContainer = this.$container;
                this.label = 1;
                if (androidWebViewContainer.destroy(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0068, code lost:
    
        if (r11 == r1) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009c, code lost:
    
        if (r11 == r1) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object acquireForShow(kotlinx.coroutines.CoroutineScope r9, com.unity3d.ads.core.data.model.AdObject r10, kotlin.coroutines.Continuation<? super com.unity3d.ads.core.domain.adload.WebViewContainerResult> r11) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r11 instanceof com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r11
            com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$acquireForShow$1 r0 = (com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$acquireForShow$1 r0 = new com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$acquireForShow$1
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L4f
            if (r2 == r5) goto L4b
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            kotlin.ResultKt.throwOnFailure(r11)
            goto L9f
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            java.lang.Object r9 = r0.L$2
            kotlinx.coroutines.CompletableDeferred r9 = (kotlinx.coroutines.CompletableDeferred) r9
            java.lang.Object r10 = r0.L$1
            com.unity3d.ads.core.data.model.AdObject r10 = (com.unity3d.ads.core.data.model.AdObject) r10
            java.lang.Object r2 = r0.L$0
            kotlinx.coroutines.CoroutineScope r2 = (kotlinx.coroutines.CoroutineScope) r2
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L49
            goto L86
        L49:
            r10 = move-exception
            goto La9
        L4b:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L6b
        L4f:
            kotlin.ResultKt.throwOnFailure(r11)
            java.util.concurrent.ConcurrentHashMap<com.google.protobuf.ByteString, kotlinx.coroutines.CompletableDeferred<com.unity3d.ads.core.domain.adload.WebViewContainerResult$FullyPreloaded>> r11 = r8.deferreds
            com.google.protobuf.ByteString r2 = r10.getOpportunityId()
            java.lang.Object r11 = r11.remove(r2)
            kotlinx.coroutines.CompletableDeferred r11 = (kotlinx.coroutines.CompletableDeferred) r11
            if (r11 != 0) goto L73
            com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase r11 = r8.getWebViewContainer
            r0.label = r5
            java.lang.Object r11 = r11.invoke(r9, r10, r0)
            if (r11 != r1) goto L6b
            goto L9e
        L6b:
            com.unity3d.ads.adplayer.AndroidWebViewContainer r11 = (com.unity3d.ads.adplayer.AndroidWebViewContainer) r11
            com.unity3d.ads.core.domain.adload.WebViewContainerResult$OnDemand r9 = new com.unity3d.ads.core.domain.adload.WebViewContainerResult$OnDemand
            r9.<init>(r11)
            return r9
        L73:
            r0.L$0 = r9     // Catch: java.lang.Throwable -> La7
            r0.L$1 = r10     // Catch: java.lang.Throwable -> La7
            r0.L$2 = r11     // Catch: java.lang.Throwable -> La7
            r0.label = r4     // Catch: java.lang.Throwable -> La7
            java.lang.Object r2 = r11.await(r0)     // Catch: java.lang.Throwable -> La7
            if (r2 != r1) goto L82
            goto L9e
        L82:
            r7 = r2
            r2 = r9
            r9 = r11
            r11 = r7
        L86:
            com.unity3d.ads.core.domain.adload.WebViewContainerResult$FullyPreloaded r11 = (com.unity3d.ads.core.domain.adload.WebViewContainerResult.FullyPreloaded) r11     // Catch: java.lang.Throwable -> L49
            r9.complete(r6)
            if (r11 == 0) goto L8e
            return r11
        L8e:
            com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase r9 = r8.getWebViewContainer
            r0.L$0 = r6
            r0.L$1 = r6
            r0.L$2 = r6
            r0.label = r3
            java.lang.Object r11 = r9.invoke(r2, r10, r0)
            if (r11 != r1) goto L9f
        L9e:
            return r1
        L9f:
            com.unity3d.ads.adplayer.AndroidWebViewContainer r11 = (com.unity3d.ads.adplayer.AndroidWebViewContainer) r11
            com.unity3d.ads.core.domain.adload.WebViewContainerResult$OnDemand r9 = new com.unity3d.ads.core.domain.adload.WebViewContainerResult$OnDemand
            r9.<init>(r11)
            return r9
        La7:
            r10 = move-exception
            r9 = r11
        La9:
            r9.complete(r6)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.acquireForShow(kotlinx.coroutines.CoroutineScope, com.unity3d.ads.core.data.model.AdObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x006c, code lost:
    
        if (r6.destroy(r0) == r1) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object onShowComplete(com.unity3d.ads.core.data.model.AdObject r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.C40381
            if (r0 == 0) goto L13
            r0 = r7
            com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onShowComplete$1 r0 = (com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.C40381) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onShowComplete$1 r0 = new com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy$onShowComplete$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L6f
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L5c
        L38:
            kotlin.ResultKt.throwOnFailure(r7)
            java.util.concurrent.ConcurrentHashMap<com.google.protobuf.ByteString, kotlinx.coroutines.CompletableDeferred<com.unity3d.ads.core.domain.adload.WebViewContainerResult$FullyPreloaded>> r7 = r5.deferreds
            com.google.protobuf.ByteString r6 = r6.getOpportunityId()
            java.lang.Object r6 = r7.remove(r6)
            kotlinx.coroutines.CompletableDeferred r6 = (kotlinx.coroutines.CompletableDeferred) r6
            if (r6 != 0) goto L4c
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L4c:
            r7 = 0
            boolean r7 = r6.complete(r7)
            if (r7 != 0) goto L72
            r0.label = r4
            java.lang.Object r7 = r6.await(r0)
            if (r7 != r1) goto L5c
            goto L6e
        L5c:
            com.unity3d.ads.core.domain.adload.WebViewContainerResult$FullyPreloaded r7 = (com.unity3d.ads.core.domain.adload.WebViewContainerResult.FullyPreloaded) r7
            if (r7 == 0) goto L72
            com.unity3d.ads.adplayer.AndroidWebViewContainer r6 = r7.getContainer()
            if (r6 == 0) goto L72
            r0.label = r3
            java.lang.Object r6 = r6.destroy(r0)
            if (r6 != r1) goto L6f
        L6e:
            return r1
        L6f:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L72:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.adload.EagerPreloadOnLoadStrategy.onShowComplete(com.unity3d.ads.core.data.model.AdObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onAdExpired(AdObject adObject, Continuation<? super Unit> continuation) {
        Object objOnShowComplete = onShowComplete(adObject, continuation);
        return objOnShowComplete == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objOnShowComplete : Unit.INSTANCE;
    }

    public static /* synthetic */ void reportPreloadFailure$default(EagerPreloadOnLoadStrategy eagerPreloadOnLoadStrategy, AdObject adObject, TimeMark timeMark, String str, String str2, Throwable th, int i, Object obj) {
        if ((i & 16) != 0) {
            th = null;
        }
        eagerPreloadOnLoadStrategy.reportPreloadFailure(adObject, timeMark, str, str2, th);
    }

    private final void reportPreloadFailure(AdObject adObject, TimeMark timeMark, String str, String str2, Throwable th) {
        this.logger.error("Eager WebView preload failed (" + str + "): " + str2, th);
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_eager_preshow_preload_failure_time", Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark)), MapsKt__MapsKt.mapOf(TuplesKt.to("reason", str), TuplesKt.to("reason_debug", str2)), (Map) null, adObject, (Integer) null, (ByteString) null, 104, (Object) null);
    }
}
