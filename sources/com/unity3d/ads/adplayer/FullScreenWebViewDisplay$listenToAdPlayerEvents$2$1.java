package com.unity3d.ads.adplayer;

import androidx.lifecycle.LifecycleOwnerKt;
import com.unity3d.ads.adplayer.DisplayMessage;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableSharedFlow;

/* JADX INFO: compiled from: FullScreenWebViewDisplay.kt */
/* JADX INFO: loaded from: classes4.dex */
@DebugMetadata(c = "com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1", f = "FullScreenWebViewDisplay.kt", l = {}, m = "invokeSuspend")
public final class FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1 extends SuspendLambda implements Function2<FlowCollector<? super DisplayMessage>, Continuation<? super Unit>, Object> {
    final /* synthetic */ CancellableContinuation<Unit> $continuation;
    int label;
    final /* synthetic */ FullScreenWebViewDisplay this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1(FullScreenWebViewDisplay fullScreenWebViewDisplay, CancellableContinuation<? super Unit> cancellableContinuation, Continuation<? super FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1> continuation) {
        super(2, continuation);
        this.this$0 = fullScreenWebViewDisplay;
        this.$continuation = cancellableContinuation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1(this.this$0, this.$continuation, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector<? super DisplayMessage> flowCollector, Continuation<? super Unit> continuation) {
        return ((FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: FullScreenWebViewDisplay.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1$1", f = "FullScreenWebViewDisplay.kt", l = {Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE, Sdk.SDKError.Reason.INVALID_CONFIG_RESPONSE_VALUE}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ CancellableContinuation<Unit> $continuation;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ FullScreenWebViewDisplay this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(FullScreenWebViewDisplay fullScreenWebViewDisplay, CancellableContinuation<? super Unit> cancellableContinuation, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = fullScreenWebViewDisplay;
            this.$continuation = cancellableContinuation;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$continuation, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x005c, code lost:
        
            if (r12 == r0) goto L31;
         */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0067  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00af  */
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
                r4 = 0
                if (r1 == 0) goto L28
                if (r1 == r3) goto L20
                if (r1 != r2) goto L18
                java.lang.Object r0 = r11.L$0
                kotlinx.coroutines.CoroutineScope r0 = (kotlinx.coroutines.CoroutineScope) r0
                kotlin.ResultKt.throwOnFailure(r12)
                goto Lb0
            L18:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L20:
                java.lang.Object r1 = r11.L$0
                kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
                kotlin.ResultKt.throwOnFailure(r12)
                goto L5f
            L28:
                kotlin.ResultKt.throwOnFailure(r12)
                java.lang.Object r12 = r11.L$0
                r1 = r12
                kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
                com.unity3d.ads.adplayer.FullScreenWebViewDisplay r12 = r11.this$0
                com.unity3d.ads.core.data.model.AdObject r12 = com.unity3d.ads.adplayer.FullScreenWebViewDisplay.access$getAdObject(r12)
                if (r12 == 0) goto L3d
                com.unity3d.ads.core.data.model.AdObject$WebViewLessLoadingRequiredData r12 = r12.getWebViewLessLoadingRequiredData()
                goto L3e
            L3d:
                r12 = r4
            L3e:
                if (r12 == 0) goto L93
                com.unity3d.ads.adplayer.FullScreenWebViewDisplay r12 = r11.this$0
                com.unity3d.ads.core.data.model.AdObject r12 = com.unity3d.ads.adplayer.FullScreenWebViewDisplay.access$getAdObject(r12)
                if (r12 == 0) goto L62
                com.unity3d.ads.adplayer.AdPlayer r12 = r12.getAdPlayer()
                if (r12 == 0) goto L62
                kotlinx.coroutines.flow.Flow r12 = r12.getOnLoadEvent()
                if (r12 == 0) goto L62
                r11.L$0 = r1
                r11.label = r3
                java.lang.Object r12 = kotlinx.coroutines.flow.FlowKt.single(r12, r11)
                if (r12 != r0) goto L5f
                goto Lae
            L5f:
                com.unity3d.ads.adplayer.model.LoadEvent r12 = (com.unity3d.ads.adplayer.model.LoadEvent) r12
                goto L63
            L62:
                r12 = r4
            L63:
                boolean r12 = r12 instanceof com.unity3d.ads.adplayer.model.LoadEvent.Error
                if (r12 == 0) goto L93
                com.unity3d.ads.adplayer.FullScreenWebViewDisplay r12 = r11.this$0
                r5 = 0
                r12.setResult(r5)
                com.unity3d.ads.adplayer.FullScreenWebViewDisplay r12 = r11.this$0
                com.unity3d.services.core.domain.ISDKDispatchers r12 = com.unity3d.ads.adplayer.FullScreenWebViewDisplay.access$getDispatchers(r12)
                kotlinx.coroutines.CoroutineDispatcher r12 = r12.getDefault()
                kotlinx.coroutines.CoroutineScope r5 = kotlinx.coroutines.CoroutineScopeKt.CoroutineScope(r12)
                com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1$1$1 r8 = new com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1$1$1
                com.unity3d.ads.adplayer.FullScreenWebViewDisplay r12 = r11.this$0
                r8.<init>(r12, r4)
                r9 = 3
                r10 = 0
                r6 = 0
                r7 = 0
                kotlinx.coroutines.BuildersKt.launch$default(r5, r6, r7, r8, r9, r10)
                com.unity3d.ads.adplayer.FullScreenWebViewDisplay r12 = r11.this$0
                r12.finish()
                kotlinx.coroutines.CancellableContinuation<kotlin.Unit> r12 = r11.$continuation
                kotlinx.coroutines.CancellableContinuation.DefaultImpls.cancel$default(r12, r4, r3, r4)
            L93:
                com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer$Companion r12 = com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer.Companion
                kotlinx.coroutines.flow.MutableSharedFlow r12 = r12.getDisplayMessages()
                com.unity3d.ads.adplayer.DisplayMessage$WebViewInstanceRequest r3 = new com.unity3d.ads.adplayer.DisplayMessage$WebViewInstanceRequest
                com.unity3d.ads.adplayer.FullScreenWebViewDisplay r4 = r11.this$0
                java.lang.String r4 = com.unity3d.ads.adplayer.FullScreenWebViewDisplay.access$getOpportunityId$p(r4)
                r3.<init>(r4)
                r11.L$0 = r1
                r11.label = r2
                java.lang.Object r12 = r12.emit(r3, r11)
                if (r12 != r0) goto Laf
            Lae:
                return r0
            Laf:
                r0 = r1
            Lb0:
                kotlinx.coroutines.CoroutineScopeKt.ensureActive(r0)
                kotlinx.coroutines.CancellableContinuation<kotlin.Unit> r12 = r11.$continuation
                kotlin.Result$Companion r0 = kotlin.Result.Companion
                kotlin.Unit r0 = kotlin.Unit.INSTANCE
                java.lang.Object r1 = kotlin.Result.m2760constructorimpl(r0)
                r12.resumeWith(r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: FullScreenWebViewDisplay.kt */
        @DebugMetadata(c = "com.unity3d.ads.adplayer.FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1$1$1", f = "FullScreenWebViewDisplay.kt", l = {Sdk.SDKError.Reason.INVALID_RI_ENDPOINT_VALUE}, m = "invokeSuspend")
        public static final class C10631 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ FullScreenWebViewDisplay this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10631(FullScreenWebViewDisplay fullScreenWebViewDisplay, Continuation<? super C10631> continuation) {
                super(2, continuation);
                this.this$0 = fullScreenWebViewDisplay;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C10631(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C10631) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    MutableSharedFlow<DisplayMessage> displayMessages = AndroidFullscreenWebViewAdPlayer.Companion.getDisplayMessages();
                    DisplayMessage.DisplayError displayError = new DisplayMessage.DisplayError(this.this$0.opportunityId, "Error loading webView");
                    this.label = 1;
                    if (displayMessages.emit(displayError, this) == coroutine_suspended) {
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
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this.this$0), this.this$0.getDispatchers().getDefault(), null, new AnonymousClass1(this.this$0, this.$continuation, null), 2, null);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
