package com.unity3d.ads.core.domain.adload;

import com.ironsource.Hd;
import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.adplayer.webviewpool.PoolEntry;
import com.unity3d.ads.adplayer.webviewpool.PooledWebViewContainerFactory;
import com.unity3d.ads.adplayer.webviewpool.WebViewPool;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PoolPreloadOnLoadStrategy.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class PoolPreloadOnLoadStrategy extends PoolAcquireAtShowStrategy {

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$acquireForShow$1, reason: invalid class name */
    /* JADX INFO: compiled from: PoolPreloadOnLoadStrategy.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy", f = "PoolPreloadOnLoadStrategy.kt", l = {45, 46}, m = "acquireForShow")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PoolPreloadOnLoadStrategy.this.acquireForShow(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$onLoadSuccess$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PoolPreloadOnLoadStrategy.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy", f = "PoolPreloadOnLoadStrategy.kt", l = {29, 31}, m = Hd.f)
    public static final class C40391 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C40391(Continuation<? super C40391> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PoolPreloadOnLoadStrategy.this.onLoadSuccess(null, null, null, null, null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PoolPreloadOnLoadStrategy(WebViewPool pool, int i, PooledWebViewContainerFactory containerFactory) {
        super(pool, i, containerFactory);
        Intrinsics.checkNotNullParameter(pool, "pool");
        Intrinsics.checkNotNullParameter(containerFactory, "containerFactory");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy, com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object onLoadSuccess(com.unity3d.ads.core.data.model.AdObject r10, java.lang.String r11, gatewayprotocol.v1.AdResponseOuterClass.AdResponse r12, kotlinx.coroutines.CoroutineScope r13, kotlin.jvm.functions.Function2<? super com.unity3d.ads.adplayer.WebViewContainer, ? super kotlin.coroutines.Continuation<? super com.unity3d.ads.core.domain.adload.PreloadedWebView>, ? extends java.lang.Object> r14, kotlin.coroutines.Continuation<? super kotlin.Unit> r15) {
        /*
            r9 = this;
            r0 = r15
            boolean r1 = r0 instanceof com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy.C40391
            if (r1 == 0) goto L14
            r1 = r0
            com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$onLoadSuccess$1 r1 = (com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy.C40391) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L14
            int r2 = r2 - r3
            r1.label = r2
            goto L19
        L14:
            com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$onLoadSuccess$1 r1 = new com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$onLoadSuccess$1
            r1.<init>(r15)
        L19:
            java.lang.Object r0 = r1.result
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r1.label
            r5 = 2
            r6 = 1
            if (r4 == 0) goto L52
            if (r4 == r6) goto L41
            if (r4 != r5) goto L39
            java.lang.Object r3 = r1.L$2
            kotlin.jvm.functions.Function2 r3 = (kotlin.jvm.functions.Function2) r3
            java.lang.Object r4 = r1.L$1
            kotlinx.coroutines.CoroutineScope r4 = (kotlinx.coroutines.CoroutineScope) r4
            java.lang.Object r1 = r1.L$0
            com.unity3d.ads.core.data.model.AdObject r1 = (com.unity3d.ads.core.data.model.AdObject) r1
            kotlin.ResultKt.throwOnFailure(r0)
            goto L85
        L39:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L41:
            java.lang.Object r4 = r1.L$2
            kotlin.jvm.functions.Function2 r4 = (kotlin.jvm.functions.Function2) r4
            java.lang.Object r6 = r1.L$1
            kotlinx.coroutines.CoroutineScope r6 = (kotlinx.coroutines.CoroutineScope) r6
            java.lang.Object r7 = r1.L$0
            com.unity3d.ads.core.data.model.AdObject r7 = (com.unity3d.ads.core.data.model.AdObject) r7
            kotlin.ResultKt.throwOnFailure(r0)
            r8 = r4
            goto L6f
        L52:
            kotlin.ResultKt.throwOnFailure(r0)
            com.unity3d.ads.adplayer.webviewpool.WebViewPool r0 = r9.getPool()
            int r4 = r9.getPoolSize()
            r1.L$0 = r10
            r1.L$1 = r13
            r1.L$2 = r14
            r1.label = r6
            java.lang.Object r0 = r0.initialize(r4, r1)
            if (r0 != r3) goto L6c
            goto L81
        L6c:
            r7 = r10
            r6 = r13
            r8 = r14
        L6f:
            com.unity3d.ads.adplayer.webviewpool.WebViewPool r0 = r9.getPool()
            r1.L$0 = r7
            r1.L$1 = r6
            r1.L$2 = r8
            r1.label = r5
            java.lang.Object r0 = r0.acquireFreshEntry(r1)
            if (r0 != r3) goto L82
        L81:
            return r3
        L82:
            r4 = r6
            r1 = r7
            r3 = r8
        L85:
            com.unity3d.ads.adplayer.webviewpool.PoolEntry r0 = (com.unity3d.ads.adplayer.webviewpool.PoolEntry) r0
            if (r0 != 0) goto L8c
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        L8c:
            com.unity3d.ads.adplayer.webviewpool.PooledWebViewContainerFactory r5 = r9.getContainerFactory()
            com.unity3d.ads.adplayer.AndroidWebViewContainer r1 = r5.create(r0, r4, r1)
            com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$onLoadSuccess$2 r5 = new com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$onLoadSuccess$2
            r6 = 0
            r11 = r9
            r12 = r0
            r14 = r1
            r13 = r3
            r10 = r5
            r15 = r6
            r10.<init>(r12, r13, r14, r15)
            r0 = r10
            r1 = 3
            r2 = 0
            r3 = 0
            r5 = 0
            r13 = r0
            r14 = r1
            r15 = r2
            r11 = r3
            r10 = r4
            r12 = r5
            kotlinx.coroutines.BuildersKt.launch$default(r10, r11, r12, r13, r14, r15)
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy.onLoadSuccess(com.unity3d.ads.core.data.model.AdObject, java.lang.String, gatewayprotocol.v1.AdResponseOuterClass$AdResponse, kotlinx.coroutines.CoroutineScope, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$onLoadSuccess$2, reason: invalid class name */
    /* JADX INFO: compiled from: PoolPreloadOnLoadStrategy.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$onLoadSuccess$2", f = "PoolPreloadOnLoadStrategy.kt", l = {35, 39, 40}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AndroidWebViewContainer $container;
        final /* synthetic */ PoolEntry $freshEntry;
        final /* synthetic */ Function2<WebViewContainer, Continuation<? super PreloadedWebView>, Object> $loadWebView;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(PoolEntry poolEntry, Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function2, AndroidWebViewContainer androidWebViewContainer, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$freshEntry = poolEntry;
            this.$loadWebView = function2;
            this.$container = androidWebViewContainer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = PoolPreloadOnLoadStrategy.this.new AnonymousClass2(this.$freshEntry, this.$loadWebView, this.$container, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0076, code lost:
        
            if (r7.enqueueRecycled(r1, r6) != r0) goto L35;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L27
                if (r1 == r4) goto L21
                if (r1 == r3) goto L1d
                if (r1 != r2) goto L15
                kotlin.ResultKt.throwOnFailure(r7)
                goto L79
            L15:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1d:
                kotlin.ResultKt.throwOnFailure(r7)
                goto L68
            L21:
                kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L25
                goto L3d
            L25:
                r7 = move-exception
                goto L44
            L27:
                kotlin.ResultKt.throwOnFailure(r7)
                java.lang.Object r7 = r6.L$0
                kotlinx.coroutines.CoroutineScope r7 = (kotlinx.coroutines.CoroutineScope) r7
                kotlin.jvm.functions.Function2<com.unity3d.ads.adplayer.WebViewContainer, kotlin.coroutines.Continuation<? super com.unity3d.ads.core.domain.adload.PreloadedWebView>, java.lang.Object> r7 = r6.$loadWebView
                com.unity3d.ads.adplayer.AndroidWebViewContainer r1 = r6.$container
                kotlin.Result$Companion r5 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L25
                r6.label = r4     // Catch: java.lang.Throwable -> L25
                java.lang.Object r7 = r7.invoke(r1, r6)     // Catch: java.lang.Throwable -> L25
                if (r7 != r0) goto L3d
                goto L78
            L3d:
                com.unity3d.ads.core.domain.adload.PreloadedWebView r7 = (com.unity3d.ads.core.domain.adload.PreloadedWebView) r7     // Catch: java.lang.Throwable -> L25
                java.lang.Object r7 = kotlin.Result.m2760constructorimpl(r7)     // Catch: java.lang.Throwable -> L25
                goto L4e
            L44:
                kotlin.Result$Companion r1 = kotlin.Result.Companion
                java.lang.Object r7 = kotlin.ResultKt.createFailure(r7)
                java.lang.Object r7 = kotlin.Result.m2760constructorimpl(r7)
            L4e:
                boolean r1 = kotlin.Result.m2765isFailureimpl(r7)
                if (r1 == 0) goto L55
                r7 = 0
            L55:
                com.unity3d.ads.core.domain.adload.PreloadedWebView r7 = (com.unity3d.ads.core.domain.adload.PreloadedWebView) r7
                if (r7 == 0) goto L68
                com.unity3d.ads.adplayer.AdPlayer r7 = r7.getAdPlayer()
                if (r7 == 0) goto L68
                r6.label = r3
                java.lang.Object r7 = r7.destroy(r6)
                if (r7 != r0) goto L68
                goto L78
            L68:
                com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy r7 = com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy.this
                com.unity3d.ads.adplayer.webviewpool.WebViewPool r7 = r7.getPool()
                com.unity3d.ads.adplayer.webviewpool.PoolEntry r1 = r6.$freshEntry
                r6.label = r2
                java.lang.Object r7 = r7.enqueueRecycled(r1, r6)
                if (r7 != r0) goto L79
            L78:
                return r0
            L79:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy, com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object acquireForShow(kotlinx.coroutines.CoroutineScope r7, com.unity3d.ads.core.data.model.AdObject r8, kotlin.coroutines.Continuation<? super com.unity3d.ads.core.domain.adload.WebViewContainerResult> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r9
            com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$acquireForShow$1 r0 = (com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$acquireForShow$1 r0 = new com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy$acquireForShow$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r7 = r0.L$1
            com.unity3d.ads.core.data.model.AdObject r7 = (com.unity3d.ads.core.data.model.AdObject) r7
            java.lang.Object r8 = r0.L$0
            kotlinx.coroutines.CoroutineScope r8 = (kotlinx.coroutines.CoroutineScope) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L73
        L34:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3c:
            java.lang.Object r7 = r0.L$1
            r8 = r7
            com.unity3d.ads.core.data.model.AdObject r8 = (com.unity3d.ads.core.data.model.AdObject) r8
            java.lang.Object r7 = r0.L$0
            kotlinx.coroutines.CoroutineScope r7 = (kotlinx.coroutines.CoroutineScope) r7
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5d
        L49:
            kotlin.ResultKt.throwOnFailure(r9)
            com.unity3d.ads.adplayer.webviewpool.WebViewPool r9 = r6.getPool()
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r4
            java.lang.Object r9 = r9.acquireForShow(r0)
            if (r9 != r1) goto L5d
            goto L6f
        L5d:
            com.unity3d.ads.adplayer.webviewpool.PoolEntry r9 = (com.unity3d.ads.adplayer.webviewpool.PoolEntry) r9
            com.unity3d.ads.adplayer.webviewpool.WebViewPool r2 = r6.getPool()
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r3
            java.lang.Object r9 = r2.resetEntry(r9, r0)
            if (r9 != r1) goto L70
        L6f:
            return r1
        L70:
            r5 = r8
            r8 = r7
            r7 = r5
        L73:
            com.unity3d.ads.adplayer.webviewpool.PoolEntry r9 = (com.unity3d.ads.adplayer.webviewpool.PoolEntry) r9
            java.util.concurrent.ConcurrentHashMap r0 = r6.getClaimedEntries()
            com.google.protobuf.ByteString r1 = r7.getOpportunityId()
            r0.put(r1, r9)
            com.unity3d.ads.core.domain.adload.WebViewContainerResult$FromPool r0 = new com.unity3d.ads.core.domain.adload.WebViewContainerResult$FromPool
            com.unity3d.ads.adplayer.webviewpool.PooledWebViewContainerFactory r1 = r6.getContainerFactory()
            com.unity3d.ads.adplayer.AndroidWebViewContainer r7 = r1.create(r9, r8, r7)
            r0.<init>(r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.adload.PoolPreloadOnLoadStrategy.acquireForShow(kotlinx.coroutines.CoroutineScope, com.unity3d.ads.core.data.model.AdObject, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
