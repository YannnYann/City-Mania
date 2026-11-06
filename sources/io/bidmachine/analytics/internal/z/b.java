package io.bidmachine.analytics.internal.z;

import com.explorestack.protobuf.Struct;
import io.bidmachine.analytics.MonitorConfig;
import io.bidmachine.analytics.internal.g.C4117d;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes4.dex */
public final class b {
    public static final a g = new a(null);
    private final C1159b a;
    private final io.bidmachine.analytics.internal.H.c b;
    private final String c;
    private final CoroutineScope d;
    private Job e;
    private final AtomicBoolean f = new AtomicBoolean(false);

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.z.b$b, reason: collision with other inner class name */
    public static final class C1159b {
        private final MonitorConfig a;
        private final String b;
        private final Struct c;

        public C1159b(MonitorConfig monitorConfig, String str, Struct struct) {
            this.a = monitorConfig;
            this.b = str;
            this.c = struct;
        }

        public final Struct a() {
            return this.c;
        }

        public final MonitorConfig b() {
            return this.a;
        }

        public final String c() {
            return this.b;
        }
    }

    public static final class c extends SuspendLambda implements Function2 {
        int a;
        final /* synthetic */ List c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(List list, Continuation continuation) {
            super(2, continuation);
            this.c = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return b.this.new c(this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                b bVar = b.this;
                List list = this.c;
                this.a = 1;
                if (bVar.a(list, this) == coroutine_suspended) {
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

    public static final class d extends SuspendLambda implements Function2 {
        int a;

        public d(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return b.this.new d(continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0046, code lost:
        
            if (r7.a(0, r6) == r0) goto L15;
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
                int r1 = r6.a
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L23
                if (r1 == r3) goto L1f
                if (r1 != r2) goto L17
                kotlin.ResultKt.throwOnFailure(r7)
                kotlin.Result r7 = (kotlin.Result) r7
                r7.m2768unboximpl()
                goto L49
            L17:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1f:
                kotlin.ResultKt.throwOnFailure(r7)
                goto L3d
            L23:
                kotlin.ResultKt.throwOnFailure(r7)
                io.bidmachine.analytics.internal.z.b r7 = io.bidmachine.analytics.internal.z.b.this
                io.bidmachine.analytics.internal.z.b$b r7 = io.bidmachine.analytics.internal.z.b.a(r7)
                io.bidmachine.analytics.MonitorConfig r7 = r7.b()
                long r4 = r7.getInterval()
                r6.a = r3
                java.lang.Object r7 = kotlinx.coroutines.DelayKt.delay(r4, r6)
                if (r7 != r0) goto L3d
                goto L48
            L3d:
                io.bidmachine.analytics.internal.z.b r7 = io.bidmachine.analytics.internal.z.b.this
                r6.a = r2
                r1 = 0
                java.lang.Object r7 = io.bidmachine.analytics.internal.z.b.a(r7, r1, r6)
                if (r7 != r0) goto L49
            L48:
                return r0
            L49:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.z.b.d.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final class e extends ContinuationImpl {
        Object a;
        Object b;
        /* synthetic */ Object c;
        int e;

        public e(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.e |= Integer.MIN_VALUE;
            return b.this.a((List) null, this);
        }
    }

    public static final class f extends SuspendLambda implements Function2 {
        int a;
        final /* synthetic */ List c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(List list, Continuation continuation) {
            super(2, continuation);
            this.c = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((f) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return b.this.new f(this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objA;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                io.bidmachine.analytics.internal.B.a aVar = new io.bidmachine.analytics.internal.B.a(b.this.a.b().getUrl(), b.this.a.b().getName(), b.this.a.a(), this.c, null, 16, null);
                this.a = 1;
                objA = aVar.a(this);
                if (objA == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                objA = ((Result) obj).m2768unboximpl();
            }
            b bVar = b.this;
            List list = this.c;
            if (Result.m2766isSuccessimpl(objA)) {
                bVar.b.b(list);
            }
            b bVar2 = b.this;
            List list2 = this.c;
            if (Result.m2763exceptionOrNullimpl(objA) != null) {
                bVar2.b.c(list2);
            }
            return Result.m2759boximpl(objA);
        }
    }

    public static final class g extends ContinuationImpl {
        Object a;
        Object b;
        /* synthetic */ Object c;
        int e;

        public g(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.e |= Integer.MIN_VALUE;
            Object objA = b.this.a(0, this);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Result.m2759boximpl(objA);
        }
    }

    public static final class h extends SuspendLambda implements Function2 {
        int a;
        final /* synthetic */ C4117d c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(C4117d c4117d, Continuation continuation) {
            super(2, continuation);
            this.c = c4117d;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((h) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return b.this.new h(this.c, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
        
            if (r5.a(r1, r4) == r0) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
        
            if (r5.a(r1, r4) == r0) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
        
            return r0;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r4.a
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L23
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r5)
                goto L5c
            L12:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r0)
                throw r5
            L1a:
                kotlin.ResultKt.throwOnFailure(r5)
                kotlin.Result r5 = (kotlin.Result) r5
                r5.m2768unboximpl()
                goto L5c
            L23:
                kotlin.ResultKt.throwOnFailure(r5)
                io.bidmachine.analytics.internal.z.b r5 = io.bidmachine.analytics.internal.z.b.this
                io.bidmachine.analytics.internal.g.d r1 = r4.c
                java.lang.Object r5 = io.bidmachine.analytics.internal.z.b.a(r5, r1)
                boolean r5 = kotlin.Result.m2766isSuccessimpl(r5)
                if (r5 == 0) goto L4b
                io.bidmachine.analytics.internal.z.b r5 = io.bidmachine.analytics.internal.z.b.this
                io.bidmachine.analytics.internal.z.b$b r1 = io.bidmachine.analytics.internal.z.b.a(r5)
                io.bidmachine.analytics.MonitorConfig r1 = r1.b()
                int r1 = r1.getBatchSize()
                r4.a = r3
                java.lang.Object r5 = io.bidmachine.analytics.internal.z.b.a(r5, r1, r4)
                if (r5 != r0) goto L5c
                goto L5b
            L4b:
                io.bidmachine.analytics.internal.z.b r5 = io.bidmachine.analytics.internal.z.b.this
                io.bidmachine.analytics.internal.g.d r1 = r4.c
                java.util.List r1 = kotlin.collections.CollectionsKt__CollectionsJVMKt.listOf(r1)
                r4.a = r2
                java.lang.Object r5 = io.bidmachine.analytics.internal.z.b.a(r5, r1, r4)
                if (r5 != r0) goto L5c
            L5b:
                return r0
            L5c:
                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.z.b.h.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public b(io.bidmachine.analytics.internal.I.f fVar, C1159b c1159b, io.bidmachine.analytics.internal.H.c cVar) {
        this.a = c1159b;
        this.b = cVar;
        this.c = c1159b.b().getName();
        this.d = CoroutineScopeKt.CoroutineScope(new CoroutineName("AnalyticsMonitor: " + c1159b.b().getName()).plus(SupervisorKt.SupervisorJob$default(null, 1, null)).plus(fVar.c()));
    }

    public final String b() {
        return this.c;
    }

    public final void b(C4117d c4117d) {
        if (this.f.get()) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(this.d, null, null, new h(c4117d, null), 3, null);
    }

    public final void a() {
        if (this.f.compareAndSet(false, true)) {
            Object objA = this.b.a(this.a.b().getName(), this.a.c());
            if (Result.m2766isSuccessimpl(objA)) {
                BuildersKt__Builders_commonKt.launch$default(this.d, null, null, new c((List) objA, null), 3, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object a(C4117d c4117d) {
        try {
            Result.Companion companion = Result.Companion;
            return this.b.a(c4117d);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(int r9, kotlin.coroutines.Continuation r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof io.bidmachine.analytics.internal.z.b.g
            if (r0 == 0) goto L13
            r0 = r10
            io.bidmachine.analytics.internal.z.b$g r0 = (io.bidmachine.analytics.internal.z.b.g) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            io.bidmachine.analytics.internal.z.b$g r0 = new io.bidmachine.analytics.internal.z.b$g
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 0
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L3b
            if (r2 != r5) goto L33
            java.lang.Object r9 = r0.b
            java.lang.Object r0 = r0.a
            io.bidmachine.analytics.internal.z.b r0 = (io.bidmachine.analytics.internal.z.b) r0
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L31
            goto L87
        L31:
            r9 = move-exception
            goto L99
        L33:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3b:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlin.Result$Companion r10 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L31
            io.bidmachine.analytics.internal.H.c r10 = r8.b     // Catch: java.lang.Throwable -> L31
            io.bidmachine.analytics.internal.z.b$b r2 = r8.a     // Catch: java.lang.Throwable -> L31
            io.bidmachine.analytics.MonitorConfig r2 = r2.b()     // Catch: java.lang.Throwable -> L31
            java.lang.String r2 = r2.getName()     // Catch: java.lang.Throwable -> L31
            io.bidmachine.analytics.internal.z.b$b r6 = r8.a     // Catch: java.lang.Throwable -> L31
            java.lang.String r6 = r6.c()     // Catch: java.lang.Throwable -> L31
            io.bidmachine.analytics.internal.z.b$b r7 = r8.a     // Catch: java.lang.Throwable -> L31
            io.bidmachine.analytics.MonitorConfig r7 = r7.b()     // Catch: java.lang.Throwable -> L31
            int r7 = r7.getBatchSize()     // Catch: java.lang.Throwable -> L31
            java.lang.Object r10 = r10.a(r2, r6, r7)     // Catch: java.lang.Throwable -> L31
            boolean r2 = kotlin.Result.m2766isSuccessimpl(r10)     // Catch: java.lang.Throwable -> L31
            if (r2 == 0) goto L85
            r2 = r10
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Throwable -> L31
            boolean r6 = r2.isEmpty()     // Catch: java.lang.Throwable -> L31
            if (r6 != 0) goto L82
            int r6 = r2.size()     // Catch: java.lang.Throwable -> L31
            if (r6 < r9) goto L82
            r0.a = r8     // Catch: java.lang.Throwable -> L31
            r0.b = r10     // Catch: java.lang.Throwable -> L31
            r0.e = r5     // Catch: java.lang.Throwable -> L31
            java.lang.Object r9 = r8.a(r2, r0)     // Catch: java.lang.Throwable -> L31
            if (r9 != r1) goto L85
            return r1
        L82:
            a(r8, r4, r5, r3)     // Catch: java.lang.Throwable -> L31
        L85:
            r0 = r8
            r9 = r10
        L87:
            java.lang.Throwable r10 = kotlin.Result.m2763exceptionOrNullimpl(r9)     // Catch: java.lang.Throwable -> L31
            if (r10 == 0) goto L90
            a(r0, r4, r5, r3)     // Catch: java.lang.Throwable -> L31
        L90:
            kotlin.Result r9 = kotlin.Result.m2759boximpl(r9)     // Catch: java.lang.Throwable -> L31
            java.lang.Object r9 = kotlin.Result.m2760constructorimpl(r9)     // Catch: java.lang.Throwable -> L31
            return r9
        L99:
            kotlin.Result$Companion r10 = kotlin.Result.Companion
            java.lang.Object r9 = kotlin.ResultKt.createFailure(r9)
            java.lang.Object r9 = kotlin.Result.m2760constructorimpl(r9)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.z.b.a(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.util.List r12, kotlin.coroutines.Continuation r13) {
        /*
            r11 = this;
            boolean r0 = r13 instanceof io.bidmachine.analytics.internal.z.b.e
            if (r0 == 0) goto L13
            r0 = r13
            io.bidmachine.analytics.internal.z.b$e r0 = (io.bidmachine.analytics.internal.z.b.e) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            io.bidmachine.analytics.internal.z.b$e r0 = new io.bidmachine.analytics.internal.z.b$e
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r12 = r0.b
            java.lang.Object r0 = r0.a
            io.bidmachine.analytics.internal.z.b r0 = (io.bidmachine.analytics.internal.z.b) r0
            kotlin.ResultKt.throwOnFailure(r13)
            goto L94
        L2f:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L37:
            kotlin.ResultKt.throwOnFailure(r13)
            io.bidmachine.analytics.internal.H.c r13 = r11.b
            java.lang.Object r13 = r13.a(r12)
            boolean r2 = kotlin.Result.m2766isSuccessimpl(r13)
            if (r2 == 0) goto L99
            r2 = r13
            kotlin.Unit r2 = (kotlin.Unit) r2
            io.bidmachine.analytics.internal.z.b$b r2 = r11.a
            io.bidmachine.analytics.MonitorConfig r2 = r2.b()
            int r2 = r2.getBatchSize()
            java.util.List r12 = kotlin.collections.CollectionsKt___CollectionsKt.chunked(r12, r2)
            java.util.ArrayList r2 = new java.util.ArrayList
            r4 = 10
            int r4 = kotlin.collections.CollectionsKt__IterablesKt.collectionSizeOrDefault(r12, r4)
            r2.<init>(r4)
            java.util.Iterator r12 = r12.iterator()
        L66:
            boolean r4 = r12.hasNext()
            if (r4 == 0) goto L85
            java.lang.Object r4 = r12.next()
            java.util.List r4 = (java.util.List) r4
            kotlinx.coroutines.CoroutineScope r5 = r11.d
            io.bidmachine.analytics.internal.z.b$f r8 = new io.bidmachine.analytics.internal.z.b$f
            r6 = 0
            r8.<init>(r4, r6)
            r9 = 3
            r10 = 0
            r7 = 0
            kotlinx.coroutines.Deferred r4 = kotlinx.coroutines.BuildersKt.async$default(r5, r6, r7, r8, r9, r10)
            r2.add(r4)
            goto L66
        L85:
            r0.a = r11
            r0.b = r13
            r0.e = r3
            java.lang.Object r12 = kotlinx.coroutines.AwaitKt.awaitAll(r2, r0)
            if (r12 != r1) goto L92
            return r1
        L92:
            r0 = r11
            r12 = r13
        L94:
            r0.a(r3)
            r13 = r12
            goto L9a
        L99:
            r0 = r11
        L9a:
            java.lang.Throwable r12 = kotlin.Result.m2763exceptionOrNullimpl(r13)
            if (r12 == 0) goto La3
            r0.a(r3)
        La3:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.z.b.a(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ void a(b bVar, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        bVar.a(z);
    }

    private final void a(boolean z) {
        Job job;
        if (this.f.get()) {
            return;
        }
        if (z || (job = this.e) == null || !job.isActive()) {
            Job job2 = this.e;
            if (job2 != null) {
                Job.DefaultImpls.cancel$default(job2, null, 1, null);
            }
            this.e = BuildersKt__Builders_commonKt.launch$default(this.d, null, null, new d(null), 3, null);
        }
    }
}
