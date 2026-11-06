package com.unity3d.ads.core.domain.adload;

import com.google.protobuf.ByteString;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.adplayer.webviewpool.PoolEntry;
import com.unity3d.ads.adplayer.webviewpool.PooledWebViewContainerFactory;
import com.unity3d.ads.adplayer.webviewpool.WebViewPool;
import com.unity3d.ads.core.data.model.AdObject;
import gatewayprotocol.v1.AdResponseOuterClass;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PoolAcquireAtShowStrategy.kt */
/* JADX INFO: loaded from: classes4.dex */
public class PoolAcquireAtShowStrategy implements PreShowWebViewStrategy {
    private final ConcurrentHashMap<ByteString, PoolEntry> claimedEntries;
    private final PooledWebViewContainerFactory containerFactory;
    private final WebViewPool pool;
    private final int poolSize;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy$acquireForShow$1, reason: invalid class name */
    /* JADX INFO: compiled from: PoolAcquireAtShowStrategy.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy", f = "PoolAcquireAtShowStrategy.kt", l = {29}, m = "acquireForShow$suspendImpl")
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
            return PoolAcquireAtShowStrategy.acquireForShow$suspendImpl(PoolAcquireAtShowStrategy.this, null, null, this);
        }
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object acquireForShow(CoroutineScope coroutineScope, AdObject adObject, Continuation<? super WebViewContainerResult> continuation) {
        return acquireForShow$suspendImpl(this, coroutineScope, adObject, continuation);
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onAdExpired(AdObject adObject, Continuation<? super Unit> continuation) {
        return onAdExpired$suspendImpl(this, adObject, continuation);
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onLoadSuccess(AdObject adObject, String str, AdResponseOuterClass.AdResponse adResponse, CoroutineScope coroutineScope, Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        return onLoadSuccess$suspendImpl(this, adObject, str, adResponse, coroutineScope, function2, continuation);
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onShowComplete(AdObject adObject, Continuation<? super Unit> continuation) {
        return onShowComplete$suspendImpl(this, adObject, continuation);
    }

    public PoolAcquireAtShowStrategy(WebViewPool pool, int i, PooledWebViewContainerFactory containerFactory) {
        Intrinsics.checkNotNullParameter(pool, "pool");
        Intrinsics.checkNotNullParameter(containerFactory, "containerFactory");
        this.pool = pool;
        this.poolSize = i;
        this.containerFactory = containerFactory;
        this.claimedEntries = new ConcurrentHashMap<>();
    }

    public final WebViewPool getPool() {
        return this.pool;
    }

    public final int getPoolSize() {
        return this.poolSize;
    }

    public final PooledWebViewContainerFactory getContainerFactory() {
        return this.containerFactory;
    }

    public final ConcurrentHashMap<ByteString, PoolEntry> getClaimedEntries() {
        return this.claimedEntries;
    }

    public static /* synthetic */ Object onLoadSuccess$suspendImpl(PoolAcquireAtShowStrategy poolAcquireAtShowStrategy, AdObject adObject, String str, AdResponseOuterClass.AdResponse adResponse, CoroutineScope coroutineScope, Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object objInitialize = poolAcquireAtShowStrategy.pool.initialize(poolAcquireAtShowStrategy.poolSize, continuation);
        return objInitialize == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInitialize : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object acquireForShow$suspendImpl(com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy r4, kotlinx.coroutines.CoroutineScope r5, com.unity3d.ads.core.data.model.AdObject r6, kotlin.coroutines.Continuation<? super com.unity3d.ads.core.domain.adload.WebViewContainerResult> r7) {
        /*
            boolean r0 = r7 instanceof com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r7
            com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy$acquireForShow$1 r0 = (com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy$acquireForShow$1 r0 = new com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy$acquireForShow$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r4 = r0.L$2
            r6 = r4
            com.unity3d.ads.core.data.model.AdObject r6 = (com.unity3d.ads.core.data.model.AdObject) r6
            java.lang.Object r4 = r0.L$1
            r5 = r4
            kotlinx.coroutines.CoroutineScope r5 = (kotlinx.coroutines.CoroutineScope) r5
            java.lang.Object r4 = r0.L$0
            com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy r4 = (com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy) r4
            kotlin.ResultKt.throwOnFailure(r7)
            goto L53
        L37:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3f:
            kotlin.ResultKt.throwOnFailure(r7)
            com.unity3d.ads.adplayer.webviewpool.WebViewPool r7 = r4.pool
            r0.L$0 = r4
            r0.L$1 = r5
            r0.L$2 = r6
            r0.label = r3
            java.lang.Object r7 = r7.acquireForShow(r0)
            if (r7 != r1) goto L53
            return r1
        L53:
            com.unity3d.ads.adplayer.webviewpool.PoolEntry r7 = (com.unity3d.ads.adplayer.webviewpool.PoolEntry) r7
            java.util.concurrent.ConcurrentHashMap<com.google.protobuf.ByteString, com.unity3d.ads.adplayer.webviewpool.PoolEntry> r0 = r4.claimedEntries
            com.google.protobuf.ByteString r1 = r6.getOpportunityId()
            r0.put(r1, r7)
            com.unity3d.ads.core.domain.adload.WebViewContainerResult$FromPool r0 = new com.unity3d.ads.core.domain.adload.WebViewContainerResult$FromPool
            com.unity3d.ads.adplayer.webviewpool.PooledWebViewContainerFactory r4 = r4.containerFactory
            com.unity3d.ads.adplayer.AndroidWebViewContainer r4 = r4.create(r7, r5, r6)
            r0.<init>(r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy.acquireForShow$suspendImpl(com.unity3d.ads.core.domain.adload.PoolAcquireAtShowStrategy, kotlinx.coroutines.CoroutineScope, com.unity3d.ads.core.data.model.AdObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object onShowComplete$suspendImpl(PoolAcquireAtShowStrategy poolAcquireAtShowStrategy, AdObject adObject, Continuation<? super Unit> continuation) {
        Object objRelease;
        PoolEntry poolEntryRemove = poolAcquireAtShowStrategy.claimedEntries.remove(adObject.getOpportunityId());
        return (poolEntryRemove == null || (objRelease = poolAcquireAtShowStrategy.pool.release(poolEntryRemove, continuation)) != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? Unit.INSTANCE : objRelease;
    }

    public static /* synthetic */ Object onAdExpired$suspendImpl(PoolAcquireAtShowStrategy poolAcquireAtShowStrategy, AdObject adObject, Continuation<? super Unit> continuation) {
        Object objOnShowComplete = poolAcquireAtShowStrategy.onShowComplete(adObject, continuation);
        return objOnShowComplete == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objOnShowComplete : Unit.INSTANCE;
    }
}
