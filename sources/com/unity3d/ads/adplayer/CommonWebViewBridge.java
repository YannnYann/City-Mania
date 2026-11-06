package com.unity3d.ads.adplayer;

import com.google.android.gms.ads.AdSize;
import com.google.protobuf.ByteString;
import com.unity3d.ads.adplayer.model.WebViewEvent;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.log.Logger;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlowKt;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: compiled from: CommonWebViewBridge.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CommonWebViewBridge implements WebViewBridge {
    private final MutableSharedFlow<Invocation> _onInvocation;
    private final MutableStateFlow<Set<Pair<String, CompletableDeferred<Object[]>>>> callbacks;
    private Map<String, ? extends Function0<? extends ExposedFunction>> exposedFunctions;
    private final Logger logger;
    private final SharedFlow<Invocation> onInvocation;
    private final CoroutineScope scope;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final WebViewContainer webViewContainer;

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocationResult$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge", f = "CommonWebViewBridge.kt", l = {150, 158, AdSize.WIDE_SKYSCRAPER_WIDTH, 164, 166, 181, 186}, m = "handleInvocationResult")
    public static final class C39831 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C39831(Continuation<? super C39831> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CommonWebViewBridge.this.handleInvocationResult(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$request$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge", f = "CommonWebViewBridge.kt", l = {83, 85}, m = "request")
    public static final class C39841 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C39841(Continuation<? super C39841> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CommonWebViewBridge.this.request(null, null, null, this);
        }
    }

    public CommonWebViewBridge(CoroutineDispatcher dispatcher, WebViewContainer webViewContainer, CoroutineScope adPlayerScope, SendDiagnosticEvent sendDiagnosticEvent, Logger logger) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(webViewContainer, "webViewContainer");
        Intrinsics.checkNotNullParameter(adPlayerScope, "adPlayerScope");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.webViewContainer = webViewContainer;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.logger = logger;
        CoroutineScope coroutineScopePlus = CoroutineScopeKt.plus(CoroutineScopeKt.plus(adPlayerScope, dispatcher), new CoroutineName("CommonWebViewBridge"));
        this.scope = coroutineScopePlus;
        this.callbacks = StateFlowKt.MutableStateFlow(SetsKt__SetsKt.emptySet());
        MutableSharedFlow<Invocation> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 64, null, 5, null);
        this._onInvocation = mutableSharedFlowMutableSharedFlow$default;
        this.onInvocation = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
        this.exposedFunctions = MapsKt__MapsKt.emptyMap();
        BuildersKt__Builders_commonKt.launch$default(coroutineScopePlus, null, null, new AnonymousClass1(null), 3, null);
    }

    public final CoroutineScope getScope() {
        return this.scope;
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public SharedFlow<Invocation> getOnInvocation() {
        return this.onInvocation;
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public Map<String, Function0<ExposedFunction>> getExposedFunctions() {
        return this.exposedFunctions;
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public void setExposedFunctions(Map<String, ? extends Function0<? extends ExposedFunction>> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.exposedFunctions = map;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$1, reason: invalid class name */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge$1", f = "CommonWebViewBridge.kt", l = {53}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CommonWebViewBridge.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                WebViewContainer webViewContainer = CommonWebViewBridge.this.webViewContainer;
                CommonWebViewBridge commonWebViewBridge = CommonWebViewBridge.this;
                this.label = 1;
                if (webViewContainer.addJavascriptInterface(commonWebViewBridge, "webviewbridge", this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public final Object execute(HandlerType handlerType, JSONArray jSONArray, Continuation<? super Unit> continuation) {
        Object objEvaluateJavascript = this.webViewContainer.evaluateJavascript(handlerType, jSONArray, continuation);
        return objEvaluateJavascript == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEvaluateJavascript : Unit.INSTANCE;
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public Object sendEvent(WebViewEvent webViewEvent, Continuation<? super Unit> continuation) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(webViewEvent.getCategory());
        jSONArray.put(webViewEvent.getName());
        for (Object obj : webViewEvent.getParameters()) {
            jSONArray.put(obj);
        }
        Object objExecute = execute(HandlerType.EVENT, jSONArray, continuation);
        return objExecute == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objExecute : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.adplayer.WebViewBridge
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object request(java.lang.String r11, java.lang.String r12, java.lang.Object[] r13, kotlin.coroutines.Continuation<? super java.lang.Object[]> r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof com.unity3d.ads.adplayer.CommonWebViewBridge.C39841
            if (r0 == 0) goto L13
            r0 = r14
            com.unity3d.ads.adplayer.CommonWebViewBridge$request$1 r0 = (com.unity3d.ads.adplayer.CommonWebViewBridge.C39841) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.CommonWebViewBridge$request$1 r0 = new com.unity3d.ads.adplayer.CommonWebViewBridge$request$1
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L3d
            if (r2 == r5) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r14)
            return r14
        L2d:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L35:
            java.lang.Object r11 = r0.L$0
            kotlinx.coroutines.CompletableDeferred r11 = (kotlinx.coroutines.CompletableDeferred) r11
            kotlin.ResultKt.throwOnFailure(r14)
            goto L8b
        L3d:
            kotlin.ResultKt.throwOnFailure(r14)
            kotlinx.coroutines.CompletableDeferred r14 = kotlinx.coroutines.CompletableDeferredKt.CompletableDeferred$default(r4, r5, r4)
            int r2 = r14.hashCode()
            java.lang.String r2 = java.lang.String.valueOf(r2)
            kotlinx.coroutines.flow.MutableStateFlow<java.util.Set<kotlin.Pair<java.lang.String, kotlinx.coroutines.CompletableDeferred<java.lang.Object[]>>>> r6 = r10.callbacks
        L4e:
            java.lang.Object r7 = r6.getValue()
            r8 = r7
            java.util.Set r8 = (java.util.Set) r8
            kotlin.Pair r9 = kotlin.TuplesKt.to(r2, r14)
            java.util.Set r8 = kotlin.collections.SetsKt___SetsKt.plus(r8, r9)
            boolean r7 = r6.compareAndSet(r7, r8)
            if (r7 == 0) goto L4e
            org.json.JSONArray r6 = new org.json.JSONArray
            r6.<init>()
            r6.put(r11)
            r6.put(r12)
            r6.put(r2)
            int r11 = r13.length
            r12 = 0
        L73:
            if (r12 >= r11) goto L7d
            r2 = r13[r12]
            r6.put(r2)
            int r12 = r12 + 1
            goto L73
        L7d:
            com.unity3d.ads.adplayer.HandlerType r11 = com.unity3d.ads.adplayer.HandlerType.INVOCATION
            r0.L$0 = r14
            r0.label = r5
            java.lang.Object r11 = r10.execute(r11, r6, r0)
            if (r11 != r1) goto L8a
            goto L95
        L8a:
            r11 = r14
        L8b:
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r11 = r11.await(r0)
            if (r11 != r1) goto L96
        L95:
            return r1
        L96:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.CommonWebViewBridge.request(java.lang.String, java.lang.String, java.lang.Object[], kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x009a  */
    @Override // com.unity3d.ads.adplayer.WebViewBridge
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleCallback(java.lang.String r4, java.lang.String r5, java.lang.String r6) {
        /*
            r3 = this;
            java.lang.String r0 = "callbackId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "callbackStatus"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "rawParameters"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            org.json.JSONArray r0 = new org.json.JSONArray
            r0.<init>(r6)
            java.lang.Object[] r6 = com.unity3d.ads.core.extensions.JSONArrayExtensionsKt.toTypedArray(r0)
            kotlinx.coroutines.flow.MutableStateFlow<java.util.Set<kotlin.Pair<java.lang.String, kotlinx.coroutines.CompletableDeferred<java.lang.Object[]>>>> r0 = r3.callbacks
            java.lang.Object r0 = r0.getValue()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        L24:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L3e
            java.lang.Object r1 = r0.next()
            r2 = r1
            kotlin.Pair r2 = (kotlin.Pair) r2
            java.lang.Object r2 = r2.component1()
            java.lang.String r2 = (java.lang.String) r2
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r4)
            if (r2 == 0) goto L24
            goto L3f
        L3e:
            r1 = 0
        L3f:
            kotlin.Pair r1 = (kotlin.Pair) r1
            if (r1 != 0) goto L45
            goto Lb0
        L45:
            java.lang.Object r4 = r1.component2()
            kotlinx.coroutines.CompletableDeferred r4 = (kotlinx.coroutines.CompletableDeferred) r4
            int r0 = r5.hashCode()
            r2 = -1867169789(0xffffffff90b54003, float:-7.149054E-29)
            if (r0 == r2) goto L91
            r2 = 2524(0x9dc, float:3.537E-42)
            if (r0 == r2) goto L88
            r2 = 66247144(0x3f2d9e8, float:1.42735105E-36)
            if (r0 == r2) goto L6c
            r2 = 96784904(0x5c4d208, float:1.8508905E-35)
            if (r0 == r2) goto L63
            goto L9d
        L63:
            java.lang.String r0 = "error"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L75
            goto L9d
        L6c:
            java.lang.String r0 = "ERROR"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L75
            goto L9d
        L75:
            java.lang.Exception r5 = new java.lang.Exception
            r0 = 0
            r6 = r6[r0]
            java.lang.String r0 = "null cannot be cast to non-null type kotlin.String"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6, r0)
            java.lang.String r6 = (java.lang.String) r6
            r5.<init>(r6)
            r4.completeExceptionally(r5)
            goto L9d
        L88:
            java.lang.String r0 = "OK"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L9a
            goto L9d
        L91:
            java.lang.String r0 = "success"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L9a
            goto L9d
        L9a:
            r4.complete(r6)
        L9d:
            kotlinx.coroutines.flow.MutableStateFlow<java.util.Set<kotlin.Pair<java.lang.String, kotlinx.coroutines.CompletableDeferred<java.lang.Object[]>>>> r4 = r3.callbacks
        L9f:
            java.lang.Object r5 = r4.getValue()
            r6 = r5
            java.util.Set r6 = (java.util.Set) r6
            java.util.Set r6 = kotlin.collections.SetsKt___SetsKt.minus(r6, r1)
            boolean r5 = r4.compareAndSet(r5, r6)
            if (r5 == 0) goto L9f
        Lb0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.CommonWebViewBridge.handleCallback(java.lang.String, java.lang.String, java.lang.String):void");
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public void handleInvocation(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        try {
            try {
                JSONArray jSONArray = new JSONArray(message);
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    Object obj = jSONArray.get(i);
                    JSONArray jSONArray2 = obj instanceof JSONArray ? (JSONArray) obj : null;
                    if (jSONArray2 == null) {
                        throw new IllegalArgumentException(("Invalid invocation passed to CommonWebViewBridge: " + message).toString());
                    }
                    if (jSONArray2.length() != 4) {
                        throw new IllegalArgumentException(("Invocation must have 4 elements: " + jSONArray2).toString());
                    }
                    Object obj2 = jSONArray2.get(0);
                    String str = obj2 instanceof String ? (String) obj2 : null;
                    if (str == null) {
                        throw new IllegalArgumentException(("Invalid class name passed to CommonWebViewBridge: " + message).toString());
                    }
                    Object obj3 = jSONArray2.get(1);
                    String str2 = obj3 instanceof String ? (String) obj3 : null;
                    if (str2 == null) {
                        throw new IllegalArgumentException(("Invalid method name passed to CommonWebViewBridge: " + message).toString());
                    }
                    Object obj4 = jSONArray2.get(2);
                    JSONArray jSONArray3 = obj4 instanceof JSONArray ? (JSONArray) obj4 : null;
                    if (jSONArray3 == null) {
                        throw new IllegalArgumentException(("Invalid parameters passed to CommonWebViewBridge: " + message).toString());
                    }
                    Object obj5 = jSONArray2.get(3);
                    String str3 = obj5 instanceof String ? (String) obj5 : null;
                    if (str3 == null) {
                        throw new IllegalArgumentException(("Invalid callback id passed to CommonWebViewBridge: " + message).toString());
                    }
                    String str4 = str + '.' + str2;
                    this.logger.debug("Unity Ads WebView calling for: " + str4 + '(' + jSONArray3 + ')');
                    BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new AnonymousClass7(str4, jSONArray3, this, str3, null), 3, null);
                }
            } catch (JSONException e) {
                throw new IllegalArgumentException("Invalid JSON array passed to CommonWebViewBridge: " + message, e);
            }
        } catch (Throwable th) {
            this.logger.error("Error handling invocation from webview (" + message + ')', th);
            SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
            String message2 = th.getMessage();
            if (message2 == null) {
                message2 = th.getClass().getSimpleName();
            }
            SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_webview_invocation_error", (Double) null, MapsKt__MapsKt.mapOf(TuplesKt.to("reason_debug", message2), TuplesKt.to("webview_invocation", message)), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, (Object) null);
            throw new IllegalArgumentException("Invalid message passed to CommonWebViewBridge: " + message, th);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$7, reason: invalid class name */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$7", f = "CommonWebViewBridge.kt", l = {Sdk.SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE, Sdk.SDKError.Reason.STORE_REGION_CODE_ERROR_VALUE}, m = "invokeSuspend")
    public static final class AnonymousClass7 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $callback;
        final /* synthetic */ String $location;
        final /* synthetic */ JSONArray $parameters;
        Object L$0;
        int label;
        final /* synthetic */ CommonWebViewBridge this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass7(String str, JSONArray jSONArray, CommonWebViewBridge commonWebViewBridge, String str2, Continuation<? super AnonymousClass7> continuation) {
            super(2, continuation);
            this.$location = str;
            this.$parameters = jSONArray;
            this.this$0 = commonWebViewBridge;
            this.$callback = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass7(this.$location, this.$parameters, this.this$0, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass7) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
        
            if (r6.handleInvocationResult(r1, r3, r5) == r0) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L22
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r6)
                goto L53
            L12:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1a:
                java.lang.Object r1 = r5.L$0
                com.unity3d.ads.adplayer.Invocation r1 = (com.unity3d.ads.adplayer.Invocation) r1
                kotlin.ResultKt.throwOnFailure(r6)
                goto L43
            L22:
                kotlin.ResultKt.throwOnFailure(r6)
                com.unity3d.ads.adplayer.Invocation r1 = new com.unity3d.ads.adplayer.Invocation
                java.lang.String r6 = r5.$location
                org.json.JSONArray r4 = r5.$parameters
                java.lang.Object[] r4 = com.unity3d.ads.core.extensions.JSONArrayExtensionsKt.toTypedArray(r4)
                r1.<init>(r6, r4)
                com.unity3d.ads.adplayer.CommonWebViewBridge r6 = r5.this$0
                kotlinx.coroutines.flow.MutableSharedFlow r6 = com.unity3d.ads.adplayer.CommonWebViewBridge.access$get_onInvocation$p(r6)
                r5.L$0 = r1
                r5.label = r3
                java.lang.Object r6 = r6.emit(r1, r5)
                if (r6 != r0) goto L43
                goto L52
            L43:
                com.unity3d.ads.adplayer.CommonWebViewBridge r6 = r5.this$0
                java.lang.String r3 = r5.$callback
                r4 = 0
                r5.L$0 = r4
                r5.label = r2
                java.lang.Object r6 = com.unity3d.ads.adplayer.CommonWebViewBridge.access$handleInvocationResult(r6, r1, r3, r5)
                if (r6 != r0) goto L53
            L52:
                return r0
            L53:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.CommonWebViewBridge.AnonymousClass7.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01c1, code lost:
    
        if (respond(r12, "ERROR", new java.lang.Object[]{r2}, r13) != r1) goto L82;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0107 A[Catch: all -> 0x004b, PHI: r0 r11 r12
      0x0107: PHI (r0v22 java.lang.Object) = (r0v16 java.lang.Object), (r0v18 java.lang.Object), (r0v3 java.lang.Object) binds: [B:54:0x0103, B:51:0x00f0, B:30:0x0074] A[DONT_GENERATE, DONT_INLINE]
      0x0107: PHI (r11v16 com.unity3d.ads.adplayer.Invocation) = 
      (r11v0 com.unity3d.ads.adplayer.Invocation)
      (r11v0 com.unity3d.ads.adplayer.Invocation)
      (r11v20 com.unity3d.ads.adplayer.Invocation)
     binds: [B:54:0x0103, B:51:0x00f0, B:30:0x0074] A[DONT_GENERATE, DONT_INLINE]
      0x0107: PHI (r12v17 java.lang.String) = (r12v0 java.lang.String), (r12v0 java.lang.String), (r12v18 java.lang.String) binds: [B:54:0x0103, B:51:0x00f0, B:30:0x0074] A[DONT_GENERATE, DONT_INLINE], TryCatch #1 {all -> 0x004b, blocks: (B:19:0x0046, B:30:0x0074, B:56:0x0107, B:58:0x010b, B:61:0x011c, B:63:0x0120, B:71:0x0168, B:34:0x008c, B:42:0x00b5, B:37:0x0093, B:39:0x00a3, B:44:0x00b8, B:46:0x00c8, B:48:0x00d0, B:50:0x00de, B:53:0x00f4, B:74:0x017a, B:75:0x019d), top: B:93:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x010b A[Catch: all -> 0x004b, TryCatch #1 {all -> 0x004b, blocks: (B:19:0x0046, B:30:0x0074, B:56:0x0107, B:58:0x010b, B:61:0x011c, B:63:0x0120, B:71:0x0168, B:34:0x008c, B:42:0x00b5, B:37:0x0093, B:39:0x00a3, B:44:0x00b8, B:46:0x00c8, B:48:0x00d0, B:50:0x00de, B:53:0x00f4, B:74:0x017a, B:75:0x019d), top: B:93:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x011c A[Catch: all -> 0x004b, TryCatch #1 {all -> 0x004b, blocks: (B:19:0x0046, B:30:0x0074, B:56:0x0107, B:58:0x010b, B:61:0x011c, B:63:0x0120, B:71:0x0168, B:34:0x008c, B:42:0x00b5, B:37:0x0093, B:39:0x00a3, B:44:0x00b8, B:46:0x00c8, B:48:0x00d0, B:50:0x00de, B:53:0x00f4, B:74:0x017a, B:75:0x019d), top: B:93:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0148 A[Catch: all -> 0x005d, TRY_LEAVE, TryCatch #2 {all -> 0x005d, blocks: (B:24:0x0058, B:67:0x013e, B:69:0x0148), top: B:95:0x0058 }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object handleInvocationResult(com.unity3d.ads.adplayer.Invocation r11, java.lang.String r12, kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            Method dump skipped, instruction units count: 552
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.CommonWebViewBridge.handleInvocationResult(com.unity3d.ads.adplayer.Invocation, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocationResult$2, reason: invalid class name */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    public /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function2<WebViewEvent, Continuation<? super Unit>, Object> {
        public AnonymousClass2(Object obj) {
            super(2, obj, CommonWebViewBridge.class, "sendEvent", "sendEvent(Lcom/unity3d/ads/adplayer/model/WebViewEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(WebViewEvent webViewEvent, Continuation<? super Unit> continuation) {
            return ((CommonWebViewBridge) this.receiver).sendEvent(webViewEvent, continuation);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocationResult$3, reason: invalid class name */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocationResult$3", f = "CommonWebViewBridge.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super WebViewEvent>, Throwable, Continuation<? super Unit>, Object> {
        final /* synthetic */ Invocation $invocation;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Invocation invocation, Continuation<? super AnonymousClass3> continuation) {
            super(3, continuation);
            this.$invocation = invocation;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector<? super WebViewEvent> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            AnonymousClass3 anonymousClass3 = CommonWebViewBridge.this.new AnonymousClass3(this.$invocation, continuation);
            anonymousClass3.L$0 = th;
            return anonymousClass3.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                Throwable th = (Throwable) this.L$0;
                CommonWebViewBridge.this.logger.error("Error delivering flow event", th);
                SendDiagnosticEvent sendDiagnosticEvent = CommonWebViewBridge.this.sendDiagnosticEvent;
                String message = th.getMessage();
                if (message == null) {
                    message = th.getClass().getSimpleName();
                }
                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_webview_invocation_error", (Double) null, MapsKt__MapsKt.mapOf(TuplesKt.to("reason_debug", message), TuplesKt.to("webview_invocation", this.$invocation.getLocation())), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, (Object) null);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object respond(String str, String str2, Object[] objArr, Continuation<? super Unit> continuation) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(str);
        jSONArray.put(str2);
        jSONArray.put(new JSONArray(objArr));
        Object objExecute = execute(HandlerType.CALLBACK, new JSONArray((Collection) CollectionsKt__CollectionsJVMKt.listOf(jSONArray)), continuation);
        return objExecute == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objExecute : Unit.INSTANCE;
    }
}
