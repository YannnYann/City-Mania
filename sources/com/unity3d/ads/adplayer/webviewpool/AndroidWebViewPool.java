package com.unity3d.ads.adplayer.webviewpool;

import ads_mobile_sdk.fh;
import android.annotation.SuppressLint;
import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool;
import com.unity3d.ads.core.domain.GetCachedAsset;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.vungle.ads.internal.protos.Sdk;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: compiled from: AndroidWebViewPool.kt */
/* JADX INFO: loaded from: classes4.dex */
public class AndroidWebViewPool implements WebViewPool {
    private static final long ACQUIRE_TIMEOUT_MS = 2000;
    public static final Companion Companion = new Companion(null);
    private static final long HEALTH_CHECK_TIMEOUT_MS = 500;
    private final Context context;
    private final ConcurrentLinkedQueue<PoolEntry> freshViews;
    private final GetCachedAsset getCachedAsset;
    private final AtomicBoolean isInitialized;
    private final CoroutineDispatcher mainDispatcher;
    private volatile int poolSize;
    private final ConcurrentLinkedQueue<PoolEntry> recycledViews;
    private final SendDiagnosticEvent sendDiagnosticEvent;

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$acquireForShow$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidWebViewPool.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool", f = "AndroidWebViewPool.kt", l = {58, 69}, m = "acquireForShow$suspendImpl")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidWebViewPool.acquireForShow$suspendImpl(AndroidWebViewPool.this, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$initialize$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewPool.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool", f = "AndroidWebViewPool.kt", l = {41}, m = "initialize$suspendImpl")
    public static final class C39961 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C39961(Continuation<? super C39961> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidWebViewPool.initialize$suspendImpl(AndroidWebViewPool.this, 0, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$isHealthy$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewPool.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool", f = "AndroidWebViewPool.kt", l = {Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE}, m = "isHealthy")
    public static final class C39971 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C39971(Continuation<? super C39971> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidWebViewPool.this.isHealthy(null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$release$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewPool.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool", f = "AndroidWebViewPool.kt", l = {113, 113}, m = "release$suspendImpl")
    public static final class C39991 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C39991(Continuation<? super C39991> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidWebViewPool.release$suspendImpl(AndroidWebViewPool.this, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewPool.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool", f = "AndroidWebViewPool.kt", l = {83, fh.p0, fh.H0}, m = "resetEntry$suspendImpl")
    public static final class C40001 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C40001(Continuation<? super C40001> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidWebViewPool.resetEntry$suspendImpl(AndroidWebViewPool.this, null, this);
        }
    }

    @Override // com.unity3d.ads.adplayer.webviewpool.WebViewPool
    public Object acquireForShow(Continuation<? super PoolEntry> continuation) {
        return acquireForShow$suspendImpl(this, continuation);
    }

    @Override // com.unity3d.ads.adplayer.webviewpool.WebViewPool
    public Object acquireFreshEntry(Continuation<? super PoolEntry> continuation) {
        return acquireFreshEntry$suspendImpl(this, continuation);
    }

    public Object createFreshEntry$unity_ads_defaultRelease(Continuation<? super PoolEntry> continuation) {
        return createFreshEntry$suspendImpl(this, continuation);
    }

    @Override // com.unity3d.ads.adplayer.webviewpool.WebViewPool
    public Object enqueueRecycled(PoolEntry poolEntry, Continuation<? super Unit> continuation) {
        return enqueueRecycled$suspendImpl(this, poolEntry, continuation);
    }

    @Override // com.unity3d.ads.adplayer.webviewpool.WebViewPool
    public Object initialize(int i, Continuation<? super Unit> continuation) {
        return initialize$suspendImpl(this, i, continuation);
    }

    @Override // com.unity3d.ads.adplayer.webviewpool.WebViewPool
    public Object release(PoolEntry poolEntry, Continuation<? super Unit> continuation) {
        return release$suspendImpl(this, poolEntry, continuation);
    }

    @Override // com.unity3d.ads.adplayer.webviewpool.WebViewPool
    public Object resetEntry(PoolEntry poolEntry, Continuation<? super PoolEntry> continuation) {
        return resetEntry$suspendImpl(this, poolEntry, continuation);
    }

    public AndroidWebViewPool(Context context, CoroutineDispatcher mainDispatcher, GetCachedAsset getCachedAsset, SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(getCachedAsset, "getCachedAsset");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.context = context;
        this.mainDispatcher = mainDispatcher;
        this.getCachedAsset = getCachedAsset;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.freshViews = new ConcurrentLinkedQueue<>();
        this.recycledViews = new ConcurrentLinkedQueue<>();
        this.isInitialized = new AtomicBoolean(false);
    }

    /* JADX INFO: compiled from: AndroidWebViewPool.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x006b -> B:12:0x0037). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object initialize$suspendImpl(com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r6, int r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            boolean r0 = r8 instanceof com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.C39961
            if (r0 == 0) goto L13
            r0 = r8
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$initialize$1 r0 = (com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.C39961) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$initialize$1 r0 = new com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$initialize$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L42
            if (r2 != r3) goto L3a
            int r6 = r0.I$1
            int r7 = r0.I$0
            java.lang.Object r2 = r0.L$1
            java.util.concurrent.ConcurrentLinkedQueue r2 = (java.util.concurrent.ConcurrentLinkedQueue) r2
            java.lang.Object r4 = r0.L$0
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r4 = (com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool) r4
            kotlin.ResultKt.throwOnFailure(r8)
            r5 = r0
            r0 = r7
            r7 = r4
        L37:
            r4 = r2
            r2 = r5
            goto L6f
        L3a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L42:
            kotlin.ResultKt.throwOnFailure(r8)
            r6.poolSize = r7
            java.util.concurrent.atomic.AtomicBoolean r8 = r6.isInitialized
            r2 = 0
            boolean r8 = r8.compareAndSet(r2, r3)
            if (r8 != 0) goto L53
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L53:
            r8 = r7
            r7 = r6
            r6 = r2
        L56:
            if (r6 >= r8) goto L76
            java.util.concurrent.ConcurrentLinkedQueue<com.unity3d.ads.adplayer.webviewpool.PoolEntry> r2 = r7.freshViews
            r0.L$0 = r7
            r0.L$1 = r2
            r0.I$0 = r8
            r0.I$1 = r6
            r0.label = r3
            java.lang.Object r4 = r7.createFreshEntry$unity_ads_defaultRelease(r0)
            if (r4 != r1) goto L6b
            return r1
        L6b:
            r5 = r0
            r0 = r8
            r8 = r4
            goto L37
        L6f:
            r4.offer(r8)
            int r6 = r6 + r3
            r8 = r0
            r0 = r2
            goto L56
        L76:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.initialize$suspendImpl(com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$acquireFreshEntry$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewPool.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$acquireFreshEntry$2", f = "AndroidWebViewPool.kt", l = {49, 50}, m = "invokeSuspend")
    public static final class C39932 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PoolEntry>, Object> {
        Object L$0;
        int label;

        public C39932(Continuation<? super C39932> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidWebViewPool.this.new C39932(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super PoolEntry> continuation) {
            return ((C39932) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        
            if (r6.destroyEntry(r1, r5) == r0) goto L20;
         */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x004a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0066 A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0055 -> B:21:0x0058). Please report as a decompilation issue!!! */
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
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L23
                if (r1 == r4) goto L1b
                if (r1 != r3) goto L13
                kotlin.ResultKt.throwOnFailure(r6)
                goto L58
            L13:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1b:
                java.lang.Object r1 = r5.L$0
                com.unity3d.ads.adplayer.webviewpool.PoolEntry r1 = (com.unity3d.ads.adplayer.webviewpool.PoolEntry) r1
                kotlin.ResultKt.throwOnFailure(r6)
                goto L42
            L23:
                kotlin.ResultKt.throwOnFailure(r6)
                com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r6 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.this
                java.util.concurrent.ConcurrentLinkedQueue r6 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.access$getFreshViews$p(r6)
                java.lang.Object r6 = r6.poll()
                com.unity3d.ads.adplayer.webviewpool.PoolEntry r6 = (com.unity3d.ads.adplayer.webviewpool.PoolEntry) r6
                r1 = r6
            L33:
                if (r1 == 0) goto L66
                com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r6 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.this
                r5.L$0 = r1
                r5.label = r4
                java.lang.Object r6 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.access$isHealthy(r6, r1, r5)
                if (r6 != r0) goto L42
                goto L57
            L42:
                java.lang.Boolean r6 = (java.lang.Boolean) r6
                boolean r6 = r6.booleanValue()
                if (r6 == 0) goto L4b
                return r1
            L4b:
                com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r6 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.this
                r5.L$0 = r2
                r5.label = r3
                java.lang.Object r6 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.access$destroyEntry(r6, r1, r5)
                if (r6 != r0) goto L58
            L57:
                return r0
            L58:
                com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r6 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.this
                java.util.concurrent.ConcurrentLinkedQueue r6 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.access$getFreshViews$p(r6)
                java.lang.Object r6 = r6.poll()
                r1 = r6
                com.unity3d.ads.adplayer.webviewpool.PoolEntry r1 = (com.unity3d.ads.adplayer.webviewpool.PoolEntry) r1
                goto L33
            L66:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.C39932.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static /* synthetic */ Object acquireFreshEntry$suspendImpl(AndroidWebViewPool androidWebViewPool, Continuation<? super PoolEntry> continuation) {
        return TimeoutKt.withTimeoutOrNull(2000L, androidWebViewPool.new C39932(null), continuation);
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$acquireForShow$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidWebViewPool.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$acquireForShow$2", f = "AndroidWebViewPool.kt", l = {62, 63}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PoolEntry>, Object> {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;

        public AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidWebViewPool.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super PoolEntry> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0055  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0083 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0098 A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0055 -> B:14:0x005b). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:14:0x005b). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r8.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L34
                if (r1 == r4) goto L24
                if (r1 != r3) goto L1c
                java.lang.Object r1 = r8.L$1
                java.util.concurrent.ConcurrentLinkedQueue r1 = (java.util.concurrent.ConcurrentLinkedQueue) r1
                java.lang.Object r5 = r8.L$0
                java.util.Iterator r5 = (java.util.Iterator) r5
                kotlin.ResultKt.throwOnFailure(r9)
                r9 = r5
                goto L5b
            L1c:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L24:
                java.lang.Object r1 = r8.L$2
                com.unity3d.ads.adplayer.webviewpool.PoolEntry r1 = (com.unity3d.ads.adplayer.webviewpool.PoolEntry) r1
                java.lang.Object r5 = r8.L$1
                java.util.concurrent.ConcurrentLinkedQueue r5 = (java.util.concurrent.ConcurrentLinkedQueue) r5
                java.lang.Object r6 = r8.L$0
                java.util.Iterator r6 = (java.util.Iterator) r6
                kotlin.ResultKt.throwOnFailure(r9)
                goto L7b
            L34:
                kotlin.ResultKt.throwOnFailure(r9)
                com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r9 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.this
                java.util.concurrent.ConcurrentLinkedQueue r9 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.access$getFreshViews$p(r9)
                com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r1 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.this
                java.util.concurrent.ConcurrentLinkedQueue r1 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.access$getRecycledViews$p(r1)
                java.util.concurrent.ConcurrentLinkedQueue[] r9 = new java.util.concurrent.ConcurrentLinkedQueue[]{r9, r1}
                java.util.List r9 = kotlin.collections.CollectionsKt__CollectionsKt.listOf(r9)
                java.util.Iterator r9 = r9.iterator()
            L4f:
                boolean r1 = r9.hasNext()
                if (r1 == 0) goto L98
                java.lang.Object r1 = r9.next()
                java.util.concurrent.ConcurrentLinkedQueue r1 = (java.util.concurrent.ConcurrentLinkedQueue) r1
            L5b:
                java.lang.Object r5 = r1.poll()
                com.unity3d.ads.adplayer.webviewpool.PoolEntry r5 = (com.unity3d.ads.adplayer.webviewpool.PoolEntry) r5
                if (r5 != 0) goto L64
                goto L4f
            L64:
                com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r6 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.this
                r8.L$0 = r9
                r8.L$1 = r1
                r8.L$2 = r5
                r8.label = r4
                java.lang.Object r6 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.access$isHealthy(r6, r5, r8)
                if (r6 != r0) goto L75
                goto L94
            L75:
                r7 = r6
                r6 = r9
                r9 = r7
                r7 = r5
                r5 = r1
                r1 = r7
            L7b:
                java.lang.Boolean r9 = (java.lang.Boolean) r9
                boolean r9 = r9.booleanValue()
                if (r9 == 0) goto L84
                return r1
            L84:
                com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r9 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.this
                r8.L$0 = r6
                r8.L$1 = r5
                r8.L$2 = r2
                r8.label = r3
                java.lang.Object r9 = com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.access$destroyEntry(r9, r1, r8)
                if (r9 != r0) goto L95
            L94:
                return r0
            L95:
                r1 = r5
                r9 = r6
                goto L5b
            L98:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object acquireForShow$suspendImpl(com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r7, kotlin.coroutines.Continuation<? super com.unity3d.ads.adplayer.webviewpool.PoolEntry> r8) {
        /*
            boolean r0 = r8 instanceof com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r8
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$acquireForShow$1 r0 = (com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$acquireForShow$1 r0 = new com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$acquireForShow$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L3d
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2d
            kotlin.ResultKt.throwOnFailure(r8)
            return r8
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            java.lang.Object r7 = r0.L$0
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r7 = (com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool) r7
            kotlin.ResultKt.throwOnFailure(r8)
            goto L52
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$acquireForShow$2 r8 = new com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$acquireForShow$2
            r8.<init>(r3)
            r0.L$0 = r7
            r0.label = r5
            r5 = 2000(0x7d0, double:9.88E-321)
            java.lang.Object r8 = kotlinx.coroutines.TimeoutKt.withTimeoutOrNull(r5, r8, r0)
            if (r8 != r1) goto L52
            goto L60
        L52:
            com.unity3d.ads.adplayer.webviewpool.PoolEntry r8 = (com.unity3d.ads.adplayer.webviewpool.PoolEntry) r8
            if (r8 != 0) goto L62
            r0.L$0 = r3
            r0.label = r4
            java.lang.Object r7 = r7.createFreshEntry$unity_ads_defaultRelease(r0)
            if (r7 != r1) goto L61
        L60:
            return r1
        L61:
            return r7
        L62:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.acquireForShow$suspendImpl(com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$resetClient$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object resetEntry$suspendImpl(com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r9, com.unity3d.ads.adplayer.webviewpool.PoolEntry r10, kotlin.coroutines.Continuation<? super com.unity3d.ads.adplayer.webviewpool.PoolEntry> r11) {
        /*
            boolean r0 = r11 instanceof com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.C40001
            if (r0 == 0) goto L13
            r0 = r11
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$1 r0 = (com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.C40001) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$1 r0 = new com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$1
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L5d
            if (r2 == r5) goto L4d
            if (r2 == r4) goto L41
            if (r2 != r3) goto L39
            java.lang.Object r9 = r0.L$1
            com.unity3d.ads.adplayer.AndroidWebViewClient r9 = (com.unity3d.ads.adplayer.AndroidWebViewClient) r9
            java.lang.Object r10 = r0.L$0
            com.unity3d.ads.adplayer.webviewpool.PoolEntry r10 = (com.unity3d.ads.adplayer.webviewpool.PoolEntry) r10
            kotlin.ResultKt.throwOnFailure(r11)
            goto Lb3
        L39:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L41:
            java.lang.Object r9 = r0.L$1
            com.unity3d.ads.adplayer.webviewpool.PoolEntry r9 = (com.unity3d.ads.adplayer.webviewpool.PoolEntry) r9
            java.lang.Object r10 = r0.L$0
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r10 = (com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool) r10
            kotlin.ResultKt.throwOnFailure(r11)
            goto L99
        L4d:
            java.lang.Object r9 = r0.L$2
            kotlinx.coroutines.CompletableDeferred r9 = (kotlinx.coroutines.CompletableDeferred) r9
            java.lang.Object r10 = r0.L$1
            com.unity3d.ads.adplayer.webviewpool.PoolEntry r10 = (com.unity3d.ads.adplayer.webviewpool.PoolEntry) r10
            java.lang.Object r2 = r0.L$0
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r2 = (com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool) r2
            kotlin.ResultKt.throwOnFailure(r11)
            goto L81
        L5d:
            kotlin.ResultKt.throwOnFailure(r11)
            kotlinx.coroutines.CompletableDeferred r11 = kotlinx.coroutines.CompletableDeferredKt.CompletableDeferred$default(r6, r5, r6)
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$resetClient$1 r2 = new com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$resetClient$1
            r2.<init>()
            kotlinx.coroutines.CoroutineDispatcher r7 = r9.mainDispatcher
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$2 r8 = new com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$2
            r8.<init>(r10, r2, r6)
            r0.L$0 = r9
            r0.L$1 = r10
            r0.L$2 = r11
            r0.label = r5
            java.lang.Object r2 = kotlinx.coroutines.BuildersKt.withContext(r7, r8, r0)
            if (r2 != r1) goto L7f
            goto Lb0
        L7f:
            r2 = r9
            r9 = r11
        L81:
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$3 r11 = new com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$3
            r11.<init>(r9, r6)
            r0.L$0 = r2
            r0.L$1 = r10
            r0.L$2 = r6
            r0.label = r4
            r4 = 500(0x1f4, double:2.47E-321)
            java.lang.Object r9 = kotlinx.coroutines.TimeoutKt.withTimeoutOrNull(r4, r11, r0)
            if (r9 != r1) goto L97
            goto Lb0
        L97:
            r9 = r10
            r10 = r2
        L99:
            com.unity3d.ads.adplayer.AndroidWebViewClient r11 = r10.createClient()
            kotlinx.coroutines.CoroutineDispatcher r10 = r10.mainDispatcher
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$4 r2 = new com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$4
            r2.<init>(r9, r11, r6)
            r0.L$0 = r9
            r0.L$1 = r11
            r0.label = r3
            java.lang.Object r10 = kotlinx.coroutines.BuildersKt.withContext(r10, r2, r0)
            if (r10 != r1) goto Lb1
        Lb0:
            return r1
        Lb1:
            r10 = r9
            r9 = r11
        Lb3:
            com.unity3d.ads.adplayer.webviewpool.PoolEntry r11 = new com.unity3d.ads.adplayer.webviewpool.PoolEntry
            android.webkit.WebView r10 = r10.getWebView()
            r11.<init>(r10, r9)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.resetEntry$suspendImpl(com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool, com.unity3d.ads.adplayer.webviewpool.PoolEntry, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewPool.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$2", f = "AndroidWebViewPool.kt", l = {}, m = "invokeSuspend")
    public static final class C40012 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PoolEntry $entry;
        final /* synthetic */ AndroidWebViewPool$resetEntry$resetClient$1 $resetClient;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C40012(PoolEntry poolEntry, AndroidWebViewPool$resetEntry$resetClient$1 androidWebViewPool$resetEntry$resetClient$1, Continuation<? super C40012> continuation) {
            super(2, continuation);
            this.$entry = poolEntry;
            this.$resetClient = androidWebViewPool$resetEntry$resetClient$1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C40012(this.$entry, this.$resetClient, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C40012) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ViewParent parent = this.$entry.getWebView().getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(this.$entry.getWebView());
            }
            this.$entry.getWebView().removeJavascriptInterface("webviewbridge");
            this.$entry.getWebView().setWebViewClient(this.$resetClient);
            this.$entry.getWebView().loadUrl(AndroidWebViewClient.BLANK_PAGE);
            this.$entry.getWebView().clearHistory();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$3, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidWebViewPool.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$3", f = "AndroidWebViewPool.kt", l = {fh.p0}, m = "invokeSuspend")
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ CompletableDeferred<Unit> $blankLoaded;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(CompletableDeferred<Unit> completableDeferred, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$blankLoaded = completableDeferred;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.$blankLoaded, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CompletableDeferred<Unit> completableDeferred = this.$blankLoaded;
                this.label = 1;
                if (completableDeferred.await(this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$4, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidWebViewPool.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$resetEntry$4", f = "AndroidWebViewPool.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PoolEntry $entry;
        final /* synthetic */ AndroidWebViewClient $freshClient;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(PoolEntry poolEntry, AndroidWebViewClient androidWebViewClient, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$entry = poolEntry;
            this.$freshClient = androidWebViewClient;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass4(this.$entry, this.$freshClient, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$entry.getWebView().setWebViewClient(this.$freshClient);
            return Unit.INSTANCE;
        }
    }

    public static /* synthetic */ Object enqueueRecycled$suspendImpl(AndroidWebViewPool androidWebViewPool, PoolEntry poolEntry, Continuation<? super Unit> continuation) {
        if (androidWebViewPool.recycledViews.size() < androidWebViewPool.poolSize) {
            androidWebViewPool.recycledViews.offer(poolEntry);
            return Unit.INSTANCE;
        }
        Object objDestroyEntry = androidWebViewPool.destroyEntry(poolEntry, continuation);
        return objDestroyEntry == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDestroyEntry : Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
    
        if (r5.enqueueRecycled((com.unity3d.ads.adplayer.webviewpool.PoolEntry) r7, r0) == r1) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object release$suspendImpl(com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r5, com.unity3d.ads.adplayer.webviewpool.PoolEntry r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            boolean r0 = r7 instanceof com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.C39991
            if (r0 == 0) goto L13
            r0 = r7
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$release$1 r0 = (com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.C39991) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$release$1 r0 = new com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$release$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L58
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            java.lang.Object r5 = r0.L$0
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r5 = (com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool) r5
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4a
        L3c:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r7 = r5.resetEntry(r6, r0)
            if (r7 != r1) goto L4a
            goto L57
        L4a:
            com.unity3d.ads.adplayer.webviewpool.PoolEntry r7 = (com.unity3d.ads.adplayer.webviewpool.PoolEntry) r7
            r6 = 0
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r5 = r5.enqueueRecycled(r7, r0)
            if (r5 != r1) goto L58
        L57:
            return r1
        L58:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.release$suspendImpl(com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool, com.unity3d.ads.adplayer.webviewpool.PoolEntry, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$isHealthy$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewPool.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$isHealthy$2", f = "AndroidWebViewPool.kt", l = {Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE, Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE}, m = "invokeSuspend")
    public static final class C39982 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ PoolEntry $entry;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C39982(PoolEntry poolEntry, Continuation<? super C39982> continuation) {
            super(2, continuation);
            this.$entry = poolEntry;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidWebViewPool.this.new C39982(this.$entry, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C39982) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CompletableDeferred completableDeferredCompletableDeferred$default;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                CoroutineDispatcher coroutineDispatcher = AndroidWebViewPool.this.mainDispatcher;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$entry, completableDeferredCompletableDeferred$default, null);
                this.L$0 = completableDeferredCompletableDeferred$default;
                this.label = 1;
                if (BuildersKt.withContext(coroutineDispatcher, anonymousClass1, this) != coroutine_suspended) {
                }
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            completableDeferredCompletableDeferred$default = (CompletableDeferred) this.L$0;
            ResultKt.throwOnFailure(obj);
            this.L$0 = null;
            this.label = 2;
            Object objAwait = completableDeferredCompletableDeferred$default.await(this);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        }

        /* JADX INFO: renamed from: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$isHealthy$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: AndroidWebViewPool.kt */
        @DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$isHealthy$2$1", f = "AndroidWebViewPool.kt", l = {}, m = "invokeSuspend")
        public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ PoolEntry $entry;
            final /* synthetic */ CompletableDeferred<Boolean> $result;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(PoolEntry poolEntry, CompletableDeferred<Boolean> completableDeferred, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$entry = poolEntry;
                this.$result = completableDeferred;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$entry, this.$result, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                WebView webView = this.$entry.getWebView();
                final CompletableDeferred<Boolean> completableDeferred = this.$result;
                webView.evaluateJavascript("1", new ValueCallback() { // from class: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$isHealthy$2$1$$ExternalSyntheticLambda0
                    @Override // android.webkit.ValueCallback
                    public final void onReceiveValue(Object obj2) {
                        AndroidWebViewPool.C39982.AnonymousClass1.invokeSuspend$lambda$0(completableDeferred, (String) obj2);
                    }
                });
                return Unit.INSTANCE;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void invokeSuspend$lambda$0(CompletableDeferred completableDeferred, String str) {
                completableDeferred.complete(Boolean.valueOf(str != null));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object isHealthy(com.unity3d.ads.adplayer.webviewpool.PoolEntry r5, kotlin.coroutines.Continuation<? super java.lang.Boolean> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.C39971
            if (r0 == 0) goto L13
            r0 = r6
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$isHealthy$1 r0 = (com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.C39971) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$isHealthy$1 r0 = new com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$isHealthy$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L45
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$isHealthy$2 r6 = new com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$isHealthy$2
            r2 = 0
            r6.<init>(r5, r2)
            r0.label = r3
            r2 = 500(0x1f4, double:2.47E-321)
            java.lang.Object r6 = kotlinx.coroutines.TimeoutKt.withTimeoutOrNull(r2, r6, r0)
            if (r6 != r1) goto L45
            return r1
        L45:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            if (r6 == 0) goto L4e
            boolean r5 = r6.booleanValue()
            goto L4f
        L4e:
            r5 = 0
        L4f:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.isHealthy(com.unity3d.ads.adplayer.webviewpool.PoolEntry, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$destroyEntry$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewPool.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$destroyEntry$2", f = "AndroidWebViewPool.kt", l = {}, m = "invokeSuspend")
    public static final class C39952 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PoolEntry $entry;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C39952(PoolEntry poolEntry, Continuation<? super C39952> continuation) {
            super(2, continuation);
            this.$entry = poolEntry;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C39952(this.$entry, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C39952) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$entry.getWebView().destroy();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object destroyEntry(PoolEntry poolEntry, Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.mainDispatcher, new C39952(poolEntry, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object createFreshEntry$suspendImpl(com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool r5, kotlin.coroutines.Continuation<? super com.unity3d.ads.adplayer.webviewpool.PoolEntry> r6) {
        /*
            boolean r0 = r6 instanceof com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$createFreshEntry$1
            if (r0 == 0) goto L13
            r0 = r6
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$createFreshEntry$1 r0 = (com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$createFreshEntry$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$createFreshEntry$1 r0 = new com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$createFreshEntry$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.L$0
            com.unity3d.ads.adplayer.AndroidWebViewClient r5 = (com.unity3d.ads.adplayer.AndroidWebViewClient) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4a
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            com.unity3d.ads.adplayer.AndroidWebViewClient r6 = r5.createClient()
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r5 = r5.createWebView(r6, r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            r4 = r6
            r6 = r5
            r5 = r4
        L4a:
            android.webkit.WebView r6 = (android.webkit.WebView) r6
            com.unity3d.ads.adplayer.webviewpool.PoolEntry r0 = new com.unity3d.ads.adplayer.webviewpool.PoolEntry
            r0.<init>(r6, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool.createFreshEntry$suspendImpl(com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final AndroidWebViewClient createClient() {
        return new AndroidWebViewClient(this.getCachedAsset, this.sendDiagnosticEvent);
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$createWebView$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewPool.kt */
    @DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool$createWebView$2", f = "AndroidWebViewPool.kt", l = {}, m = "invokeSuspend")
    public static final class C39942 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super WebView>, Object> {
        final /* synthetic */ AndroidWebViewClient $client;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C39942(AndroidWebViewClient androidWebViewClient, Continuation<? super C39942> continuation) {
            super(2, continuation);
            this.$client = androidWebViewClient;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidWebViewPool.this.new C39942(this.$client, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super WebView> continuation) {
            return ((C39942) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            WebView webView = new WebView(AndroidWebViewPool.this.context);
            AndroidWebViewClient androidWebViewClient = this.$client;
            WebSettings settings = webView.getSettings();
            settings.setAllowFileAccess(false);
            settings.setBlockNetworkImage(false);
            settings.setBlockNetworkLoads(false);
            settings.setBuiltInZoomControls(false);
            settings.setCacheMode(-1);
            settings.setDatabaseEnabled(false);
            settings.setDisplayZoomControls(false);
            settings.setDomStorageEnabled(false);
            settings.setGeolocationEnabled(false);
            settings.setJavaScriptCanOpenWindowsAutomatically(false);
            settings.setJavaScriptEnabled(true);
            settings.setLoadWithOverviewMode(false);
            settings.setLoadsImagesAutomatically(true);
            settings.setMediaPlaybackRequiresUserGesture(false);
            settings.setMixedContentMode(1);
            settings.setNeedInitialFocus(true);
            settings.setSupportMultipleWindows(false);
            settings.setSupportZoom(false);
            settings.setUseWideViewPort(true);
            webView.setWebViewClient(androidWebViewClient);
            webView.setHorizontalScrollBarEnabled(false);
            webView.setVerticalScrollBarEnabled(false);
            webView.setInitialScale(0);
            webView.setBackgroundColor(0);
            webView.setBackgroundResource(0);
            return webView;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SetJavaScriptEnabled"})
    public final Object createWebView(AndroidWebViewClient androidWebViewClient, Continuation<? super WebView> continuation) {
        return BuildersKt.withContext(this.mainDispatcher, new C39942(androidWebViewClient, null), continuation);
    }
}
