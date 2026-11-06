package io.bidmachine.rendering.internal.detector.engagedclick;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.view.View;
import android.webkit.WebView;
import io.bidmachine.iab.mraid.MraidWebViewController;
import io.bidmachine.rendering.internal.t;
import io.bidmachine.rendering.model.engagedclick.CreativeProfile;
import io.bidmachine.rendering.model.engagedclick.CreativeProfileInfo;
import io.bidmachine.rendering.model.engagedclick.EngagedClickAction;
import io.bidmachine.rendering.model.engagedclick.EngagedClickParams;
import io.bidmachine.rendering.model.engagedclick.EngagedClickReport;
import io.bidmachine.rendering.model.engagedclick.EngagedClickTrackingObject;
import io.bidmachine.rendering.model.engagedclick.VisualConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes5.dex */
public final class b {
    public static final a o = new a(null);
    public static final List p = CollectionsKt__CollectionsKt.listOf((Object[]) new CreativeProfile[]{CreativeProfile.PLAYABLE, CreativeProfile.LIKELY_PLAYABLE, CreativeProfile.INTERACTIVE_HTML});
    public final EngagedClickParams a;
    public final io.bidmachine.rendering.internal.detector.engagedclick.c b;
    public final long c;
    public final List d;
    public final CoroutineScope e;
    public final AtomicBoolean f;
    public final AtomicBoolean g;
    public CreativeProfileInfo h;
    public WeakReference i;
    public double j;
    public double k;
    public Job l;
    public Job m;
    public boolean n;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a(EngagedClickParams engagedClickParams, MraidWebViewController mraidWebViewController) {
            Intrinsics.checkNotNullParameter(engagedClickParams, "engagedClickParams");
            Intrinsics.checkNotNullParameter(mraidWebViewController, "mraidWebViewController");
            b bVar = new b(engagedClickParams);
            bVar.i = new WeakReference(mraidWebViewController.getMraidWebView());
            return bVar;
        }

        public a() {
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.detector.engagedclick.b$b, reason: collision with other inner class name */
    public static final class C1186b extends SuspendLambda implements Function2 {
        public Object a;
        public Object b;
        public Object c;
        public int d;
        public int e;
        public int f;
        public /* synthetic */ Object g;
        public final /* synthetic */ long h;
        public final /* synthetic */ b i;
        public final /* synthetic */ View j;

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.detector.engagedclick.b$b$a */
        public static final class a extends SuspendLambda implements Function2 {
            public Object a;
            public int b;
            public final /* synthetic */ b c;
            public final /* synthetic */ View d;
            public final /* synthetic */ Bitmap e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(b bVar, View view, Bitmap bitmap, Continuation continuation) {
                super(2, continuation);
                this.c = bVar;
                this.d = view;
                this.e = bitmap;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new a(this.c, this.d, this.e, continuation);
            }

            /* JADX WARN: Removed duplicated region for block: B:20:0x0054  */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r8) {
                /*
                    r7 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r1 = r7.b
                    r2 = 3
                    r3 = 2
                    r4 = 1
                    if (r1 == 0) goto L29
                    if (r1 == r4) goto L25
                    if (r1 == r3) goto L21
                    if (r1 != r2) goto L19
                    java.lang.Object r0 = r7.a
                    io.bidmachine.rendering.internal.detector.engagedclick.b r0 = (io.bidmachine.rendering.internal.detector.engagedclick.b) r0
                    kotlin.ResultKt.throwOnFailure(r8)
                    goto L68
                L19:
                    java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r8.<init>(r0)
                    throw r8
                L21:
                    kotlin.ResultKt.throwOnFailure(r8)
                    goto L50
                L25:
                    kotlin.ResultKt.throwOnFailure(r8)
                    goto L3f
                L29:
                    kotlin.ResultKt.throwOnFailure(r8)
                    kotlin.time.Duration$Companion r8 = kotlin.time.Duration.Companion
                    kotlin.time.DurationUnit r8 = kotlin.time.DurationUnit.MILLISECONDS
                    r5 = 50
                    long r5 = kotlin.time.DurationKt.toDuration(r5, r8)
                    r7.b = r4
                    java.lang.Object r8 = kotlinx.coroutines.DelayKt.m2937delayVtjQ1oo(r5, r7)
                    if (r8 != r0) goto L3f
                    goto L66
                L3f:
                    io.bidmachine.rendering.internal.detector.engagedclick.b r8 = r7.c
                    io.bidmachine.rendering.internal.detector.engagedclick.c r8 = io.bidmachine.rendering.internal.detector.engagedclick.b.c(r8)
                    android.view.View r1 = r7.d
                    r7.b = r3
                    java.lang.Object r8 = r8.a(r1, r7)
                    if (r8 != r0) goto L50
                    goto L66
                L50:
                    android.graphics.Bitmap r8 = (android.graphics.Bitmap) r8
                    if (r8 == 0) goto L71
                    io.bidmachine.rendering.internal.detector.engagedclick.b r1 = r7.c
                    android.graphics.Bitmap r3 = r7.e
                    io.bidmachine.rendering.internal.detector.engagedclick.c r4 = io.bidmachine.rendering.internal.detector.engagedclick.b.c(r1)
                    r7.a = r1
                    r7.b = r2
                    java.lang.Object r8 = r4.a(r3, r8, r7)
                    if (r8 != r0) goto L67
                L66:
                    return r0
                L67:
                    r0 = r1
                L68:
                    java.lang.Number r8 = (java.lang.Number) r8
                    double r1 = r8.doubleValue()
                    io.bidmachine.rendering.internal.detector.engagedclick.b.b(r0, r1)
                L71:
                    kotlin.Unit r8 = kotlin.Unit.INSTANCE
                    return r8
                */
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.detector.engagedclick.b.C1186b.a.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1186b(long j, b bVar, View view, Continuation continuation) {
            super(2, continuation);
            this.h = j;
            this.i = bVar;
            this.j = view;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C1186b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C1186b c1186b = new C1186b(this.h, this.i, this.j, continuation);
            c1186b.g = obj;
            return c1186b;
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x00af, code lost:
        
            if (r7 == r1) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0140, code lost:
        
            if (r9 == r1) goto L42;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0055 A[PHI: r2 r4 r7 r9 r11 r12 r13
          0x0055: PHI (r2v9 int) = (r2v10 int), (r2v21 int) binds: [B:34:0x0118, B:12:0x0040] A[DONT_GENERATE, DONT_INLINE]
          0x0055: PHI (r4v1 int) = (r4v3 int), (r4v0 int) binds: [B:34:0x0118, B:12:0x0040] A[DONT_GENERATE, DONT_INLINE]
          0x0055: PHI (r7v6 int) = (r7v7 int), (r7v13 int) binds: [B:34:0x0118, B:12:0x0040] A[DONT_GENERATE, DONT_INLINE]
          0x0055: PHI (r9v1 java.lang.Object) = (r9v5 java.lang.Object), (r9v13 java.lang.Object) binds: [B:34:0x0118, B:12:0x0040] A[DONT_GENERATE, DONT_INLINE]
          0x0055: PHI (r11v8 android.view.View) = (r11v11 android.view.View), (r11v18 android.view.View) binds: [B:34:0x0118, B:12:0x0040] A[DONT_GENERATE, DONT_INLINE]
          0x0055: PHI (r12v6 io.bidmachine.rendering.internal.detector.engagedclick.b) = 
          (r12v8 io.bidmachine.rendering.internal.detector.engagedclick.b)
          (r12v16 io.bidmachine.rendering.internal.detector.engagedclick.b)
         binds: [B:34:0x0118, B:12:0x0040] A[DONT_GENERATE, DONT_INLINE]
          0x0055: PHI (r13v4 kotlin.jvm.internal.Ref$ObjectRef) = (r13v6 kotlin.jvm.internal.Ref$ObjectRef), (r13v14 kotlin.jvm.internal.Ref$ObjectRef) binds: [B:34:0x0118, B:12:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00e5  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0120  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0126  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0197  */
        /* JADX WARN: Type inference failed for: r7v3, types: [T, android.graphics.Bitmap] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0120 -> B:39:0x0121). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x0140 -> B:43:0x0143). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r20) {
            /*
                Method dump skipped, instruction units count: 410
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.detector.engagedclick.b.C1186b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final class c extends ContinuationImpl {
        public Object a;
        public Object b;
        public Object c;
        public Object d;
        public Object e;
        public Object f;
        public long g;
        public double h;
        public double i;
        public int j;
        public int k;
        public /* synthetic */ Object l;
        public int n;

        public c(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.l = obj;
            this.n |= Integer.MIN_VALUE;
            return b.this.a(null, null, 0L, this);
        }
    }

    public static final class e extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ EngagedClickAction c;
        public final /* synthetic */ long d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(EngagedClickAction engagedClickAction, long j, Continuation continuation) {
            super(2, continuation);
            this.c = engagedClickAction;
            this.d = j;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return b.this.new e(this.c, this.d, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Duration.Companion companion = Duration.Companion;
                long duration = DurationKt.toDuration(b.this.c, DurationUnit.MILLISECONDS);
                this.a = 1;
                if (DelayKt.m2937delayVtjQ1oo(duration, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            b bVar = b.this;
            bVar.a(new EngagedClickReport(this.c, bVar.d().getCreativeProfile(), b.this.d().getProfileSource(), null, null, SystemClock.elapsedRealtime() - this.d));
            t.b("EngagedClick", "endInteractionWindow: " + this.c.getValue(), new Object[0]);
            return Unit.INSTANCE;
        }
    }

    public static final class f extends SuspendLambda implements Function2 {
        public int a;
        public final /* synthetic */ WebView c;
        public final /* synthetic */ VisualConfig d;
        public final /* synthetic */ long e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(WebView webView, VisualConfig visualConfig, long j, Continuation continuation) {
            super(2, continuation);
            this.c = webView;
            this.d = visualConfig;
            this.e = j;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((f) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return b.this.new f(this.c, this.d, this.e, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                b bVar = b.this;
                WebView webView = this.c;
                VisualConfig visualConfig = this.d;
                long j = this.e;
                this.a = 1;
                if (bVar.a(webView, visualConfig, j, this) == coroutine_suspended) {
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

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public b(EngagedClickParams engagedClickParams) {
        this(engagedClickParams, new io.bidmachine.rendering.internal.detector.engagedclick.a(engagedClickParams));
        Intrinsics.checkNotNullParameter(engagedClickParams, "engagedClickParams");
    }

    public final void f() {
        WebView webViewE = e();
        if (webViewE == null) {
            return;
        }
        Job job = this.l;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        this.l = null;
        this.j = 0.0d;
        this.k = 0.0d;
        this.l = a(webViewE, 50L);
    }

    public final void g() {
        a();
        a(EngagedClickAction.COLLAPSE);
    }

    public final void h() {
        a();
        a(EngagedClickAction.EXPAND);
    }

    public final void i() {
        WebView webViewE;
        VisualConfig visualConfig = this.a.getVisualConfig();
        if (visualConfig == null) {
            return;
        }
        t.b("EngagedClick", "Creative clicked", new Object[0]);
        if (p.contains(this.h.getCreativeProfile())) {
            if (this.n) {
                t.b("EngagedClick", "Visual path already reported in this phase, input ignored", new Object[0]);
                return;
            }
            Job job = this.m;
            if ((job == null || !job.isActive()) && (webViewE = e()) != null) {
                this.m = BuildersKt__Builders_commonKt.launch$default(this.e, null, null, new f(webViewE, visualConfig, SystemClock.elapsedRealtime(), null), 3, null);
            }
        }
    }

    public final void j() {
        if (p.contains(this.h.getCreativeProfile())) {
            t.b("EngagedClick", "visualDetect start() PROFILE IS: " + this.h.getCreativeProfile(), new Object[0]);
            k();
        }
    }

    public final void k() {
        WebView webViewE;
        if (this.a.getVisualConfig() == null || (webViewE = e()) == null || !this.f.compareAndSet(false, true)) {
            return;
        }
        t.b("EngagedClick", "startVisualDetect profile: " + this.h.getCreativeProfile(), new Object[0]);
        this.j = 0.0d;
        this.k = 0.0d;
        this.l = a(webViewE, 300L);
    }

    public final void c() {
        CoroutineScopeKt.cancel$default(this.e, null, 1, null);
        this.l = null;
        this.m = null;
        this.d.clear();
        WeakReference weakReference = this.i;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.i = null;
    }

    public final CreativeProfileInfo d() {
        return this.h;
    }

    public final WebView e() {
        WeakReference weakReference = this.i;
        if (weakReference != null) {
            return (WebView) weakReference.get();
        }
        return null;
    }

    public b(EngagedClickParams engagedClickParams, io.bidmachine.rendering.internal.detector.engagedclick.c visualDiffEngine) {
        Intrinsics.checkNotNullParameter(engagedClickParams, "engagedClickParams");
        Intrinsics.checkNotNullParameter(visualDiffEngine, "visualDiffEngine");
        this.a = engagedClickParams;
        this.b = visualDiffEngine;
        long interactionWindowMs = engagedClickParams.getInteractionWindowMs();
        Long lValueOf = interactionWindowMs <= 0 ? null : Long.valueOf(interactionWindowMs);
        this.c = lValueOf != null ? lValueOf.longValue() : 2500L;
        this.d = new ArrayList();
        this.e = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(Dispatchers.getMain().getImmediate()));
        this.f = new AtomicBoolean(false);
        this.g = new AtomicBoolean(false);
        this.h = engagedClickParams.getCreativeProfileInfo();
    }

    public final void b() {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            Job.DefaultImpls.cancel$default((Job) it.next(), null, 1, null);
        }
        this.d.clear();
    }

    public final void a(CreativeProfileInfo creativeProfileInfo) {
        Intrinsics.checkNotNullParameter(creativeProfileInfo, "<set-?>");
        this.h = creativeProfileInfo;
    }

    public final void a(EngagedClickAction engagedClickAction) {
        Intrinsics.checkNotNullParameter(engagedClickAction, "engagedClickAction");
        t.b("EngagedClick", "scheduleSemanticReport: " + engagedClickAction.getValue(), new Object[0]);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        CollectionsKt__MutableCollectionsKt.removeAll(this.d, (Function1) new PropertyReference1Impl() { // from class: io.bidmachine.rendering.internal.detector.engagedclick.b.d
            @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
            public Object get(Object obj) {
                return Boolean.valueOf(((Job) obj).isCompleted());
            }
        });
        this.d.add(BuildersKt__Builders_commonKt.launch$default(this.e, null, null, new e(engagedClickAction, jElapsedRealtime, null), 3, null));
    }

    public final void a(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        t.b("EngagedClick", "External navigation detected: " + url, new Object[0]);
        a();
        b();
    }

    public final Job a(View view, long j) {
        return BuildersKt__Builders_commonKt.launch$default(this.e, null, null, new C1186b(j, this, view, null), 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0349  */
    /* JADX WARN: Type inference failed for: r0v21, types: [T] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r1v10, types: [T, android.graphics.Bitmap, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v53 */
    /* JADX WARN: Type inference failed for: r1v54 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v23, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r9v5, types: [io.bidmachine.rendering.internal.detector.engagedclick.c] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x02ad -> B:68:0x02af). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x02e0 -> B:73:0x02e2). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(android.view.View r29, io.bidmachine.rendering.model.engagedclick.VisualConfig r30, long r31, kotlin.coroutines.Continuation r33) {
        /*
            Method dump skipped, instruction units count: 924
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.detector.engagedclick.b.a(android.view.View, io.bidmachine.rendering.model.engagedclick.VisualConfig, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a(EngagedClickReport engagedClickReport) {
        t.b("EngagedClick", "reportEngagedClick: " + engagedClickReport, new Object[0]);
        EngagedClickTrackingObject engagedClickTrackingObject = this.a.getEngagedClickTrackingObject();
        if (engagedClickTrackingObject != null) {
            engagedClickTrackingObject.reportEngagedClick(engagedClickReport);
        }
    }

    public final void a() {
        Job job = this.m;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
        }
        this.m = null;
    }
}
