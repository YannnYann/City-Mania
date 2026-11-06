package io.bidmachine.rendering.internal.event;

import io.bidmachine.rendering.internal.j;
import io.bidmachine.rendering.internal.n;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.EventParams;
import io.bidmachine.rendering.model.EventTaskBucketParams;
import io.bidmachine.rendering.model.EventTaskParams;
import io.bidmachine.rendering.model.EventType;
import io.bidmachine.rendering.model.ExecutionMode;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.UtilsKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements io.bidmachine.rendering.internal.event.a {
    public final String a;
    public final io.bidmachine.rendering.internal.groups.b b;
    public final io.bidmachine.rendering.internal.event.c c;
    public final CoroutineScope d;
    public final j e;
    public final Map f;

    public final class a implements Function1 {
        public final EventType a;
        public final List b;
        public final List c;
        public final /* synthetic */ b d;

        public a(b bVar, EventType eventType, List baseEventTaskBucketParamsList, List list) {
            Intrinsics.checkNotNullParameter(eventType, "eventType");
            Intrinsics.checkNotNullParameter(baseEventTaskBucketParamsList, "baseEventTaskBucketParamsList");
            this.d = bVar;
            this.a = eventType;
            this.b = baseEventTaskBucketParamsList;
            this.c = list;
        }

        public void a(List list) {
            b bVar = this.d;
            if (list == null) {
                list = this.b;
            }
            bVar.a(list, this.a, this.c);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((List) obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.event.b$b, reason: collision with other inner class name */
    public static final class C1189b extends SuspendLambda implements Function2 {
        public Object a;
        public int b;
        public /* synthetic */ Object c;
        public final /* synthetic */ List d;
        public final /* synthetic */ ExecutionMode e;
        public final /* synthetic */ Function0 f;
        public final /* synthetic */ b g;

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.event.b$b$a */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ExecutionMode.values().length];
                try {
                    iArr[ExecutionMode.Parallel.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ExecutionMode.Sequence.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.event.b$b$b, reason: collision with other inner class name */
        public static final class C1190b extends SuspendLambda implements Function2 {
            public Object a;
            public int b;
            public /* synthetic */ Object c;
            public final /* synthetic */ n d;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.event.b$b$b$a */
            public static final class a implements n.a {
                public final /* synthetic */ CancellableContinuation a;

                public a(CancellableContinuation cancellableContinuation) {
                    this.a = cancellableContinuation;
                }

                @Override // io.bidmachine.rendering.internal.n.a
                public final void a() {
                    CancellableContinuation cancellableContinuation = this.a;
                    Result.Companion companion = Result.Companion;
                    cancellableContinuation.resumeWith(Result.m2760constructorimpl(Unit.INSTANCE));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1190b(n nVar, Continuation continuation) {
                super(2, continuation);
                this.d = nVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((C1190b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C1190b c1190b = new C1190b(this.d, continuation);
                c1190b.c = obj;
                return c1190b;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.b;
                try {
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        n nVar = this.d;
                        this.c = nVar;
                        this.a = this;
                        this.b = 1;
                        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(this), 1);
                        cancellableContinuationImpl.initCancellability();
                        nVar.a(new a(cancellableContinuationImpl));
                        obj = cancellableContinuationImpl.getResult();
                        if (obj == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                            DebugProbesKt.probeCoroutineSuspended(this);
                        }
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return (Unit) obj;
                } catch (Throwable unused) {
                    return null;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1189b(List list, ExecutionMode executionMode, Function0 function0, b bVar, Continuation continuation) {
            super(2, continuation);
            this.d = list;
            this.e = executionMode;
            this.f = function0;
            this.g = bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C1189b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C1189b c1189b = new C1189b(this.d, this.e, this.f, this.g, continuation);
            c1189b.c = obj;
            return c1189b;
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x00a0, code lost:
        
            if (r13 == r0) goto L32;
         */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0084  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0094 -> B:28:0x0097). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                r12 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r12.b
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L28
                if (r1 == r3) goto L23
                if (r1 != r2) goto L1b
                java.lang.Object r1 = r12.a
                java.util.Iterator r1 = (java.util.Iterator) r1
                java.lang.Object r3 = r12.c
                kotlinx.coroutines.CoroutineScope r3 = (kotlinx.coroutines.CoroutineScope) r3
                kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Throwable -> L7e
                goto L97
            L1b:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r13.<init>(r0)
                throw r13
            L23:
                kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Throwable -> La5
                goto La3
            L28:
                kotlin.ResultKt.throwOnFailure(r13)
                java.lang.Object r13 = r12.c
                kotlinx.coroutines.CoroutineScope r13 = (kotlinx.coroutines.CoroutineScope) r13
                java.util.List r1 = r12.d
                io.bidmachine.rendering.internal.event.b r4 = r12.g
                java.util.ArrayList r5 = new java.util.ArrayList
                r6 = 10
                int r6 = kotlin.collections.CollectionsKt__IterablesKt.collectionSizeOrDefault(r1, r6)
                r5.<init>(r6)
                java.util.Iterator r1 = r1.iterator()
            L42:
                boolean r6 = r1.hasNext()
                if (r6 == 0) goto L6a
                java.lang.Object r6 = r1.next()
                io.bidmachine.rendering.internal.n r6 = (io.bidmachine.rendering.internal.n) r6
                kotlinx.coroutines.CoroutineScope r7 = io.bidmachine.rendering.internal.event.b.b(r4)
                io.bidmachine.rendering.internal.j r8 = io.bidmachine.rendering.internal.event.b.a(r4)
                kotlinx.coroutines.CoroutineDispatcher r8 = r8.c()
                kotlinx.coroutines.CoroutineStart r9 = kotlinx.coroutines.CoroutineStart.LAZY
                io.bidmachine.rendering.internal.event.b$b$b r10 = new io.bidmachine.rendering.internal.event.b$b$b
                r11 = 0
                r10.<init>(r6, r11)
                kotlinx.coroutines.Deferred r6 = kotlinx.coroutines.BuildersKt.async(r7, r8, r9, r10)
                r5.add(r6)
                goto L42
            L6a:
                io.bidmachine.rendering.model.ExecutionMode r1 = r12.e
                int[] r4 = io.bidmachine.rendering.internal.event.b.C1189b.a.$EnumSwitchMapping$0
                int r1 = r1.ordinal()
                r1 = r4[r1]
                if (r1 == r3) goto L9a
                if (r1 == r2) goto L79
                goto La5
            L79:
                java.util.Iterator r1 = r5.iterator()
                r3 = r13
            L7e:
                boolean r13 = r1.hasNext()
                if (r13 == 0) goto La5
                java.lang.Object r13 = r1.next()
                kotlinx.coroutines.Deferred r13 = (kotlinx.coroutines.Deferred) r13
                r12.c = r3     // Catch: java.lang.Throwable -> L7e
                r12.a = r1     // Catch: java.lang.Throwable -> L7e
                r12.b = r2     // Catch: java.lang.Throwable -> L7e
                java.lang.Object r13 = r13.await(r12)     // Catch: java.lang.Throwable -> L7e
                if (r13 != r0) goto L97
                goto La2
            L97:
                kotlin.Unit r13 = (kotlin.Unit) r13     // Catch: java.lang.Throwable -> L7e
                goto L7e
            L9a:
                r12.b = r3     // Catch: java.lang.Throwable -> La5
                java.lang.Object r13 = kotlinx.coroutines.AwaitKt.awaitAll(r5, r12)     // Catch: java.lang.Throwable -> La5
                if (r13 != r0) goto La3
            La2:
                return r0
            La3:
                java.util.List r13 = (java.util.List) r13     // Catch: java.lang.Throwable -> La5
            La5:
                kotlin.jvm.functions.Function0 r13 = r12.f
                r13.invoke()
                kotlin.Unit r13 = kotlin.Unit.INSTANCE
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.event.b.C1189b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final class c extends Lambda implements Function0 {
        public final /* synthetic */ n.a a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(n.a aVar) {
            super(0);
            this.a = aVar;
        }

        public final void a() {
            this.a.a();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class d extends Lambda implements Function0 {
        public static final d a = new d();

        public d() {
            super(0);
        }

        public final void a() {
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class e extends Lambda implements Function0 {
        public final /* synthetic */ n.a a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(n.a aVar) {
            super(0);
            this.a = aVar;
        }

        public final void a() {
            this.a.a();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class f extends Lambda implements Function0 {
        public final /* synthetic */ n.a a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(n.a aVar) {
            super(0);
            this.a = aVar;
        }

        public final void a() {
            this.a.a();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class g extends Lambda implements Function0 {
        public final /* synthetic */ n.a a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(n.a aVar) {
            super(0);
            this.a = aVar;
        }

        public final void a() {
            this.a.a();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class h extends Lambda implements Function0 {
        public final /* synthetic */ n.a a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(n.a aVar) {
            super(0);
            this.a = aVar;
        }

        public final void a() {
            this.a.a();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class i extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ EventType c;
        public final /* synthetic */ Object d;
        public final /* synthetic */ List e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(EventType eventType, Object obj, List list, Continuation continuation) {
            super(2, continuation);
            this.c = eventType;
            this.d = obj;
            this.e = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((i) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return b.this.new i(this.c, this.d, this.e, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            EventParams eventParams;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Map map = b.this.f;
            if (map == null || (eventParams = (EventParams) map.get(this.c)) == null) {
                return Unit.INSTANCE;
            }
            List<EventTaskBucketParams> eventTaskBucketParamsList = eventParams.getEventTaskBucketParamsList();
            String requestPermissionUrl = eventParams.getRequestPermissionUrl();
            if (requestPermissionUrl == null || StringsKt__StringsKt.isBlank(requestPermissionUrl)) {
                b.this.a(eventTaskBucketParamsList, this.c, this.e);
            } else {
                b.this.c.a(requestPermissionUrl, this.c, UtilsKt.toStringOrDefault$default(this.d, null, 1, null), eventTaskBucketParamsList, new a(b.this, this.c, eventTaskBucketParamsList, this.e));
            }
            return Unit.INSTANCE;
        }
    }

    public b(String sourceName, io.bidmachine.rendering.internal.groups.b stateGroupController, io.bidmachine.rendering.internal.event.c eventCallbackProcessor, CoroutineScope coroutineScope, j coroutineDispatchers, Map map) {
        Intrinsics.checkNotNullParameter(sourceName, "sourceName");
        Intrinsics.checkNotNullParameter(stateGroupController, "stateGroupController");
        Intrinsics.checkNotNullParameter(eventCallbackProcessor, "eventCallbackProcessor");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(coroutineDispatchers, "coroutineDispatchers");
        this.a = sourceName;
        this.b = stateGroupController;
        this.c = eventCallbackProcessor;
        this.d = coroutineScope;
        this.e = coroutineDispatchers;
        this.f = map;
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void e() {
        a(this, EventType.OnBillableImpression, null, null, 6, null);
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void f() {
        a(this, EventType.OnExpand, null, null, 6, null);
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public String g() {
        return this.a;
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void h() {
        a(this, EventType.OnLayoutChanged, null, null, 6, null);
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void i() {
        a(this, EventType.OnPause, null, null, 6, null);
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void j() {
        a(this, EventType.OnCollapse, null, null, 6, null);
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void k() {
        a(this, EventType.OnMidpoint, null, null, 6, null);
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void l() {
        a(this, EventType.OnScheduled, null, null, 6, null);
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void m() {
        a(this, EventType.OnFirstQuartile, null, null, 6, null);
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void n() {
        a(this, EventType.OnStart, null, null, 6, null);
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void o() {
        a(this, EventType.OnImpression, null, null, 6, null);
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void onClose() {
        a(this, EventType.OnClose, null, null, 6, null);
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void onUseCustomClose(boolean z) {
        a(EventType.OnUseCustomClose, Boolean.valueOf(z), CollectionsKt__CollectionsJVMKt.listOf(Boolean.valueOf(z)));
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void b(Integer num) {
        a(EventType.OnMute, num, CollectionsKt__CollectionsKt.listOfNotNull(num));
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void c() {
        a(this, EventType.OnThirdQuartile, null, null, 6, null);
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void d() {
        a(this, EventType.OnSkip, null, null, 6, null);
    }

    public static final void c(b this$0, EventTaskBucketParams this_process, EventType eventType, List list, n.a listener) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_process, "$this_process");
        Intrinsics.checkNotNullParameter(eventType, "$eventType");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this$0.a(this_process.getEventTaskParamsList(), this_process.getExecutionMode(), eventType, list, new f(listener));
    }

    public static final void d(b this$0, EventTaskBucketParams this_process, EventType eventType, List list, n.a listener) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_process, "$this_process");
        Intrinsics.checkNotNullParameter(eventType, "$eventType");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this$0.a(this_process.getAfterEventTaskParamsList(), ExecutionMode.Parallel, eventType, list, new g(listener));
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void a(int i2, ClickData clickData) {
        a(EventType.OnClick, Integer.valueOf(i2), CollectionsKt__CollectionsKt.listOfNotNull(Integer.valueOf(i2), clickData));
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void b() {
        a(this, EventType.OnResume, null, null, 6, null);
    }

    public static final void b(b this$0, EventTaskBucketParams this_process, EventType eventType, List list, n.a listener) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_process, "$this_process");
        Intrinsics.checkNotNullParameter(eventType, "$eventType");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this$0.a(this_process.getBeforeEventTaskParamsList(), ExecutionMode.Parallel, eventType, list, new e(listener));
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void a(SystemComponent systemComponent, ClickData clickData) {
        a(EventType.OnClickResolved, systemComponent, CollectionsKt__CollectionsKt.listOfNotNull(systemComponent, clickData));
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void a(Integer num) {
        a(EventType.OnUnMute, num, CollectionsKt__CollectionsKt.listOfNotNull(num));
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void a() {
        a(this, EventType.OnComplete, null, null, 6, null);
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void a(long j, long j2) {
        a(EventType.OnProgress, Long.valueOf(j), CollectionsKt__CollectionsKt.listOf((Object[]) new Long[]{Long.valueOf(j), Long.valueOf(j2)}));
    }

    @Override // io.bidmachine.rendering.internal.event.a
    public void a(String url, ClickData clickData) {
        Intrinsics.checkNotNullParameter(url, "url");
        a(EventType.OnNavigate, url, CollectionsKt__CollectionsKt.listOfNotNull(url, clickData));
    }

    public static /* synthetic */ void a(b bVar, EventType eventType, Object obj, List list, int i2, Object obj2) {
        if ((i2 & 2) != 0) {
            obj = null;
        }
        if ((i2 & 4) != 0) {
            list = null;
        }
        bVar.a(eventType, obj, list);
    }

    public final void a(EventType eventType, Object obj, List list) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        BuildersKt__Builders_commonKt.launch$default(this.d, this.e.b(), null, new i(eventType, obj, list, null), 2, null);
    }

    public final void a(List list, final EventType eventType, final List list2) {
        ExecutionMode executionMode = ExecutionMode.Sequence;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final EventTaskBucketParams eventTaskBucketParams = (EventTaskBucketParams) it.next();
            arrayList.add(new n() { // from class: io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda0
                @Override // io.bidmachine.rendering.internal.n
                public final void a(n.a aVar) {
                    b.a(this.f$0, eventTaskBucketParams, eventType, list2, aVar);
                }
            });
        }
        a(executionMode, arrayList, d.a);
    }

    public static final void a(b this$0, EventTaskBucketParams eventTaskBucketParams, EventType eventType, List list, n.a listener) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(eventTaskBucketParams, "$eventTaskBucketParams");
        Intrinsics.checkNotNullParameter(eventType, "$eventType");
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (this$0.b.a(eventTaskBucketParams.getStateGroups())) {
            this$0.a(eventTaskBucketParams, eventType, list, new c(listener));
        } else {
            listener.a();
        }
    }

    public final void a(final EventTaskBucketParams eventTaskBucketParams, final EventType eventType, final List list, Function0 function0) {
        a(ExecutionMode.Sequence, CollectionsKt__CollectionsKt.listOf((Object[]) new n[]{new n() { // from class: io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda1
            @Override // io.bidmachine.rendering.internal.n
            public final void a(n.a aVar) {
                b.b(this.f$0, eventTaskBucketParams, eventType, list, aVar);
            }
        }, new n() { // from class: io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda2
            @Override // io.bidmachine.rendering.internal.n
            public final void a(n.a aVar) {
                b.c(this.f$0, eventTaskBucketParams, eventType, list, aVar);
            }
        }, new n() { // from class: io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda3
            @Override // io.bidmachine.rendering.internal.n
            public final void a(n.a aVar) {
                b.d(this.f$0, eventTaskBucketParams, eventType, list, aVar);
            }
        }}), function0);
    }

    public static final void a(b this$0, EventType eventType, EventTaskParams eventTaskParams, List list, n.a listener) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(eventType, "$eventType");
        Intrinsics.checkNotNullParameter(eventTaskParams, "$eventTaskParams");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this$0.c.a(eventType, eventTaskParams, list, new h(listener));
    }

    public final void a(ExecutionMode executionMode, List list, Function0 function0) {
        BuildersKt__Builders_commonKt.launch$default(this.d, this.e.c(), null, new C1189b(list, executionMode, function0, this, null), 2, null);
    }

    public final void a(List list, ExecutionMode executionMode, final EventType eventType, final List list2, Function0 function0) {
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final EventTaskParams eventTaskParams = (EventTaskParams) it.next();
            arrayList.add(new n() { // from class: io.bidmachine.rendering.internal.event.b$$ExternalSyntheticLambda4
                @Override // io.bidmachine.rendering.internal.n
                public final void a(n.a aVar) {
                    b.a(this.f$0, eventType, eventTaskParams, list2, aVar);
                }
            });
        }
        a(executionMode, arrayList, function0);
    }
}
