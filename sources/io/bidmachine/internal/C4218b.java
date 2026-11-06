package io.bidmachine.internal;

import io.bidmachine.rendering.model.AdElementParams;
import io.bidmachine.rendering.model.AdParams;
import io.bidmachine.rendering.model.AdPhaseParams;
import io.bidmachine.rendering.model.Background;
import io.bidmachine.rendering.model.BackgroundSource;
import io.bidmachine.rendering.model.Image;
import io.bidmachine.rendering.model.ImageBackgroundSource;
import io.bidmachine.rendering.model.Resource;
import io.bidmachine.rendering.model.ResourceSource;
import io.bidmachine.rendering.model.UrlResourceSource;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.util.SdkDispatchers;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.util.cache.MediaFileCacheManager;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: renamed from: io.bidmachine.internal.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4218b implements InterfaceC4225i {
    public final CoroutineDispatcher a;
    public final Function0 b;
    public final Lazy c;

    /* JADX INFO: renamed from: io.bidmachine.internal.b$a */
    public static final class a extends Lambda implements Function0 {
        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CoroutineScope invoke() {
            return CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(C4218b.this.a));
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.internal.b$b, reason: collision with other inner class name */
    public static final class C1164b extends ContinuationImpl {
        public Object a;
        public Object b;
        public Object c;
        public Object d;
        public Object e;
        public int f;
        public /* synthetic */ Object g;
        public int i;

        public C1164b(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.g = obj;
            this.i |= Integer.MIN_VALUE;
            return C4218b.this.a((List) null, 0, (MediaFileCacheManager) null, this);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.internal.b$c */
    public static final class c extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public c(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return C4218b.this.getCacheParams((UnifiedMediationParams) null, this);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.internal.b$d */
    public static final class d extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public d(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return C4218b.this.a((AdParams) null, this);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.internal.b$e */
    public static final class e extends ContinuationImpl {
        public Object a;
        public Object b;
        public Object c;
        public Object d;
        public Object e;
        public Object f;
        public /* synthetic */ Object g;
        public int i;

        public e(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.g = obj;
            this.i |= Integer.MIN_VALUE;
            return C4218b.this.a((AdParams) null, (MediaFileCacheManager) null, this);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.internal.b$f */
    public static final class f extends ContinuationImpl {
        public Object a;
        public Object b;
        public Object c;
        public Object d;
        public Object e;
        public Object f;
        public /* synthetic */ Object g;
        public int i;

        public f(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.g = obj;
            this.i |= Integer.MIN_VALUE;
            return C4218b.this.a((AdPhaseParams) null, (MediaFileCacheManager) null, this);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.internal.b$g */
    public static final class g extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public g(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return C4218b.this.a((AdElementParams) null, (MediaFileCacheManager) null, this);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.internal.b$h */
    public static final class h extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ MediaFileCacheManager b;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(MediaFileCacheManager mediaFileCacheManager, String str, Continuation continuation) {
            super(2, continuation);
            this.b = mediaFileCacheManager;
            this.c = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((h) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new h(this.b, this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            MediaFileCacheManager mediaFileCacheManager = this.b;
            String str = this.c;
            this.a = 1;
            Object mediaFileMetadata = mediaFileCacheManager.getMediaFileMetadata(str, this);
            return mediaFileMetadata == coroutine_suspended ? coroutine_suspended : mediaFileMetadata;
        }
    }

    public C4218b(CoroutineDispatcher ioDispatcher, Function0 function0) {
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        this.a = ioDispatcher;
        this.b = function0;
        this.c = LazyKt__LazyJVMKt.lazy(new a());
    }

    public /* synthetic */ C4218b(CoroutineDispatcher coroutineDispatcher, Function0 function0, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? SdkDispatchers.Companion.getDefault().getIo() : coroutineDispatcher, function0);
    }

    public final CoroutineScope a() {
        return (CoroutineScope) this.c.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // io.bidmachine.internal.InterfaceC4225i
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object getCacheParams(io.bidmachine.unified.UnifiedMediationParams r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.bidmachine.internal.C4218b.c
            if (r0 == 0) goto L13
            r0 = r7
            io.bidmachine.internal.b$c r0 = (io.bidmachine.internal.C4218b.c) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.bidmachine.internal.b$c r0 = new io.bidmachine.internal.b$c
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Exception -> L6b
            goto L61
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            java.lang.String r7 = "rendering_configuration"
            java.lang.Object r7 = r6.getObjectOrNull(r7)     // Catch: java.lang.Exception -> L6b
            if (r7 == 0) goto L66
            boolean r2 = r7 instanceof io.bidmachine.protobuf.rendering.Rendering     // Catch: java.lang.Exception -> L6b
            r4 = 0
            if (r2 == 0) goto L43
            r2 = r7
            goto L44
        L43:
            r2 = r4
        L44:
            if (r2 == 0) goto L49
            io.bidmachine.protobuf.rendering.Rendering r7 = (io.bidmachine.protobuf.rendering.Rendering) r7     // Catch: java.lang.Exception -> L6b
            goto L4a
        L49:
            r7 = r4
        L4a:
            if (r7 == 0) goto L66
            io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams r7 = new io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingParams     // Catch: java.lang.Exception -> L6b
            r2 = 2
            r7.<init>(r6, r4, r2, r4)     // Catch: java.lang.Exception -> L6b
            io.bidmachine.rendering.model.AdParams r6 = r7.getAdParams()     // Catch: java.lang.Exception -> L6b
            if (r6 == 0) goto L66
            r0.c = r3     // Catch: java.lang.Exception -> L6b
            java.lang.Object r7 = r5.a(r6, r0)     // Catch: java.lang.Exception -> L6b
            if (r7 != r1) goto L61
            return r1
        L61:
            java.util.Map r7 = (java.util.Map) r7     // Catch: java.lang.Exception -> L6b
            if (r7 == 0) goto L66
            return r7
        L66:
            java.util.Map r6 = kotlin.collections.MapsKt__MapsKt.emptyMap()     // Catch: java.lang.Exception -> L6b
            return r6
        L6b:
            java.util.Map r6 = kotlin.collections.MapsKt__MapsKt.emptyMap()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.internal.C4218b.getCacheParams(io.bidmachine.unified.UnifiedMediationParams, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(io.bidmachine.rendering.model.AdParams r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof io.bidmachine.internal.C4218b.d
            if (r0 == 0) goto L13
            r0 = r6
            io.bidmachine.internal.b$d r0 = (io.bidmachine.internal.C4218b.d) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.bidmachine.internal.b$d r0 = new io.bidmachine.internal.b$d
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L49
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.jvm.functions.Function0 r6 = r4.b
            if (r6 == 0) goto L4c
            java.lang.Object r6 = r6.invoke()
            io.bidmachine.util.cache.MediaFileCacheManager r6 = (io.bidmachine.util.cache.MediaFileCacheManager) r6
            if (r6 == 0) goto L4c
            r0.c = r3
            java.lang.Object r6 = r4.a(r5, r6, r0)
            if (r6 != r1) goto L49
            return r1
        L49:
            java.util.List r6 = (java.util.List) r6
            goto L4d
        L4c:
            r6 = 0
        L4d:
            java.util.Map r5 = kotlin.collections.MapsKt__MapsJVMKt.createMapBuilder()
            if (r6 == 0) goto L5f
            boolean r0 = r6.isEmpty()
            if (r0 == 0) goto L5a
            goto L5f
        L5a:
            java.lang.String r0 = "adaptive_resources_cache"
            r5.put(r0, r6)
        L5f:
            java.util.Map r5 = kotlin.collections.MapsKt__MapsJVMKt.build(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.internal.C4218b.a(io.bidmachine.rendering.model.AdParams, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d7, code lost:
    
        if (r11 == r1) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00d7 -> B:30:0x00da). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(io.bidmachine.rendering.model.AdParams r9, io.bidmachine.util.cache.MediaFileCacheManager r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.internal.C4218b.a(io.bidmachine.rendering.model.AdParams, io.bidmachine.util.cache.MediaFileCacheManager, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(io.bidmachine.rendering.model.AdPhaseParams r9, io.bidmachine.util.cache.MediaFileCacheManager r10, kotlin.coroutines.Continuation r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof io.bidmachine.internal.C4218b.f
            if (r0 == 0) goto L13
            r0 = r11
            io.bidmachine.internal.b$f r0 = (io.bidmachine.internal.C4218b.f) r0
            int r1 = r0.i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.i = r1
            goto L18
        L13:
            io.bidmachine.internal.b$f r0 = new io.bidmachine.internal.b$f
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.g
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.i
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L5d
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r9 = r0.b
            java.util.List r9 = (java.util.List) r9
            java.lang.Object r10 = r0.a
            java.util.List r10 = (java.util.List) r10
            kotlin.ResultKt.throwOnFailure(r11)
            goto Lab
        L35:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3d:
            java.lang.Object r9 = r0.f
            java.util.List r9 = (java.util.List) r9
            java.lang.Object r10 = r0.e
            java.util.List r10 = (java.util.List) r10
            java.lang.Object r2 = r0.d
            java.util.List r2 = (java.util.List) r2
            java.lang.Object r4 = r0.c
            io.bidmachine.util.cache.MediaFileCacheManager r4 = (io.bidmachine.util.cache.MediaFileCacheManager) r4
            java.lang.Object r5 = r0.b
            io.bidmachine.rendering.model.AdPhaseParams r5 = (io.bidmachine.rendering.model.AdPhaseParams) r5
            java.lang.Object r6 = r0.a
            io.bidmachine.internal.b r6 = (io.bidmachine.internal.C4218b) r6
            kotlin.ResultKt.throwOnFailure(r11)
            r7 = r11
            r11 = r9
            r9 = r5
            r5 = r7
            goto L86
        L5d:
            kotlin.ResultKt.throwOnFailure(r11)
            java.util.List r11 = kotlin.collections.CollectionsKt__CollectionsJVMKt.createListBuilder()
            java.util.List r2 = r9.getAdsList()
            int r5 = r9.getSequence()
            r0.a = r8
            r0.b = r9
            r0.c = r10
            r0.d = r11
            r0.e = r11
            r0.f = r11
            r0.i = r4
            java.lang.Object r2 = r8.a(r2, r5, r10, r0)
            if (r2 != r1) goto L81
            goto La8
        L81:
            r6 = r8
            r4 = r10
            r10 = r11
            r5 = r2
            r2 = r10
        L86:
            java.util.Collection r5 = (java.util.Collection) r5
            r11.addAll(r5)
            java.util.List r11 = r9.getControlsList()
            int r9 = r9.getSequence()
            r0.a = r2
            r0.b = r10
            r5 = 0
            r0.c = r5
            r0.d = r5
            r0.e = r5
            r0.f = r5
            r0.i = r3
            java.lang.Object r11 = r6.a(r11, r9, r4, r0)
            if (r11 != r1) goto La9
        La8:
            return r1
        La9:
            r9 = r10
            r10 = r2
        Lab:
            java.util.Collection r11 = (java.util.Collection) r11
            r9.addAll(r11)
            java.util.List r9 = kotlin.collections.CollectionsKt__CollectionsJVMKt.build(r10)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.internal.C4218b.a(io.bidmachine.rendering.model.AdPhaseParams, io.bidmachine.util.cache.MediaFileCacheManager, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00aa A[LOOP:0: B:22:0x00a4->B:24:0x00aa, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x008a -> B:21:0x0093). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.util.List r26, int r27, io.bidmachine.util.cache.MediaFileCacheManager r28, kotlin.coroutines.Continuation r29) {
        /*
            Method dump skipped, instruction units count: 347
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.internal.C4218b.a(java.util.List, int, io.bidmachine.util.cache.MediaFileCacheManager, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(io.bidmachine.rendering.model.AdElementParams r11, io.bidmachine.util.cache.MediaFileCacheManager r12, kotlin.coroutines.Continuation r13) {
        /*
            r10 = this;
            boolean r0 = r13 instanceof io.bidmachine.internal.C4218b.g
            if (r0 == 0) goto L13
            r0 = r13
            io.bidmachine.internal.b$g r0 = (io.bidmachine.internal.C4218b.g) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            io.bidmachine.internal.b$g r0 = new io.bidmachine.internal.b$g
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r13)
            goto L71
        L29:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L31:
            kotlin.ResultKt.throwOnFailure(r13)
            java.util.Set r11 = r10.a(r11)
            java.util.ArrayList r13 = new java.util.ArrayList
            r2 = 10
            int r2 = kotlin.collections.CollectionsKt__IterablesKt.collectionSizeOrDefault(r11, r2)
            r13.<init>(r2)
            java.util.Iterator r11 = r11.iterator()
        L47:
            boolean r2 = r11.hasNext()
            if (r2 == 0) goto L68
            java.lang.Object r2 = r11.next()
            java.lang.String r2 = (java.lang.String) r2
            kotlinx.coroutines.CoroutineScope r4 = r10.a()
            io.bidmachine.internal.b$h r7 = new io.bidmachine.internal.b$h
            r5 = 0
            r7.<init>(r12, r2, r5)
            r8 = 3
            r9 = 0
            r6 = 0
            kotlinx.coroutines.Deferred r2 = kotlinx.coroutines.BuildersKt.async$default(r4, r5, r6, r7, r8, r9)
            r13.add(r2)
            goto L47
        L68:
            r0.c = r3
            java.lang.Object r13 = kotlinx.coroutines.AwaitKt.awaitAll(r13, r0)
            if (r13 != r1) goto L71
            return r1
        L71:
            java.lang.Iterable r13 = (java.lang.Iterable) r13
            java.util.List r11 = kotlin.collections.CollectionsKt___CollectionsKt.filterNotNull(r13)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.internal.C4218b.a(io.bidmachine.rendering.model.AdElementParams, io.bidmachine.util.cache.MediaFileCacheManager, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Set a(AdElementParams adElementParams) {
        BackgroundSource source;
        Image image;
        Resource resource;
        ResourceSource source2;
        ResourceSource source3;
        Set setCreateSetBuilder = SetsKt__SetsJVMKt.createSetBuilder();
        Resource resource2 = adElementParams.getResource();
        if (resource2 != null && (source3 = resource2.getSource()) != null) {
            UrlResourceSource urlResourceSource = (source3 instanceof UrlResourceSource ? source3 : null) != null ? (UrlResourceSource) source3 : null;
            if (urlResourceSource != null) {
                setCreateSetBuilder.addAll(urlResourceSource.getUrls());
            }
        }
        String placeholder = adElementParams.getPlaceholder();
        if (placeholder != null) {
            if (!UtilsKt.isHttpUrl(placeholder)) {
                placeholder = null;
            }
            if (placeholder != null) {
                setCreateSetBuilder.add(placeholder);
            }
        }
        Background background = adElementParams.getAppearanceParams().getBackground();
        if (background != null && (source = background.getSource()) != null) {
            ImageBackgroundSource imageBackgroundSource = (source instanceof ImageBackgroundSource ? source : null) != null ? (ImageBackgroundSource) source : null;
            if (imageBackgroundSource != null && (image = imageBackgroundSource.getImage()) != null && (resource = image.getResource()) != null && (source2 = resource.getSource()) != null) {
                UrlResourceSource urlResourceSource2 = (source2 instanceof UrlResourceSource ? source2 : null) != null ? (UrlResourceSource) source2 : null;
                if (urlResourceSource2 != null) {
                    setCreateSetBuilder.addAll(urlResourceSource2.getUrls());
                }
            }
        }
        return SetsKt__SetsJVMKt.build(setCreateSetBuilder);
    }
}
