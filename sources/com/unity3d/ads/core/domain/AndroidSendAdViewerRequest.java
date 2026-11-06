package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.gatewayclient.GatewayClient;
import gatewayprotocol.v1.AdViewerResponseOuterClass;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AndroidSendAdViewerRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidSendAdViewerRequest implements SendAdViewerRequest {
    private final CoroutineDispatcher defaultDispatcher;
    private final GatewayClient gatewayClient;
    private final GetAdViewerRequest getAdViewerRequest;
    private final GetRequestPolicy getRequestPolicy;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidSendAdViewerRequest$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidSendAdViewerRequest.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidSendAdViewerRequest", f = "AndroidSendAdViewerRequest.kt", l = {20}, m = "invoke")
    public static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidSendAdViewerRequest.this.invoke(null, null, this);
        }
    }

    public AndroidSendAdViewerRequest(CoroutineDispatcher defaultDispatcher, GetAdViewerRequest getAdViewerRequest, GetRequestPolicy getRequestPolicy, GatewayClient gatewayClient) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(getAdViewerRequest, "getAdViewerRequest");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        this.defaultDispatcher = defaultDispatcher;
        this.getAdViewerRequest = getAdViewerRequest;
        this.getRequestPolicy = getRequestPolicy;
        this.gatewayClient = gatewayClient;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.domain.SendAdViewerRequest
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object invoke(com.google.protobuf.ByteString r6, com.google.protobuf.ByteString r7, kotlin.coroutines.Continuation<? super gatewayprotocol.v1.AdViewerResponseOuterClass.AdViewerResponse> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r8
            com.unity3d.ads.core.domain.AndroidSendAdViewerRequest$invoke$1 r0 = (com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.AndroidSendAdViewerRequest$invoke$1 r0 = new com.unity3d.ads.core.domain.AndroidSendAdViewerRequest$invoke$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r8)
            goto L45
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.CoroutineDispatcher r8 = r5.defaultDispatcher
            com.unity3d.ads.core.domain.AndroidSendAdViewerRequest$invoke$2 r2 = new com.unity3d.ads.core.domain.AndroidSendAdViewerRequest$invoke$2
            r4 = 0
            r2.<init>(r6, r7, r4)
            r0.label = r3
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r8, r2, r0)
            if (r8 != r1) goto L45
            return r1
        L45:
            java.lang.String r6 = "withContext(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r6)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.invoke(com.google.protobuf.ByteString, com.google.protobuf.ByteString, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidSendAdViewerRequest$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidSendAdViewerRequest.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidSendAdViewerRequest$invoke$2", f = "AndroidSendAdViewerRequest.kt", l = {21, 23}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AdViewerResponseOuterClass.AdViewerResponse>, Object> {
        final /* synthetic */ ByteString $opportunityId;
        final /* synthetic */ ByteString $payload;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(ByteString byteString, ByteString byteString2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$opportunityId = byteString;
            this.$payload = byteString2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidSendAdViewerRequest.this.new AnonymousClass2(this.$opportunityId, this.$payload, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super AdViewerResponseOuterClass.AdViewerResponse> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0053, code lost:
        
            if (r12 == r0) goto L15;
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
                if (r1 == 0) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r12)
                goto L56
            L12:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L1a:
                kotlin.ResultKt.throwOnFailure(r12)
                goto L34
            L1e:
                kotlin.ResultKt.throwOnFailure(r12)
                com.unity3d.ads.core.domain.AndroidSendAdViewerRequest r12 = com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.this
                com.unity3d.ads.core.domain.GetAdViewerRequest r12 = com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.access$getGetAdViewerRequest$p(r12)
                com.google.protobuf.ByteString r1 = r11.$opportunityId
                com.google.protobuf.ByteString r4 = r11.$payload
                r11.label = r3
                java.lang.Object r12 = r12.invoke(r1, r4, r11)
                if (r12 != r0) goto L34
                goto L55
            L34:
                r5 = r12
                gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest r5 = (gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest) r5
                com.unity3d.ads.core.domain.AndroidSendAdViewerRequest r12 = com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.this
                com.unity3d.ads.core.domain.GetRequestPolicy r12 = com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.access$getGetRequestPolicy$p(r12)
                com.unity3d.ads.gatewayclient.RequestPolicy r6 = r12.invoke()
                com.unity3d.ads.core.domain.AndroidSendAdViewerRequest r12 = com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.this
                com.unity3d.ads.gatewayclient.GatewayClient r3 = com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.access$getGatewayClient$p(r12)
                com.unity3d.ads.core.data.model.OperationType r7 = com.unity3d.ads.core.data.model.OperationType.AD_VIEWER_REQUEST
                r11.label = r2
                r4 = 0
                r9 = 1
                r10 = 0
                r8 = r11
                java.lang.Object r12 = com.unity3d.ads.gatewayclient.GatewayClient.DefaultImpls.request$default(r3, r4, r5, r6, r7, r8, r9, r10)
                if (r12 != r0) goto L56
            L55:
                return r0
            L56:
                gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse r12 = (gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse) r12
                gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse$Payload r12 = r12.getPayload()
                gatewayprotocol.v1.AdViewerResponseOuterClass$AdViewerResponse r12 = r12.getAdViewerResponse()
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidSendAdViewerRequest.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }
}
