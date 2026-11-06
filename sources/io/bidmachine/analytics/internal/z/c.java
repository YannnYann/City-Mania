package io.bidmachine.analytics.internal.z;

import com.explorestack.protobuf.Struct;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.C.a;
import io.bidmachine.analytics.internal.I.f;
import io.bidmachine.analytics.internal.g.C4118e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes4.dex */
public final class c {
    private final a a;
    private final io.bidmachine.analytics.internal.H.e b;
    private final String c;
    private final CoroutineScope d;

    public static final class a {
        private final ReaderConfig a;
        private final String b;
        private final Struct c;
        private final a.InterfaceC1110a d;

        public a(ReaderConfig readerConfig, String str, Struct struct, a.InterfaceC1110a interfaceC1110a) {
            this.a = readerConfig;
            this.b = str;
            this.c = struct;
            this.d = interfaceC1110a;
        }

        public final a.InterfaceC1110a a() {
            return this.d;
        }

        public final Struct b() {
            return this.c;
        }

        public final ReaderConfig c() {
            return this.a;
        }
    }

    public static final class b extends ContinuationImpl {
        Object a;
        /* synthetic */ Object b;
        int d;

        public b(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.d |= Integer.MIN_VALUE;
            Object objA = c.this.a((String) null, this);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Result.m2759boximpl(objA);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.z.c$c, reason: collision with other inner class name */
    public static final class C1160c extends ContinuationImpl {
        Object a;
        /* synthetic */ Object b;
        int d;

        public C1160c(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.d |= Integer.MIN_VALUE;
            return c.this.a((List) null, this);
        }
    }

    public static final class d extends SuspendLambda implements Function2 {
        int a;
        final /* synthetic */ List c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(List list, Continuation continuation) {
            super(2, continuation);
            this.c = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return c.this.new d(this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object objA;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                io.bidmachine.analytics.internal.C.a aVar = new io.bidmachine.analytics.internal.C.a(c.this.a.c().getUrl(), c.this.a.c().getName(), c.this.a.b(), this.c, c.this.a.a(), null, 32, null);
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
            c cVar = c.this;
            List list = this.c;
            if (Result.m2766isSuccessimpl(objA)) {
                io.bidmachine.analytics.internal.H.e eVar = cVar.b;
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : list) {
                    if (((C4118e) obj2).b() != null) {
                        arrayList.add(obj2);
                    }
                }
                eVar.b(arrayList);
                ArrayList arrayList2 = new ArrayList();
                for (Object obj3 : list) {
                    if (((C4118e) obj3).b() == null) {
                        arrayList2.add(obj3);
                    }
                }
                cVar.b.c(arrayList2);
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    cVar.a((C4118e) it.next());
                }
            }
            c cVar2 = c.this;
            List list2 = this.c;
            if (Result.m2763exceptionOrNullimpl(objA) != null) {
                cVar2.b.c(list2);
            }
            return Result.m2759boximpl(objA);
        }
    }

    public static final class e extends SuspendLambda implements Function2 {
        Object a;
        int b;
        final /* synthetic */ String d;
        final /* synthetic */ List e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, List list, Continuation continuation) {
            super(2, continuation);
            this.d = str;
            this.e = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return c.this.new e(this.d, this.e, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x009b, code lost:
        
            if (r10.a(r1, r9) == r0) goto L29;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.b
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L28
                if (r1 == r3) goto L1b
                if (r1 != r2) goto L13
                kotlin.ResultKt.throwOnFailure(r10)
                goto L9e
            L13:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L1b:
                java.lang.Object r1 = r9.a
                java.util.List r1 = (java.util.List) r1
                kotlin.ResultKt.throwOnFailure(r10)
                kotlin.Result r10 = (kotlin.Result) r10
                r10.m2768unboximpl()
                goto L8a
            L28:
                kotlin.ResultKt.throwOnFailure(r10)
                java.util.ArrayList r1 = new java.util.ArrayList
                r1.<init>()
                io.bidmachine.analytics.internal.z.c r10 = io.bidmachine.analytics.internal.z.c.this
                java.lang.String r4 = r9.d
                java.util.List r5 = r9.e
                java.util.ArrayList r6 = new java.util.ArrayList
                r6.<init>()
                java.util.Iterator r5 = r5.iterator()
            L3f:
                boolean r7 = r5.hasNext()
                if (r7 == 0) goto L56
                java.lang.Object r7 = r5.next()
                r8 = r7
                io.bidmachine.analytics.internal.g.e r8 = (io.bidmachine.analytics.internal.g.C4118e) r8
                io.bidmachine.analytics.internal.g.h r8 = r8.b()
                if (r8 == 0) goto L3f
                r6.add(r7)
                goto L3f
            L56:
                io.bidmachine.analytics.internal.z.c.a(r10, r4, r6)
                java.util.List r10 = r9.e
                io.bidmachine.analytics.internal.z.c r4 = io.bidmachine.analytics.internal.z.c.this
                java.util.Iterator r10 = r10.iterator()
            L61:
                boolean r5 = r10.hasNext()
                if (r5 == 0) goto L7b
                java.lang.Object r5 = r10.next()
                io.bidmachine.analytics.internal.g.e r5 = (io.bidmachine.analytics.internal.g.C4118e) r5
                java.lang.Object r6 = io.bidmachine.analytics.internal.z.c.a(r4, r5)
                boolean r6 = kotlin.Result.m2765isFailureimpl(r6)
                if (r6 == 0) goto L61
                r1.add(r5)
                goto L61
            L7b:
                io.bidmachine.analytics.internal.z.c r10 = io.bidmachine.analytics.internal.z.c.this
                java.lang.String r4 = r9.d
                r9.a = r1
                r9.b = r3
                java.lang.Object r10 = io.bidmachine.analytics.internal.z.c.a(r10, r4, r9)
                if (r10 != r0) goto L8a
                goto L9d
            L8a:
                boolean r10 = r1.isEmpty()
                if (r10 != 0) goto L9e
                io.bidmachine.analytics.internal.z.c r10 = io.bidmachine.analytics.internal.z.c.this
                r3 = 0
                r9.a = r3
                r9.b = r2
                java.lang.Object r10 = io.bidmachine.analytics.internal.z.c.a(r10, r1, r9)
                if (r10 != r0) goto L9e
            L9d:
                return r0
            L9e:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.z.c.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public c(f fVar, a aVar, io.bidmachine.analytics.internal.H.e eVar) {
        this.a = aVar;
        this.b = eVar;
        this.c = aVar.c().getName();
        this.d = CoroutineScopeKt.CoroutineScope(new CoroutineName("AnalyticsMonitor: " + aVar.c().getName()).plus(SupervisorKt.SupervisorJob$default(null, 1, null)).plus(fVar.c()));
    }

    public final void b(String str, List list) {
        BuildersKt__Builders_commonKt.launch$default(this.d, null, null, new e(str, list, null), 3, null);
    }

    public final String a() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object a(String str, List list) {
        try {
            Result.Companion companion = Result.Companion;
            io.bidmachine.analytics.internal.H.e eVar = this.b;
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((C4118e) it.next()).e());
            }
            return Result.m2760constructorimpl(Result.m2759boximpl(eVar.a(str, arrayList)));
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
    public final java.lang.Object a(java.lang.String r5, kotlin.coroutines.Continuation r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof io.bidmachine.analytics.internal.z.c.b
            if (r0 == 0) goto L13
            r0 = r6
            io.bidmachine.analytics.internal.z.c$b r0 = (io.bidmachine.analytics.internal.z.c.b) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            io.bidmachine.analytics.internal.z.c$b r0 = new io.bidmachine.analytics.internal.z.c$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2b
            goto L5a
        L2b:
            r5 = move-exception
            goto L63
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result$Companion r6 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L2b
            io.bidmachine.analytics.internal.H.e r6 = r4.b     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r5 = r6.a(r5)     // Catch: java.lang.Throwable -> L2b
            boolean r6 = kotlin.Result.m2766isSuccessimpl(r5)     // Catch: java.lang.Throwable -> L2b
            if (r6 == 0) goto L5a
            r6 = r5
            java.util.List r6 = (java.util.List) r6     // Catch: java.lang.Throwable -> L2b
            boolean r2 = r6.isEmpty()     // Catch: java.lang.Throwable -> L2b
            if (r2 != 0) goto L5a
            r0.a = r5     // Catch: java.lang.Throwable -> L2b
            r0.d = r3     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r6 = r4.a(r6, r0)     // Catch: java.lang.Throwable -> L2b
            if (r6 != r1) goto L5a
            return r1
        L5a:
            kotlin.Result r5 = kotlin.Result.m2759boximpl(r5)     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r5 = kotlin.Result.m2760constructorimpl(r5)     // Catch: java.lang.Throwable -> L2b
            return r5
        L63:
            kotlin.Result$Companion r6 = kotlin.Result.Companion
            java.lang.Object r5 = kotlin.ResultKt.createFailure(r5)
            java.lang.Object r5 = kotlin.Result.m2760constructorimpl(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.z.c.a(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object a(C4118e c4118e) {
        try {
            Result.Companion companion = Result.Companion;
            if (c4118e.b() != null) {
                return this.b.a(c4118e);
            }
            Object objA = this.b.a(c4118e.d(), c4118e.e());
            if (Result.m2765isFailureimpl(objA)) {
                objA = null;
            }
            C4118e c4118e2 = (C4118e) objA;
            if (c4118e2 == null) {
                return this.b.a(c4118e);
            }
            return this.b.b(C4118e.a(c4118e, c4118e2.c(), null, 0L, null, null, null, (this.a.c().getUniqueOnly() && Intrinsics.areEqual(c4118e.a(), c4118e2.a())) ? false : true, 62, null));
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
    public final java.lang.Object a(java.util.List r11, kotlin.coroutines.Continuation r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof io.bidmachine.analytics.internal.z.c.C1160c
            if (r0 == 0) goto L13
            r0 = r12
            io.bidmachine.analytics.internal.z.c$c r0 = (io.bidmachine.analytics.internal.z.c.C1160c) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            io.bidmachine.analytics.internal.z.c$c r0 = new io.bidmachine.analytics.internal.z.c$c
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.d
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r12)
            goto L5e
        L29:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L31:
            kotlin.ResultKt.throwOnFailure(r12)
            io.bidmachine.analytics.internal.H.e r12 = r10.b
            java.lang.Object r12 = r12.a(r11)
            boolean r2 = kotlin.Result.m2766isSuccessimpl(r12)
            if (r2 == 0) goto L5e
            r2 = r12
            kotlin.Unit r2 = (kotlin.Unit) r2
            kotlinx.coroutines.CoroutineScope r4 = r10.d
            io.bidmachine.analytics.internal.z.c$d r7 = new io.bidmachine.analytics.internal.z.c$d
            r2 = 0
            r7.<init>(r11, r2)
            r8 = 3
            r9 = 0
            r5 = 0
            r6 = 0
            kotlinx.coroutines.Deferred r11 = kotlinx.coroutines.BuildersKt.async$default(r4, r5, r6, r7, r8, r9)
            r0.a = r12
            r0.d = r3
            java.lang.Object r11 = r11.await(r0)
            if (r11 != r1) goto L5e
            return r1
        L5e:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.z.c.a(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
