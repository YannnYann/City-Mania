package io.bidmachine.rendering.internal.controller;

import android.content.Context;
import android.view.ViewGroup;
import io.bidmachine.iab.utils.ClickAreaFactory;
import io.bidmachine.rendering.Rendering;
import io.bidmachine.rendering.Repository;
import io.bidmachine.rendering.internal.C4240c;
import io.bidmachine.rendering.internal.InterfaceC4239b;
import io.bidmachine.rendering.internal.InterfaceC4253i;
import io.bidmachine.rendering.model.AdElementParams;
import io.bidmachine.rendering.model.AdPhaseParams;
import io.bidmachine.rendering.model.BrokenCreativeDetectorParams;
import io.bidmachine.rendering.model.BrokenCreativeEvent;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.ElementLayoutParams;
import io.bidmachine.rendering.model.EventType;
import io.bidmachine.rendering.model.MethodParams;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.model.animation.AnimationParams;
import io.bidmachine.rendering.utils.NetworkRequest;
import io.bidmachine.rendering.utils.NetworkRequestBuilder;
import io.bidmachine.rendering.utils.UiUtils;
import io.bidmachine.rendering.utils.UrlHandler;
import io.bidmachine.rendering.utils.VisibilityChanger;
import io.bidmachine.util.Error;
import io.bidmachine.util.ErrorKt;
import io.bidmachine.util.ProcessUrlResult;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.Tag;
import io.bidmachine.util.UtilsKt;
import io.bidmachine.util.cache.MediaFileCacheManager;
import io.bidmachine.util.taskmanager.TaskManager;
import io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
public final class f implements e {
    public static final C4244d x = new C4244d(null);
    public final Object a;
    public final Tag b;
    public final io.bidmachine.rendering.internal.state.d c;
    public final g d;
    public final Context e;
    public final Lazy f;
    public final io.bidmachine.rendering.internal.event.e g;
    public final io.bidmachine.rendering.internal.detector.brokencreative.b h;
    public final Lazy i;
    public final Lazy j;
    public final TaskManager k;
    public final Map l;
    public final Set m;
    public final List n;
    public final List o;
    public final List p;
    public final Lazy q;
    public final AtomicBoolean r;
    public final AtomicBoolean s;
    public final AtomicBoolean t;
    public final AtomicBoolean u;
    public final Lazy v;
    public io.bidmachine.rendering.internal.controller.h w;

    public static final class A implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public A(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((io.bidmachine.rendering.internal.C) this.a).h();
        }
    }

    public static final class B implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public B(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((io.bidmachine.rendering.internal.C) this.a).f();
        }
    }

    public static final class C implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public C(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((io.bidmachine.rendering.internal.C) this.a).f();
        }
    }

    public static final class D implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public D(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((io.bidmachine.rendering.internal.C) this.a).f();
        }
    }

    public static final class E implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public E(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((io.bidmachine.rendering.internal.C) this.a).f();
        }
    }

    public static final class F extends Lambda implements Function0 {

        public static final class a extends Lambda implements Function0 {
            public static final a a = new a();

            public a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final MediaFileCacheManager invoke() {
                Function0<MediaFileCacheManager> mediaFileCacheManagerProvider = Rendering.getMediaFileCacheManagerProvider();
                if (mediaFileCacheManagerProvider != null) {
                    return mediaFileCacheManagerProvider.invoke();
                }
                return null;
            }
        }

        public F() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.rendering.internal.repository.a invoke() {
            return new io.bidmachine.rendering.internal.repository.a(a.a, f.this.o(), f.this.n());
        }
    }

    public static final class G extends Lambda implements Function0 {
        public final /* synthetic */ AdPhaseParams a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public G(AdPhaseParams adPhaseParams) {
            super(0);
            this.a = adPhaseParams;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.rendering.internal.groups.a invoke() {
            return new io.bidmachine.rendering.internal.groups.a(this.a.getStateGroups());
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$c, reason: case insensitive filesystem */
    public final class C4243c implements io.bidmachine.rendering.internal.detector.brokencreative.b {
        public C4243c() {
        }

        @Override // io.bidmachine.rendering.internal.detector.brokencreative.b
        public void a(BrokenCreativeEvent brokenCreativeEvent) {
            Intrinsics.checkNotNullParameter(brokenCreativeEvent, "brokenCreativeEvent");
            f.this.a(brokenCreativeEvent);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$d, reason: case insensitive filesystem */
    public static final class C4244d {
        public /* synthetic */ C4244d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public C4244d() {
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$e, reason: case insensitive filesystem */
    public final class C4245e extends AbstractC4242b {
        public C4245e() {
            super();
        }

        @Override // io.bidmachine.rendering.internal.controller.f.AbstractC4242b, io.bidmachine.rendering.internal.adform.c
        public void a(io.bidmachine.rendering.internal.adform.a adForm, Error error) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            Intrinsics.checkNotNullParameter(error, "error");
            super.a(adForm, error);
            f fVar = f.this;
            fVar.a((InterfaceC4239b) adForm, fVar.m());
        }

        @Override // io.bidmachine.rendering.internal.controller.f.AbstractC4242b, io.bidmachine.rendering.internal.adform.c
        public void c(io.bidmachine.rendering.internal.adform.a adForm, Error error) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            Intrinsics.checkNotNullParameter(error, "error");
            super.c(adForm, error);
            f fVar = f.this;
            fVar.a((InterfaceC4239b) adForm, fVar.m());
        }

        @Override // io.bidmachine.rendering.internal.controller.f.AbstractC4242b
        public void f(io.bidmachine.rendering.internal.adform.a adForm) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            if (!adForm.L()) {
                a(adForm, new Error("Failed to setup ad element (" + adForm + ')'));
            }
            if (f.this.l.isEmpty()) {
                f.this.z();
            }
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$g, reason: case insensitive filesystem */
    public static final class C4246g extends io.bidmachine.rendering.internal.G {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4246g(io.bidmachine.rendering.internal.event.a eventCallback) {
            super(eventCallback);
            Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        }

        @Override // io.bidmachine.rendering.internal.G, io.bidmachine.rendering.internal.w
        public void a(Integer num) {
            q().a(num);
        }

        @Override // io.bidmachine.rendering.internal.G, io.bidmachine.rendering.internal.w
        public void b(Integer num) {
            q().b(num);
        }

        @Override // io.bidmachine.rendering.internal.G
        public String r() {
            return q().g();
        }
    }

    public static final class h extends Lambda implements Function0 {
        public h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.rendering.internal.adform.b invoke() {
            Context applicationContext = f.this.e;
            Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
            return new io.bidmachine.rendering.internal.adform.b(applicationContext, f.this.s());
        }
    }

    public static final class i extends Lambda implements Function0 {
        public final /* synthetic */ AdPhaseParams b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(AdPhaseParams adPhaseParams) {
            super(0);
            this.b = adPhaseParams;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C4240c invoke() {
            Object obj = f.this.a;
            Context applicationContext = f.this.e;
            Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
            return new C4240c(obj, applicationContext, f.this.s(), this.b);
        }
    }

    public /* synthetic */ class j extends FunctionReferenceImpl implements Function0 {
        public j(Object obj) {
            super(0, obj, io.bidmachine.rendering.internal.event.a.class, "onLayoutChanged", "onLayoutChanged()V", 0);
        }

        public final void a() {
            ((io.bidmachine.rendering.internal.event.a) this.receiver).h();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class k implements Comparator {
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((AdElementParams) obj).getElementLayoutParams().getZIndex()), Integer.valueOf(((AdElementParams) obj2).getElementLayoutParams().getZIndex()));
        }
    }

    public static final class l extends Lambda implements Function0 {
        public l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C4246g invoke() {
            return new C4246g(f.this.a("system"));
        }
    }

    public static final class m extends SuspendLambda implements Function2 {
        public int a;

        public m(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((m) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return f.this.new m(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (f.this.v()) {
                f.this.w();
                f.this.x();
            }
            return Unit.INSTANCE;
        }
    }

    public /* synthetic */ class n extends FunctionReferenceImpl implements Function0 {
        public n(Object obj) {
            super(0, obj, C4241a.class, "<init>", "<init>(Lio/bidmachine/rendering/internal/controller/AdPhaseControllerImpl;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C4241a invoke() {
            return ((f) this.receiver).new C4241a();
        }
    }

    public /* synthetic */ class o extends FunctionReferenceImpl implements Function0 {
        public o(Object obj) {
            super(0, obj, C4245e.class, "<init>", "<init>(Lio/bidmachine/rendering/internal/controller/AdPhaseControllerImpl;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C4245e invoke() {
            return ((f) this.receiver).new C4245e();
        }
    }

    public static final class p implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public p(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((InterfaceC4239b) this.a).p();
        }
    }

    public static final class q implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public q(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((InterfaceC4239b) this.a).p();
        }
    }

    public static final class r implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public r(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((InterfaceC4239b) this.a).p();
        }
    }

    public static final class s implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public s(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((InterfaceC4239b) this.a).p();
        }
    }

    public static final class t implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public t(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((InterfaceC4239b) this.a).i();
        }
    }

    public static final class u implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public u(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((InterfaceC4239b) this.a).i();
        }
    }

    public static final class v implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public v(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((InterfaceC4239b) this.a).i();
        }
    }

    public static final class w implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public w(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((InterfaceC4239b) this.a).i();
        }
    }

    public static final class x implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public x(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((io.bidmachine.rendering.internal.C) this.a).h();
        }
    }

    public static final class y implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public y(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((io.bidmachine.rendering.internal.C) this.a).h();
        }
    }

    public static final class z implements io.bidmachine.rendering.internal.s {
        public final /* synthetic */ Object a;

        public z(Object obj) {
            this.a = obj;
        }

        @Override // io.bidmachine.util.SafeRunnable
        public final void onRun() {
            ((io.bidmachine.rendering.internal.C) this.a).h();
        }
    }

    public f(Context context, AdPhaseParams adPhaseParams, Object assetsHolder, Tag tag, io.bidmachine.rendering.internal.state.d adState, g adPhaseControllerListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adPhaseParams, "adPhaseParams");
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(adState, "adState");
        Intrinsics.checkNotNullParameter(adPhaseControllerListener, "adPhaseControllerListener");
        this.a = assetsHolder;
        this.b = tag;
        this.c = adState;
        this.d = adPhaseControllerListener;
        this.e = context.getApplicationContext();
        this.f = LazyKt__LazyJVMKt.lazy(new F());
        this.g = new C1177f(this, context);
        this.h = new C4243c();
        this.i = LazyKt__LazyJVMKt.lazy(new G(adPhaseParams));
        this.j = LazyKt__LazyJVMKt.lazy(new l());
        this.k = new CoroutineTaskManager(o().getCoroutineContext().plus(n().c()));
        this.l = new ConcurrentHashMap();
        this.m = new CopyOnWriteArraySet();
        this.n = new CopyOnWriteArrayList();
        this.o = new CopyOnWriteArrayList();
        this.p = new CopyOnWriteArrayList();
        this.q = LazyKt__LazyJVMKt.lazy(new h());
        this.r = new AtomicBoolean(false);
        this.s = new AtomicBoolean(false);
        this.t = new AtomicBoolean(false);
        this.u = new AtomicBoolean(false);
        this.v = LazyKt__LazyJVMKt.lazy(new i(adPhaseParams));
    }

    public final void A() {
        if (this.u.get() && this.r.get() && this.t.compareAndSet(true, false)) {
            p().q().e();
        }
    }

    public final void B() {
        if (this.r.compareAndSet(false, true)) {
            e(this.n);
            e(this.o);
            A();
        }
    }

    @Override // io.bidmachine.rendering.internal.controller.e
    public void destroy() {
        io.bidmachine.rendering.internal.t.b(this.b, "AdPhase - destroy", new Object[0]);
        i();
        this.m.clear();
        a(this.n);
        a(this.o);
        j();
        b(this.p);
        a(this, p(), null, 1, null);
        a((io.bidmachine.rendering.internal.controller.h) null);
        this.c.destroy();
    }

    public final io.bidmachine.rendering.internal.adform.b k() {
        return (io.bidmachine.rendering.internal.adform.b) this.q.getValue();
    }

    public final List l() {
        return this.n;
    }

    public final List m() {
        return this.o;
    }

    public final io.bidmachine.rendering.internal.j n() {
        return this.c.u();
    }

    public final CoroutineScope o() {
        return this.c.v();
    }

    public final io.bidmachine.rendering.internal.G p() {
        return (io.bidmachine.rendering.internal.G) this.j.getValue();
    }

    public final List q() {
        return this.p;
    }

    public io.bidmachine.rendering.internal.controller.h r() {
        return this.w;
    }

    public final Repository s() {
        return (Repository) this.f.getValue();
    }

    public final io.bidmachine.rendering.internal.groups.b t() {
        return (io.bidmachine.rendering.internal.groups.b) this.i.getValue();
    }

    public String toString() {
        return this.b.toString();
    }

    public final void u() {
        if (this.r.compareAndSet(true, false)) {
            d(this.n);
            d(this.o);
        }
    }

    public final boolean v() {
        List<AdElementParams> adsList = g().c().getAdsList();
        if (adsList.isEmpty()) {
            a(new Error("AdPhase does not contain any ads part"));
            return false;
        }
        if (c()) {
            z();
            return false;
        }
        if (!this.c.a()) {
            return false;
        }
        this.n.addAll(a(adsList, new n(this)));
        if (!this.n.isEmpty()) {
            return true;
        }
        a(new Error("No supported ads found for the given parameters"));
        return false;
    }

    public final void w() {
        this.o.addAll(a(g().c().getControlsList(), new o(this)));
    }

    public final void x() {
        List<MethodParams> methodParamsList = g().c().getMethodParamsList();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(methodParamsList, 10));
        for (MethodParams methodParams : methodParamsList) {
            arrayList.add(new io.bidmachine.rendering.internal.v(methodParams, a(methodParams.getName())));
        }
        this.p.addAll(arrayList);
    }

    public final void y() {
        if (this.c.h()) {
            this.d.a(this);
        }
    }

    public final void z() {
        if (this.c.a(true)) {
            this.d.b(this);
        }
    }

    @Override // io.bidmachine.rendering.internal.controller.e
    public void b() {
        io.bidmachine.rendering.internal.t.b(this.b, "AdPhase - performShow", new Object[0]);
        Iterator it = l().iterator();
        while (it.hasNext()) {
            Object objCastSafely = UtilsKt.castSafely(io.bidmachine.rendering.internal.C.class, (InterfaceC4239b) it.next());
            if (objCastSafely != null) {
                UiUtils.onUiThread(new B(objCastSafely));
            }
        }
        Iterator it2 = m().iterator();
        while (it2.hasNext()) {
            Object objCastSafely2 = UtilsKt.castSafely(io.bidmachine.rendering.internal.C.class, (InterfaceC4239b) it2.next());
            if (objCastSafely2 != null) {
                UiUtils.onUiThread(new C(objCastSafely2));
            }
        }
        Iterator it3 = q().iterator();
        while (it3.hasNext()) {
            Object objCastSafely3 = UtilsKt.castSafely(io.bidmachine.rendering.internal.C.class, (io.bidmachine.rendering.internal.v) it3.next());
            if (objCastSafely3 != null) {
                UiUtils.onUiThread(new D(objCastSafely3));
            }
        }
        Object objCastSafely4 = UtilsKt.castSafely(io.bidmachine.rendering.internal.C.class, p());
        if (objCastSafely4 != null) {
            UiUtils.onUiThread(new E(objCastSafely4));
        }
        if (this.c.j()) {
            B();
        }
        this.c.s();
    }

    @Override // io.bidmachine.rendering.internal.controller.e
    public boolean c() {
        return this.c.c();
    }

    @Override // io.bidmachine.rendering.internal.controller.e
    public void d() {
        io.bidmachine.rendering.internal.t.b(this.b, "AdPhase - onCollapsed", new Object[0]);
        p().q().j();
        Iterator it = l().iterator();
        while (it.hasNext()) {
            Object objCastSafely = UtilsKt.castSafely(InterfaceC4239b.class, (InterfaceC4239b) it.next());
            if (objCastSafely != null) {
                UiUtils.onUiThread(new p(objCastSafely));
            }
        }
        Iterator it2 = m().iterator();
        while (it2.hasNext()) {
            Object objCastSafely2 = UtilsKt.castSafely(InterfaceC4239b.class, (InterfaceC4239b) it2.next());
            if (objCastSafely2 != null) {
                UiUtils.onUiThread(new q(objCastSafely2));
            }
        }
        Iterator it3 = q().iterator();
        while (it3.hasNext()) {
            Object objCastSafely3 = UtilsKt.castSafely(InterfaceC4239b.class, (io.bidmachine.rendering.internal.v) it3.next());
            if (objCastSafely3 != null) {
                UiUtils.onUiThread(new r(objCastSafely3));
            }
        }
        Object objCastSafely4 = UtilsKt.castSafely(InterfaceC4239b.class, p());
        if (objCastSafely4 != null) {
            UiUtils.onUiThread(new s(objCastSafely4));
        }
    }

    @Override // io.bidmachine.rendering.internal.controller.e
    public void e() {
        io.bidmachine.rendering.internal.t.b(this.b, "AdPhase - processAdCommitVisible", new Object[0]);
        this.u.set(true);
        A();
    }

    @Override // io.bidmachine.rendering.internal.controller.e
    public void f() {
        io.bidmachine.rendering.internal.t.b(this.b, "AdPhase - onExpanded", new Object[0]);
        p().q().f();
        Iterator it = l().iterator();
        while (it.hasNext()) {
            Object objCastSafely = UtilsKt.castSafely(InterfaceC4239b.class, (InterfaceC4239b) it.next());
            if (objCastSafely != null) {
                UiUtils.onUiThread(new t(objCastSafely));
            }
        }
        Iterator it2 = m().iterator();
        while (it2.hasNext()) {
            Object objCastSafely2 = UtilsKt.castSafely(InterfaceC4239b.class, (InterfaceC4239b) it2.next());
            if (objCastSafely2 != null) {
                UiUtils.onUiThread(new u(objCastSafely2));
            }
        }
        Iterator it3 = q().iterator();
        while (it3.hasNext()) {
            Object objCastSafely3 = UtilsKt.castSafely(InterfaceC4239b.class, (io.bidmachine.rendering.internal.v) it3.next());
            if (objCastSafely3 != null) {
                UiUtils.onUiThread(new v(objCastSafely3));
            }
        }
        Object objCastSafely4 = UtilsKt.castSafely(InterfaceC4239b.class, p());
        if (objCastSafely4 != null) {
            UiUtils.onUiThread(new w(objCastSafely4));
        }
        io.bidmachine.rendering.internal.controller.h hVarR = r();
        if (hVarR != null) {
            hVarR.e();
        }
    }

    @Override // io.bidmachine.rendering.internal.controller.e
    public C4240c g() {
        return (C4240c) this.v.getValue();
    }

    @Override // io.bidmachine.rendering.internal.controller.e
    public void h() {
        if (this.s.compareAndSet(false, true)) {
            io.bidmachine.rendering.internal.t.b(this.b, "AdPhase - processAdShown", new Object[0]);
            c(this.n);
            c(this.o);
        }
    }

    public final void i() {
        io.bidmachine.rendering.internal.t.b(this.b, "Cancel loading AdElements", new Object[0]);
        Iterator it = this.l.entrySet().iterator();
        while (it.hasNext()) {
            this.k.cancel((Runnable) ((Map.Entry) it.next()).getValue());
        }
        this.l.clear();
    }

    public final void j() {
        io.bidmachine.rendering.internal.t.b(this.b, "Destroy AdPhase", new Object[0]);
        final C4240c c4240cG = g();
        UiUtils.onUiThread(new io.bidmachine.rendering.internal.s() { // from class: io.bidmachine.rendering.internal.controller.f$$ExternalSyntheticLambda2
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                c4240cG.b();
            }
        });
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$b, reason: case insensitive filesystem */
    public abstract class AbstractC4242b implements io.bidmachine.rendering.internal.adform.c {
        public final AtomicBoolean a = new AtomicBoolean(false);

        public AbstractC4242b() {
        }

        @Override // io.bidmachine.rendering.internal.adform.c
        public void a(io.bidmachine.rendering.internal.adform.a adForm, Error error) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            Intrinsics.checkNotNullParameter(error, "error");
            io.bidmachine.rendering.internal.t.a(f.this.b, "AdElement (" + adForm + ") - onAdFormFailToLoad - " + error, new Object[0]);
            f.this.l.remove(adForm);
            f.this.a(adForm, error);
            g(adForm);
        }

        @Override // io.bidmachine.rendering.internal.adform.c
        public final void b(io.bidmachine.rendering.internal.adform.a adForm) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            if (this.a.compareAndSet(false, true)) {
                io.bidmachine.rendering.internal.t.b(f.this.b, "AdElement (" + adForm + ") - onAdFormLoaded", new Object[0]);
                f.this.l.remove(adForm);
                f(adForm);
            }
        }

        @Override // io.bidmachine.rendering.internal.adform.c
        public void c(io.bidmachine.rendering.internal.adform.a adForm, Error error) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            Intrinsics.checkNotNullParameter(error, "error");
            io.bidmachine.rendering.internal.t.a(f.this.b, "AdElement (" + adForm + ") - onAdFormExpired - " + error, new Object[0]);
            g(adForm);
        }

        @Override // io.bidmachine.rendering.internal.adform.c
        public void d(io.bidmachine.rendering.internal.adform.a adForm) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            io.bidmachine.rendering.internal.t.b(f.this.b, "AdElement (" + adForm + ") - onAdFormExpandLoadFailed", new Object[0]);
            io.bidmachine.rendering.internal.controller.h hVarR = f.this.r();
            if (hVarR != null) {
                hVarR.e();
            }
        }

        @Override // io.bidmachine.rendering.internal.adform.c
        public void e(io.bidmachine.rendering.internal.adform.a adForm) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            io.bidmachine.rendering.internal.t.b(f.this.b, "AdElement (" + adForm + ") - onAdFormCommitVisible", new Object[0]);
            g(adForm);
        }

        public abstract void f(io.bidmachine.rendering.internal.adform.a aVar);

        public final void g(io.bidmachine.rendering.internal.adform.a adForm) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            f.this.m.remove(adForm);
            if (f.this.m.isEmpty()) {
                f.this.y();
            }
        }

        @Override // io.bidmachine.rendering.internal.adform.c
        public void c(io.bidmachine.rendering.internal.adform.a adForm) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            io.bidmachine.rendering.internal.t.b(f.this.b, "AdElement (" + adForm + ") - onAdFormExpandLoadStart", new Object[0]);
            io.bidmachine.rendering.internal.controller.h hVarR = f.this.r();
            if (hVarR != null) {
                hVarR.a();
            }
        }

        @Override // io.bidmachine.rendering.internal.adform.c
        public void a(io.bidmachine.rendering.internal.adform.a adForm) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            io.bidmachine.rendering.internal.t.b(f.this.b, "AdElement (" + adForm + ") - onAdFormShown", new Object[0]);
        }

        @Override // io.bidmachine.rendering.internal.adform.c
        public void b(io.bidmachine.rendering.internal.adform.a adForm, Error error) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            Intrinsics.checkNotNullParameter(error, "error");
            io.bidmachine.rendering.internal.t.a(f.this.b, "AdElement (" + adForm + ") - onAdFormFailToShow - " + error, new Object[0]);
        }
    }

    public final Object c(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (StringsKt__StringsKt.isBlank(name)) {
            return null;
        }
        Object objB = b(name);
        if (objB == null) {
            Iterator it = this.p.iterator();
            while (true) {
                if (!it.hasNext()) {
                    objB = null;
                    break;
                }
                Object next = it.next();
                if (StringsKt__StringsJVMKt.equals(((io.bidmachine.rendering.internal.v) next).r(), name, true)) {
                    objB = next;
                    break;
                }
            }
        }
        if (objB != null) {
            return objB;
        }
        if (Intrinsics.areEqual(p().r(), name)) {
            return p();
        }
        return null;
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f, reason: collision with other inner class name */
    public final class C1177f implements io.bidmachine.rendering.internal.event.e {
        public final Context a;
        public final /* synthetic */ f b;

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$a */
        public static final class a extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ f c;
            public final /* synthetic */ String d;
            public final /* synthetic */ String e;
            public final /* synthetic */ Class f;
            public final /* synthetic */ boolean g;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$a$a, reason: collision with other inner class name */
            public static final class C1178a implements io.bidmachine.rendering.internal.s {
                public final /* synthetic */ CoroutineScope a;
                public final /* synthetic */ Object b;
                public final /* synthetic */ boolean c;

                public C1178a(Object obj, CoroutineScope coroutineScope, boolean z) {
                    this.b = obj;
                    this.c = z;
                    this.a = coroutineScope;
                }

                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    ((io.bidmachine.rendering.internal.G) this.b).a(this.c);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(f fVar, String str, String str2, Class cls, Continuation continuation, boolean z) {
                super(2, continuation);
                this.c = fVar;
                this.d = str;
                this.e = str2;
                this.f = cls;
                this.g = z;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                a aVar = new a(this.c, this.d, this.e, this.f, continuation, this.g);
                aVar.b = obj;
                return aVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                Object objC = this.c.c(this.d);
                if (objC == null) {
                    this.c.a(this.e, this.d);
                    return Unit.INSTANCE;
                }
                Object objCastSafely = UtilsKt.castSafely(this.f, objC);
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new C1178a(objCastSafely, coroutineScope, this.g));
                    return Unit.INSTANCE;
                }
                f fVar = this.c;
                String str = this.e;
                String str2 = this.d;
                String simpleName = this.f.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                fVar.a(str, str2, simpleName);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$b */
        public static final class b implements io.bidmachine.rendering.internal.s {
            public final /* synthetic */ Object a;

            public b(Object obj) {
                this.a = obj;
            }

            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                ((InterfaceC4253i) this.a).c();
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$c */
        public static final class c implements io.bidmachine.rendering.internal.s {
            public final /* synthetic */ Object a;

            public c(Object obj) {
                this.a = obj;
            }

            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                ((InterfaceC4253i) this.a).c();
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$d */
        public static final class d implements io.bidmachine.rendering.internal.s {
            public final /* synthetic */ Object a;

            public d(Object obj) {
                this.a = obj;
            }

            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                ((InterfaceC4253i) this.a).c();
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$e */
        public static final class e implements io.bidmachine.rendering.internal.s {
            public final /* synthetic */ Object a;

            public e(Object obj) {
                this.a = obj;
            }

            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                ((InterfaceC4253i) this.a).c();
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$f, reason: collision with other inner class name */
        public static final class C1179f extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ f c;
            public final /* synthetic */ String d;
            public final /* synthetic */ String e;
            public final /* synthetic */ Function0 f;
            public final /* synthetic */ Class g;
            public final /* synthetic */ AnimationParams h;
            public final /* synthetic */ Function0 i;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$f$a */
            public static final class a implements io.bidmachine.rendering.internal.s {
                public final /* synthetic */ CoroutineScope a;
                public final /* synthetic */ Object b;
                public final /* synthetic */ Function0 c;
                public final /* synthetic */ AnimationParams d;
                public final /* synthetic */ Function0 e;

                public a(Object obj, CoroutineScope coroutineScope, Function0 function0, AnimationParams animationParams, Function0 function02) {
                    this.b = obj;
                    this.c = function0;
                    this.d = animationParams;
                    this.e = function02;
                    this.a = coroutineScope;
                }

                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    try {
                        ((io.bidmachine.rendering.internal.adform.a) this.b).a(false, this.d, this.e);
                    } catch (Throwable th) {
                        try {
                            this.c.invoke();
                        } catch (Throwable unused) {
                        }
                        throw th;
                    }
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1179f(f fVar, String str, String str2, Function0 function0, Class cls, Continuation continuation, AnimationParams animationParams, Function0 function02) {
                super(2, continuation);
                this.c = fVar;
                this.d = str;
                this.e = str2;
                this.f = function0;
                this.g = cls;
                this.h = animationParams;
                this.i = function02;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((C1179f) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C1179f c1179f = new C1179f(this.c, this.d, this.e, this.f, this.g, continuation, this.h, this.i);
                c1179f.b = obj;
                return c1179f;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                Object objC = this.c.c(this.d);
                if (objC == null) {
                    this.c.a(this.e, this.d);
                    this.f.invoke();
                    return Unit.INSTANCE;
                }
                Object objCastSafely = UtilsKt.castSafely(this.g, objC);
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new a(objCastSafely, coroutineScope, this.f, this.h, this.i));
                    return Unit.INSTANCE;
                }
                f fVar = this.c;
                String str = this.e;
                String str2 = this.d;
                String simpleName = this.g.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                fVar.a(str, str2, simpleName);
                this.f.invoke();
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$g */
        public static final class g extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ f c;
            public final /* synthetic */ String d;
            public final /* synthetic */ String e;
            public final /* synthetic */ Class f;
            public final /* synthetic */ boolean g;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$g$a */
            public static final class a implements io.bidmachine.rendering.internal.s {
                public final /* synthetic */ CoroutineScope a;
                public final /* synthetic */ Object b;
                public final /* synthetic */ boolean c;

                public a(Object obj, CoroutineScope coroutineScope, boolean z) {
                    this.b = obj;
                    this.c = z;
                    this.a = coroutineScope;
                }

                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    ((VisibilityChanger) this.b).lockVisibility(this.c);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public g(f fVar, String str, String str2, Class cls, Continuation continuation, boolean z) {
                super(2, continuation);
                this.c = fVar;
                this.d = str;
                this.e = str2;
                this.f = cls;
                this.g = z;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((g) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                g gVar = new g(this.c, this.d, this.e, this.f, continuation, this.g);
                gVar.b = obj;
                return gVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                Object objC = this.c.c(this.d);
                if (objC == null) {
                    this.c.a(this.e, this.d);
                    return Unit.INSTANCE;
                }
                Object objCastSafely = UtilsKt.castSafely(this.f, objC);
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new a(objCastSafely, coroutineScope, this.g));
                    return Unit.INSTANCE;
                }
                f fVar = this.c;
                String str = this.e;
                String str2 = this.d;
                String simpleName = this.f.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                fVar.a(str, str2, simpleName);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$h */
        public static final class h extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ f c;
            public final /* synthetic */ String d;
            public final /* synthetic */ String e;
            public final /* synthetic */ Class f;
            public final /* synthetic */ Integer g;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$h$a */
            public static final class a implements io.bidmachine.rendering.internal.s {
                public final /* synthetic */ CoroutineScope a;
                public final /* synthetic */ Object b;
                public final /* synthetic */ Integer c;

                public a(Object obj, CoroutineScope coroutineScope, Integer num) {
                    this.b = obj;
                    this.c = num;
                    this.a = coroutineScope;
                }

                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    ((io.bidmachine.rendering.internal.w) this.b).b(this.c);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public h(f fVar, String str, String str2, Class cls, Continuation continuation, Integer num) {
                super(2, continuation);
                this.c = fVar;
                this.d = str;
                this.e = str2;
                this.f = cls;
                this.g = num;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((h) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                h hVar = new h(this.c, this.d, this.e, this.f, continuation, this.g);
                hVar.b = obj;
                return hVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                Object objC = this.c.c(this.d);
                if (objC == null) {
                    this.c.a(this.e, this.d);
                    return Unit.INSTANCE;
                }
                Object objCastSafely = UtilsKt.castSafely(this.f, objC);
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new a(objCastSafely, coroutineScope, this.g));
                    return Unit.INSTANCE;
                }
                f fVar = this.c;
                String str = this.e;
                String str2 = this.d;
                String simpleName = this.f.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                fVar.a(str, str2, simpleName);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$i */
        public static final class i implements io.bidmachine.rendering.internal.r {
            public final /* synthetic */ f a;
            public final /* synthetic */ String b;
            public final /* synthetic */ ClickData c;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$i$a */
            public static final class a extends SuspendLambda implements Function2 {
                public int a;
                public /* synthetic */ Object b;
                public final /* synthetic */ f c;
                public final /* synthetic */ String d;
                public final /* synthetic */ String e;
                public final /* synthetic */ Class f;
                public final /* synthetic */ ProcessUrlResult g;
                public final /* synthetic */ ClickData h;

                /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$i$a$a, reason: collision with other inner class name */
                public static final class C1180a implements io.bidmachine.rendering.internal.s {
                    public final /* synthetic */ CoroutineScope a;
                    public final /* synthetic */ Object b;
                    public final /* synthetic */ ProcessUrlResult c;
                    public final /* synthetic */ ClickData d;

                    public C1180a(Object obj, CoroutineScope coroutineScope, ProcessUrlResult processUrlResult, ClickData clickData) {
                        this.b = obj;
                        this.c = processUrlResult;
                        this.d = clickData;
                        this.a = coroutineScope;
                    }

                    @Override // io.bidmachine.util.SafeRunnable
                    public final void onRun() {
                        ((io.bidmachine.rendering.internal.G) this.b).a(this.c.getSystemComponent(), this.d);
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public a(f fVar, String str, String str2, Class cls, Continuation continuation, ProcessUrlResult processUrlResult, ClickData clickData) {
                    super(2, continuation);
                    this.c = fVar;
                    this.d = str;
                    this.e = str2;
                    this.f = cls;
                    this.g = processUrlResult;
                    this.h = clickData;
                }

                @Override // kotlin.jvm.functions.Function2
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                    return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    a aVar = new a(this.c, this.d, this.e, this.f, continuation, this.g, this.h);
                    aVar.b = obj;
                    return aVar;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.a != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope coroutineScope = (CoroutineScope) this.b;
                    Object objC = this.c.c(this.d);
                    if (objC == null) {
                        this.c.a(this.e, this.d);
                        return Unit.INSTANCE;
                    }
                    Object objCastSafely = UtilsKt.castSafely(this.f, objC);
                    if (objCastSafely != null) {
                        UiUtils.onUiThread(new C1180a(objCastSafely, coroutineScope, this.g, this.h));
                        return Unit.INSTANCE;
                    }
                    f fVar = this.c;
                    String str = this.e;
                    String str2 = this.d;
                    String simpleName = this.f.getSimpleName();
                    Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                    fVar.a(str, str2, simpleName);
                    return Unit.INSTANCE;
                }
            }

            public i(f fVar, String str, ClickData clickData) {
                this.a = fVar;
                this.b = str;
                this.c = clickData;
            }

            @Override // io.bidmachine.util.SafeExecutable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onExecute(ProcessUrlResult input) {
                Intrinsics.checkNotNullParameter(input, "input");
                if (input.isSuccess()) {
                    f fVar = this.a;
                    BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new a(fVar, this.b, "onClickResolved", io.bidmachine.rendering.internal.G.class, null, input, this.c), 2, null);
                }
                io.bidmachine.rendering.internal.controller.h hVarR = this.a.r();
                if (hVarR != null) {
                    hVarR.d();
                }
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$j */
        public static final class j extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ f c;
            public final /* synthetic */ String d;
            public final /* synthetic */ String e;
            public final /* synthetic */ Class f;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$j$a */
            public static final class a implements io.bidmachine.rendering.internal.s {
                public final /* synthetic */ CoroutineScope a;
                public final /* synthetic */ Object b;

                public a(Object obj, CoroutineScope coroutineScope) {
                    this.b = obj;
                    this.a = coroutineScope;
                }

                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    ((io.bidmachine.rendering.internal.y) this.b).pause();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public j(f fVar, String str, String str2, Class cls, Continuation continuation) {
                super(2, continuation);
                this.c = fVar;
                this.d = str;
                this.e = str2;
                this.f = cls;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((j) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                j jVar = new j(this.c, this.d, this.e, this.f, continuation);
                jVar.b = obj;
                return jVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                Object objC = this.c.c(this.d);
                if (objC == null) {
                    this.c.a(this.e, this.d);
                    return Unit.INSTANCE;
                }
                Object objCastSafely = UtilsKt.castSafely(this.f, objC);
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new a(objCastSafely, coroutineScope));
                    return Unit.INSTANCE;
                }
                f fVar = this.c;
                String str = this.e;
                String str2 = this.d;
                String simpleName = this.f.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                fVar.a(str, str2, simpleName);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$k */
        public static final class k extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ f c;
            public final /* synthetic */ String d;
            public final /* synthetic */ String e;
            public final /* synthetic */ Class f;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$k$a */
            public static final class a implements io.bidmachine.rendering.internal.s {
                public final /* synthetic */ CoroutineScope a;
                public final /* synthetic */ Object b;

                public a(Object obj, CoroutineScope coroutineScope) {
                    this.b = obj;
                    this.a = coroutineScope;
                }

                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    ((io.bidmachine.rendering.internal.y) this.b).play();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public k(f fVar, String str, String str2, Class cls, Continuation continuation) {
                super(2, continuation);
                this.c = fVar;
                this.d = str;
                this.e = str2;
                this.f = cls;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((k) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                k kVar = new k(this.c, this.d, this.e, this.f, continuation);
                kVar.b = obj;
                return kVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                Object objC = this.c.c(this.d);
                if (objC == null) {
                    this.c.a(this.e, this.d);
                    return Unit.INSTANCE;
                }
                Object objCastSafely = UtilsKt.castSafely(this.f, objC);
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new a(objCastSafely, coroutineScope));
                    return Unit.INSTANCE;
                }
                f fVar = this.c;
                String str = this.e;
                String str2 = this.d;
                String simpleName = this.f.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                fVar.a(str, str2, simpleName);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$l */
        public static final class l extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ f c;
            public final /* synthetic */ String d;
            public final /* synthetic */ String e;
            public final /* synthetic */ Class f;
            public final /* synthetic */ long g;
            public final /* synthetic */ long h;
            public final /* synthetic */ float i;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$l$a */
            public static final class a implements io.bidmachine.rendering.internal.s {
                public final /* synthetic */ CoroutineScope a;
                public final /* synthetic */ Object b;
                public final /* synthetic */ long c;
                public final /* synthetic */ long d;
                public final /* synthetic */ float e;

                public a(Object obj, CoroutineScope coroutineScope, long j, long j2, float f) {
                    this.b = obj;
                    this.c = j;
                    this.d = j2;
                    this.e = f;
                    this.a = coroutineScope;
                }

                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    ((io.bidmachine.rendering.internal.z) this.b).a(this.c, this.d, this.e);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public l(f fVar, String str, String str2, Class cls, Continuation continuation, long j, long j2, float f) {
                super(2, continuation);
                this.c = fVar;
                this.d = str;
                this.e = str2;
                this.f = cls;
                this.g = j;
                this.h = j2;
                this.i = f;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((l) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                l lVar = new l(this.c, this.d, this.e, this.f, continuation, this.g, this.h, this.i);
                lVar.b = obj;
                return lVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                Object objC = this.c.c(this.d);
                if (objC == null) {
                    this.c.a(this.e, this.d);
                    return Unit.INSTANCE;
                }
                Object objCastSafely = UtilsKt.castSafely(this.f, objC);
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new a(objCastSafely, coroutineScope, this.g, this.h, this.i));
                    return Unit.INSTANCE;
                }
                f fVar = this.c;
                String str = this.e;
                String str2 = this.d;
                String simpleName = this.f.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                fVar.a(str, str2, simpleName);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$m */
        public static final class m extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ f c;
            public final /* synthetic */ String d;
            public final /* synthetic */ String e;
            public final /* synthetic */ Class f;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$m$a */
            public static final class a implements io.bidmachine.rendering.internal.s {
                public final /* synthetic */ CoroutineScope a;
                public final /* synthetic */ Object b;

                public a(Object obj, CoroutineScope coroutineScope) {
                    this.b = obj;
                    this.a = coroutineScope;
                }

                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    ((io.bidmachine.rendering.internal.A) this.b).l();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public m(f fVar, String str, String str2, Class cls, Continuation continuation) {
                super(2, continuation);
                this.c = fVar;
                this.d = str;
                this.e = str2;
                this.f = cls;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((m) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                m mVar = new m(this.c, this.d, this.e, this.f, continuation);
                mVar.b = obj;
                return mVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                Object objC = this.c.c(this.d);
                if (objC == null) {
                    this.c.a(this.e, this.d);
                    return Unit.INSTANCE;
                }
                Object objCastSafely = UtilsKt.castSafely(this.f, objC);
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new a(objCastSafely, coroutineScope));
                    return Unit.INSTANCE;
                }
                f fVar = this.c;
                String str = this.e;
                String str2 = this.d;
                String simpleName = this.f.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                fVar.a(str, str2, simpleName);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$n */
        public static final class n extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ f c;
            public final /* synthetic */ String d;
            public final /* synthetic */ String e;
            public final /* synthetic */ Class f;
            public final /* synthetic */ long g;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$n$a */
            public static final class a implements io.bidmachine.rendering.internal.s {
                public final /* synthetic */ CoroutineScope a;
                public final /* synthetic */ Object b;
                public final /* synthetic */ long c;

                public a(Object obj, CoroutineScope coroutineScope, long j) {
                    this.b = obj;
                    this.c = j;
                    this.a = coroutineScope;
                }

                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    ((io.bidmachine.rendering.internal.C) this.b).a(this.c);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public n(f fVar, String str, String str2, Class cls, Continuation continuation, long j) {
                super(2, continuation);
                this.c = fVar;
                this.d = str;
                this.e = str2;
                this.f = cls;
                this.g = j;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((n) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                n nVar = new n(this.c, this.d, this.e, this.f, continuation, this.g);
                nVar.b = obj;
                return nVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                Object objC = this.c.c(this.d);
                if (objC == null) {
                    this.c.a(this.e, this.d);
                    return Unit.INSTANCE;
                }
                Object objCastSafely = UtilsKt.castSafely(this.f, objC);
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new a(objCastSafely, coroutineScope, this.g));
                    return Unit.INSTANCE;
                }
                f fVar = this.c;
                String str = this.e;
                String str2 = this.d;
                String simpleName = this.f.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                fVar.a(str, str2, simpleName);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$o */
        public static final class o extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ f c;
            public final /* synthetic */ String d;
            public final /* synthetic */ String e;
            public final /* synthetic */ Function0 f;
            public final /* synthetic */ Class g;
            public final /* synthetic */ AnimationParams h;
            public final /* synthetic */ Function0 i;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$o$a */
            public static final class a implements io.bidmachine.rendering.internal.s {
                public final /* synthetic */ CoroutineScope a;
                public final /* synthetic */ Object b;
                public final /* synthetic */ Function0 c;
                public final /* synthetic */ AnimationParams d;
                public final /* synthetic */ Function0 e;

                public a(Object obj, CoroutineScope coroutineScope, Function0 function0, AnimationParams animationParams, Function0 function02) {
                    this.b = obj;
                    this.c = function0;
                    this.d = animationParams;
                    this.e = function02;
                    this.a = coroutineScope;
                }

                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    try {
                        ((io.bidmachine.rendering.internal.adform.a) this.b).a(true, this.d, this.e);
                    } catch (Throwable th) {
                        try {
                            this.c.invoke();
                        } catch (Throwable unused) {
                        }
                        throw th;
                    }
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public o(f fVar, String str, String str2, Function0 function0, Class cls, Continuation continuation, AnimationParams animationParams, Function0 function02) {
                super(2, continuation);
                this.c = fVar;
                this.d = str;
                this.e = str2;
                this.f = function0;
                this.g = cls;
                this.h = animationParams;
                this.i = function02;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((o) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                o oVar = new o(this.c, this.d, this.e, this.f, this.g, continuation, this.h, this.i);
                oVar.b = obj;
                return oVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                Object objC = this.c.c(this.d);
                if (objC == null) {
                    this.c.a(this.e, this.d);
                    this.f.invoke();
                    return Unit.INSTANCE;
                }
                Object objCastSafely = UtilsKt.castSafely(this.g, objC);
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new a(objCastSafely, coroutineScope, this.f, this.h, this.i));
                    return Unit.INSTANCE;
                }
                f fVar = this.c;
                String str = this.e;
                String str2 = this.d;
                String simpleName = this.g.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                fVar.a(str, str2, simpleName);
                this.f.invoke();
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$p */
        public static final class p extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ f c;
            public final /* synthetic */ String d;
            public final /* synthetic */ String e;
            public final /* synthetic */ Class f;
            public final /* synthetic */ ClickAreaFactory g;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$p$a */
            public static final class a implements io.bidmachine.rendering.internal.s {
                public final /* synthetic */ CoroutineScope a;
                public final /* synthetic */ Object b;
                public final /* synthetic */ ClickAreaFactory c;

                public a(Object obj, CoroutineScope coroutineScope, ClickAreaFactory clickAreaFactory) {
                    this.b = obj;
                    this.c = clickAreaFactory;
                    this.a = coroutineScope;
                }

                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    ((InterfaceC4239b) this.b).a(this.c);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public p(f fVar, String str, String str2, Class cls, Continuation continuation, ClickAreaFactory clickAreaFactory) {
                super(2, continuation);
                this.c = fVar;
                this.d = str;
                this.e = str2;
                this.f = cls;
                this.g = clickAreaFactory;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((p) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                p pVar = new p(this.c, this.d, this.e, this.f, continuation, this.g);
                pVar.b = obj;
                return pVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                Object objC = this.c.c(this.d);
                if (objC == null) {
                    this.c.a(this.e, this.d);
                    return Unit.INSTANCE;
                }
                Object objCastSafely = UtilsKt.castSafely(this.f, objC);
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new a(objCastSafely, coroutineScope, this.g));
                    return Unit.INSTANCE;
                }
                f fVar = this.c;
                String str = this.e;
                String str2 = this.d;
                String simpleName = this.f.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                fVar.a(str, str2, simpleName);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$q */
        public static final class q implements io.bidmachine.rendering.internal.s {
            public final /* synthetic */ Object a;

            public q(Object obj) {
                this.a = obj;
            }

            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                ((io.bidmachine.rendering.internal.E) this.a).n();
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$r */
        public static final class r implements io.bidmachine.rendering.internal.s {
            public final /* synthetic */ Object a;

            public r(Object obj) {
                this.a = obj;
            }

            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                ((io.bidmachine.rendering.internal.E) this.a).n();
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$s */
        public static final class s implements io.bidmachine.rendering.internal.s {
            public final /* synthetic */ Object a;

            public s(Object obj) {
                this.a = obj;
            }

            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                ((io.bidmachine.rendering.internal.E) this.a).n();
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$t */
        public static final class t implements io.bidmachine.rendering.internal.s {
            public final /* synthetic */ Object a;

            public t(Object obj) {
                this.a = obj;
            }

            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                ((io.bidmachine.rendering.internal.E) this.a).n();
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$u */
        public static final class u extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ f c;
            public final /* synthetic */ String d;
            public final /* synthetic */ String e;
            public final /* synthetic */ Class f;
            public final /* synthetic */ String g;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$u$a */
            public static final class a implements io.bidmachine.rendering.internal.s {
                public final /* synthetic */ CoroutineScope a;
                public final /* synthetic */ Object b;
                public final /* synthetic */ String c;

                public a(Object obj, CoroutineScope coroutineScope, String str) {
                    this.b = obj;
                    this.c = str;
                    this.a = coroutineScope;
                }

                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    ((io.bidmachine.rendering.internal.F) this.b).a(this.c);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public u(f fVar, String str, String str2, Class cls, Continuation continuation, String str3) {
                super(2, continuation);
                this.c = fVar;
                this.d = str;
                this.e = str2;
                this.f = cls;
                this.g = str3;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((u) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                u uVar = new u(this.c, this.d, this.e, this.f, continuation, this.g);
                uVar.b = obj;
                return uVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                Object objC = this.c.c(this.d);
                if (objC == null) {
                    this.c.a(this.e, this.d);
                    return Unit.INSTANCE;
                }
                Object objCastSafely = UtilsKt.castSafely(this.f, objC);
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new a(objCastSafely, coroutineScope, this.g));
                    return Unit.INSTANCE;
                }
                f fVar = this.c;
                String str = this.e;
                String str2 = this.d;
                String simpleName = this.f.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                fVar.a(str, str2, simpleName);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$v */
        public static final class v extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ f c;
            public final /* synthetic */ String d;
            public final /* synthetic */ String e;
            public final /* synthetic */ Class f;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$v$a */
            public static final class a implements io.bidmachine.rendering.internal.s {
                public final /* synthetic */ CoroutineScope a;
                public final /* synthetic */ Object b;

                public a(Object obj, CoroutineScope coroutineScope) {
                    this.b = obj;
                    this.a = coroutineScope;
                }

                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    ((VisibilityChanger) this.b).unlockVisibility();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public v(f fVar, String str, String str2, Class cls, Continuation continuation) {
                super(2, continuation);
                this.c = fVar;
                this.d = str;
                this.e = str2;
                this.f = cls;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((v) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                v vVar = new v(this.c, this.d, this.e, this.f, continuation);
                vVar.b = obj;
                return vVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                Object objC = this.c.c(this.d);
                if (objC == null) {
                    this.c.a(this.e, this.d);
                    return Unit.INSTANCE;
                }
                Object objCastSafely = UtilsKt.castSafely(this.f, objC);
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new a(objCastSafely, coroutineScope));
                    return Unit.INSTANCE;
                }
                f fVar = this.c;
                String str = this.e;
                String str2 = this.d;
                String simpleName = this.f.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                fVar.a(str, str2, simpleName);
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$w */
        public static final class w extends SuspendLambda implements Function2 {
            public int a;
            public /* synthetic */ Object b;
            public final /* synthetic */ f c;
            public final /* synthetic */ String d;
            public final /* synthetic */ String e;
            public final /* synthetic */ Class f;
            public final /* synthetic */ Integer g;

            /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$f$w$a */
            public static final class a implements io.bidmachine.rendering.internal.s {
                public final /* synthetic */ CoroutineScope a;
                public final /* synthetic */ Object b;
                public final /* synthetic */ Integer c;

                public a(Object obj, CoroutineScope coroutineScope, Integer num) {
                    this.b = obj;
                    this.c = num;
                    this.a = coroutineScope;
                }

                @Override // io.bidmachine.util.SafeRunnable
                public final void onRun() {
                    ((io.bidmachine.rendering.internal.w) this.b).a(this.c);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public w(f fVar, String str, String str2, Class cls, Continuation continuation, Integer num) {
                super(2, continuation);
                this.c = fVar;
                this.d = str;
                this.e = str2;
                this.f = cls;
                this.g = num;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
                return ((w) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                w wVar = new w(this.c, this.d, this.e, this.f, continuation, this.g);
                wVar.b = obj;
                return wVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.b;
                Object objC = this.c.c(this.d);
                if (objC == null) {
                    this.c.a(this.e, this.d);
                    return Unit.INSTANCE;
                }
                Object objCastSafely = UtilsKt.castSafely(this.f, objC);
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new a(objCastSafely, coroutineScope, this.g));
                    return Unit.INSTANCE;
                }
                f fVar = this.c;
                String str = this.e;
                String str2 = this.d;
                String simpleName = this.f.getSimpleName();
                Intrinsics.checkNotNullExpressionValue(simpleName, "clazz.simpleName");
                fVar.a(str, str2, simpleName);
                return Unit.INSTANCE;
            }
        }

        public C1177f(f fVar, Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.b = fVar;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            this.a = applicationContext;
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void a(String sourceName, String url, ClickData clickData, Function0 callback) {
            Intrinsics.checkNotNullParameter(sourceName, "sourceName");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(callback, "callback");
            a(sourceName, url, clickData);
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void b(String url, Function0 callback) {
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(callback, "callback");
            new NetworkRequest.Builder(url, NetworkRequest.Method.Get).setUserAgent(Rendering.getUserAgent()).send();
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void c(AnimationParams animationParams, Function0 callback) {
            Unit unit;
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            Iterator it = fVar.l().iterator();
            while (it.hasNext()) {
                Object objCastSafely = UtilsKt.castSafely(io.bidmachine.rendering.internal.E.class, (InterfaceC4239b) it.next());
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new q(objCastSafely));
                }
            }
            Iterator it2 = fVar.m().iterator();
            while (it2.hasNext()) {
                Object objCastSafely2 = UtilsKt.castSafely(io.bidmachine.rendering.internal.E.class, (InterfaceC4239b) it2.next());
                if (objCastSafely2 != null) {
                    UiUtils.onUiThread(new r(objCastSafely2));
                }
            }
            Iterator it3 = fVar.q().iterator();
            while (it3.hasNext()) {
                Object objCastSafely3 = UtilsKt.castSafely(io.bidmachine.rendering.internal.E.class, (io.bidmachine.rendering.internal.v) it3.next());
                if (objCastSafely3 != null) {
                    UiUtils.onUiThread(new s(objCastSafely3));
                }
            }
            Object objCastSafely4 = UtilsKt.castSafely(io.bidmachine.rendering.internal.E.class, fVar.p());
            if (objCastSafely4 != null) {
                UiUtils.onUiThread(new t(objCastSafely4));
            }
            io.bidmachine.rendering.internal.controller.h hVarR = this.b.r();
            if (hVarR != null) {
                hVarR.c(animationParams, callback);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                callback.invoke();
            }
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void d(AnimationParams animationParams, Function0 callback) {
            Unit unit;
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            Iterator it = fVar.l().iterator();
            while (it.hasNext()) {
                Object objCastSafely = UtilsKt.castSafely(InterfaceC4253i.class, (InterfaceC4239b) it.next());
                if (objCastSafely != null) {
                    UiUtils.onUiThread(new b(objCastSafely));
                }
            }
            Iterator it2 = fVar.m().iterator();
            while (it2.hasNext()) {
                Object objCastSafely2 = UtilsKt.castSafely(InterfaceC4253i.class, (InterfaceC4239b) it2.next());
                if (objCastSafely2 != null) {
                    UiUtils.onUiThread(new c(objCastSafely2));
                }
            }
            Iterator it3 = fVar.q().iterator();
            while (it3.hasNext()) {
                Object objCastSafely3 = UtilsKt.castSafely(InterfaceC4253i.class, (io.bidmachine.rendering.internal.v) it3.next());
                if (objCastSafely3 != null) {
                    UiUtils.onUiThread(new d(objCastSafely3));
                }
            }
            Object objCastSafely4 = UtilsKt.castSafely(InterfaceC4253i.class, fVar.p());
            if (objCastSafely4 != null) {
                UiUtils.onUiThread(new e(objCastSafely4));
            }
            io.bidmachine.rendering.internal.controller.h hVarR = this.b.r();
            if (hVarR != null) {
                hVarR.d(animationParams, callback);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                callback.invoke();
            }
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void e(String targetElementName, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new j(fVar, targetElementName, "pause", io.bidmachine.rendering.internal.y.class, null), 2, null);
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void f(String targetElementName, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new m(fVar, targetElementName, "repeat", io.bidmachine.rendering.internal.A.class, null), 2, null);
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void b(String sourceName, String url, ClickData clickData, Function0 callback) {
            Intrinsics.checkNotNullParameter(sourceName, "sourceName");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(callback, "callback");
            a(sourceName, url, clickData);
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void a(String targetElementName, Integer num, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new h(fVar, targetElementName, "mute", io.bidmachine.rendering.internal.w.class, null, num), 2, null);
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void a(String targetElementName, AnimationParams animationParams, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new C1179f(fVar, targetElementName, "hide", callback, io.bidmachine.rendering.internal.adform.a.class, null, animationParams, callback), 2, null);
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void b(String targetElementName, Integer num, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new w(fVar, targetElementName, "unmute", io.bidmachine.rendering.internal.w.class, null, num), 2, null);
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void a(String targetElementName, long j2, long j3, float f, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new l(fVar, targetElementName, "progress", io.bidmachine.rendering.internal.z.class, null, j2, j3, f), 2, null);
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void b(String targetElementName, AnimationParams animationParams, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new o(fVar, targetElementName, "show", callback, io.bidmachine.rendering.internal.adform.a.class, null, animationParams, callback), 2, null);
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void a(String targetElementName, long j2, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new n(fVar, targetElementName, "schedule", io.bidmachine.rendering.internal.C.class, null, j2), 2, null);
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void b(String targetElementName, boolean z, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new g(fVar, targetElementName, "lockVisibility", VisibilityChanger.class, null, z), 2, null);
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void a(String targetElementName, String str, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new u(fVar, targetElementName, "start", io.bidmachine.rendering.internal.F.class, null, str), 2, null);
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void b(AnimationParams animationParams, Function0 callback) {
            Unit unit;
            Intrinsics.checkNotNullParameter(callback, "callback");
            io.bidmachine.rendering.internal.controller.h hVarR = this.b.r();
            if (hVarR != null) {
                hVarR.b(animationParams, callback);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                callback.invoke();
            }
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void a(String targetElementName, ClickAreaFactory clickAreaFactory, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(clickAreaFactory, "clickAreaFactory");
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new p(fVar, targetElementName, "simulateClick", InterfaceC4239b.class, null, clickAreaFactory), 2, null);
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void c(String targetElementName, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new v(fVar, targetElementName, "unlockVisibility", VisibilityChanger.class, null), 2, null);
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void d(String stateGroups, Function0 callback) {
            Intrinsics.checkNotNullParameter(stateGroups, "stateGroups");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.b.t().a(stateGroups);
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void a(PrivacySheetParams privacySheetParams, Function0 callback) {
            Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
            Intrinsics.checkNotNullParameter(callback, "callback");
            io.bidmachine.rendering.internal.controller.h hVarR = this.b.r();
            if (hVarR != null) {
                hVarR.a(privacySheetParams);
            }
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void a(AnimationParams animationParams, Function0 callback) {
            Unit unit;
            Intrinsics.checkNotNullParameter(callback, "callback");
            io.bidmachine.rendering.internal.controller.h hVarR = this.b.r();
            if (hVarR != null) {
                hVarR.a(animationParams, callback);
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                callback.invoke();
            }
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void a(SystemComponent systemComponent, ClickData clickData, Function0 callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            io.bidmachine.rendering.internal.controller.h hVarR = this.b.r();
            if (hVarR != null) {
                hVarR.a(systemComponent, clickData);
            }
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void a(String targetElementName, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new k(fVar, targetElementName, "play", io.bidmachine.rendering.internal.y.class, null), 2, null);
            callback.invoke();
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void a(String targetElementName, ElementLayoutParams elementLayoutParams, AnimationParams animationParams, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.b.a(targetElementName, elementLayoutParams, animationParams, callback);
        }

        @Override // io.bidmachine.rendering.internal.event.e
        public void a(String targetElementName, boolean z, Function0 callback) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            Intrinsics.checkNotNullParameter(callback, "callback");
            f fVar = this.b;
            BuildersKt__Builders_commonKt.launch$default(fVar.o(), fVar.n().b(), null, new a(fVar, targetElementName, "changeActivity", io.bidmachine.rendering.internal.G.class, null, z), 2, null);
            callback.invoke();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.bidmachine.rendering.internal.event.e
        public void a(String sourceName, EventType eventType, String str, List eventTaskBucketParamsList, String url, Function1 callback) {
            Function1 function1;
            Intrinsics.checkNotNullParameter(sourceName, "sourceName");
            Intrinsics.checkNotNullParameter(eventType, "eventType");
            Intrinsics.checkNotNullParameter(eventTaskBucketParamsList, "eventTaskBucketParamsList");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(callback, "callback");
            NetworkRequestBuilder networkRequestBuilder = Rendering.getNetworkRequestBuilder();
            if (networkRequestBuilder != 0) {
                function1 = callback;
                io.bidmachine.util.network.NetworkRequest<?> networkRequestCreateRequestPermissionRequest = networkRequestBuilder.createRequestPermissionRequest(sourceName, eventType, str, eventTaskBucketParamsList, url, function1);
                if (networkRequestCreateRequestPermissionRequest != null) {
                    io.bidmachine.util.network.NetworkRequest.send$default(networkRequestCreateRequestPermissionRequest, null, 1, null);
                    return;
                }
            } else {
                function1 = callback;
            }
            io.bidmachine.rendering.internal.t.a(this.b.b, "Can't request PermissionRequest. NetworkRequestBuilder is null", new Object[0]);
            function1.invoke(null);
        }

        public final void a(String str, String str2, ClickData clickData) {
            io.bidmachine.rendering.internal.controller.h hVarR = this.b.r();
            if (hVarR != null) {
                hVarR.b();
            }
            UrlHandler.openUrl(this.a, str2, new i(this.b, str, clickData));
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.f$a, reason: case insensitive filesystem */
    public final class C4241a extends AbstractC4242b {
        public C4241a() {
            super();
        }

        @Override // io.bidmachine.rendering.internal.controller.f.AbstractC4242b, io.bidmachine.rendering.internal.adform.c
        public void a(io.bidmachine.rendering.internal.adform.a adForm, Error error) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            Intrinsics.checkNotNullParameter(error, "error");
            super.a(adForm, error);
            f.this.a(error);
            f.this.g().a(adForm);
        }

        @Override // io.bidmachine.rendering.internal.controller.f.AbstractC4242b, io.bidmachine.rendering.internal.adform.c
        public void c(io.bidmachine.rendering.internal.adform.a adForm, Error error) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            Intrinsics.checkNotNullParameter(error, "error");
            super.c(adForm, error);
            f.this.a(error);
            f.this.g().a(adForm);
        }

        @Override // io.bidmachine.rendering.internal.controller.f.AbstractC4242b
        public void f(io.bidmachine.rendering.internal.adform.a adForm) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            if (adForm.L()) {
                if (f.this.l.isEmpty()) {
                    f.this.z();
                }
            } else {
                a(adForm, new Error("Failed to setup ad element (" + adForm + ')'));
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.f.AbstractC4242b, io.bidmachine.rendering.internal.adform.c
        public void a(io.bidmachine.rendering.internal.adform.a adForm) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            super.a(adForm);
            f.this.g().a(adForm);
        }
    }

    @Override // io.bidmachine.rendering.internal.controller.e
    public void a(io.bidmachine.rendering.internal.controller.h hVar) {
        this.w = hVar;
    }

    @Override // io.bidmachine.rendering.internal.controller.e
    public void a() {
        io.bidmachine.rendering.internal.t.b(this.b, "AdPhase - load", new Object[0]);
        BuildersKt__Builders_commonKt.launch$default(o(), n().c(), null, new m(null), 2, null);
    }

    public final void e(List list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        io.bidmachine.rendering.internal.t.b(this.b, "Show AdElements", new Object[0]);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b((InterfaceC4239b) it.next());
        }
    }

    @Override // io.bidmachine.rendering.internal.controller.e
    public void a(ViewGroup rootContainer, ViewGroup container) {
        Intrinsics.checkNotNullParameter(rootContainer, "rootContainer");
        Intrinsics.checkNotNullParameter(container, "container");
        io.bidmachine.rendering.internal.t.b(this.b, "AdPhase - setupView", new Object[0]);
        g().a(rootContainer, container, this.n, this.o);
    }

    @Override // io.bidmachine.rendering.internal.controller.e
    public void a(boolean z2) {
        boolean z3 = false;
        boolean z4 = z2 && this.c.g();
        if (!z2 && this.c.m()) {
            z3 = true;
        }
        if (z4) {
            io.bidmachine.rendering.internal.t.b(this.b, "AdPhase - onShown (isViewability - %s)", Boolean.TRUE);
            B();
        }
        if (z4) {
            this.t.set(true);
            A();
        }
        if (z3) {
            p().q().o();
        }
    }

    public final void d(List list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        io.bidmachine.rendering.internal.t.b(this.b, "Hide AdElements", new Object[0]);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a((InterfaceC4239b) it.next());
        }
    }

    @Override // io.bidmachine.rendering.internal.controller.e
    public void b(boolean z2) {
        io.bidmachine.rendering.internal.t.b(this.b, "AdPhase - performHide, isFinishing: " + z2, new Object[0]);
        Iterator it = l().iterator();
        while (it.hasNext()) {
            Object objCastSafely = UtilsKt.castSafely(io.bidmachine.rendering.internal.C.class, (InterfaceC4239b) it.next());
            if (objCastSafely != null) {
                UiUtils.onUiThread(new x(objCastSafely));
            }
        }
        Iterator it2 = m().iterator();
        while (it2.hasNext()) {
            Object objCastSafely2 = UtilsKt.castSafely(io.bidmachine.rendering.internal.C.class, (InterfaceC4239b) it2.next());
            if (objCastSafely2 != null) {
                UiUtils.onUiThread(new y(objCastSafely2));
            }
        }
        Iterator it3 = q().iterator();
        while (it3.hasNext()) {
            Object objCastSafely3 = UtilsKt.castSafely(io.bidmachine.rendering.internal.C.class, (io.bidmachine.rendering.internal.v) it3.next());
            if (objCastSafely3 != null) {
                UiUtils.onUiThread(new z(objCastSafely3));
            }
        }
        Object objCastSafely4 = UtilsKt.castSafely(io.bidmachine.rendering.internal.C.class, p());
        if (objCastSafely4 != null) {
            UiUtils.onUiThread(new A(objCastSafely4));
        }
        u();
    }

    public final io.bidmachine.rendering.internal.event.a a(String sourceName) {
        Intrinsics.checkNotNullParameter(sourceName, "sourceName");
        return new io.bidmachine.rendering.internal.event.b(sourceName, t(), new io.bidmachine.rendering.internal.event.d(this.g, sourceName), o(), n(), g().c().getEventTypeMap(sourceName));
    }

    public final io.bidmachine.rendering.internal.detector.brokencreative.a a(AdElementParams adElementParams) {
        BrokenCreativeDetectorParams brokenCreativeDetectorParams = adElementParams.getBrokenCreativeDetectorParams();
        if (brokenCreativeDetectorParams != null) {
            return new io.bidmachine.rendering.internal.detector.brokencreative.a(g().c().getSequence(), adElementParams.getName(), brokenCreativeDetectorParams, this.h);
        }
        return null;
    }

    public final void b(InterfaceC4239b interfaceC4239b) {
        Intrinsics.checkNotNullParameter(interfaceC4239b, "<this>");
        io.bidmachine.rendering.internal.t.b(this.b, "Show AdElement - " + interfaceC4239b.g().getName(), new Object[0]);
        interfaceC4239b.b();
    }

    public final io.bidmachine.rendering.internal.adform.a a(AdElementParams adElementParams, io.bidmachine.rendering.internal.adform.c adFormListener) {
        Intrinsics.checkNotNullParameter(adElementParams, "<this>");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        io.bidmachine.rendering.internal.t.b(this.b, "Create AdElement - " + adElementParams.getName(), new Object[0]);
        return k().a(this.a, adElementParams, adFormListener, a(adElementParams.getName()), a(adElementParams));
    }

    public final void b(List list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        io.bidmachine.rendering.internal.t.b(this.b, "Destroy TargetObjects", new Object[0]);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a((io.bidmachine.rendering.internal.G) it.next(), list);
        }
        list.clear();
    }

    public final void a(io.bidmachine.rendering.internal.adform.a aVar, io.bidmachine.rendering.internal.adform.c adFormListener) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        io.bidmachine.rendering.internal.t.b(this.b, "Load AdElement - " + aVar.g().getName(), new Object[0]);
        d dVar = new d(aVar);
        this.l.put(aVar, dVar);
        try {
            this.k.execute(dVar);
        } catch (Throwable th) {
            adFormListener.a(aVar, ErrorKt.toError(th));
        }
    }

    public final void a(InterfaceC4239b interfaceC4239b) {
        Intrinsics.checkNotNullParameter(interfaceC4239b, "<this>");
        io.bidmachine.rendering.internal.t.b(this.b, "Hide AdElement - " + interfaceC4239b.g().getName(), new Object[0]);
        interfaceC4239b.e();
    }

    public final void a(String targetElementName, ElementLayoutParams elementLayoutParams, AnimationParams animationParams, Function0 callback) {
        Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
        Intrinsics.checkNotNullParameter(callback, "callback");
        List list = this.n;
        InterfaceC4239b interfaceC4239bA = a(list, targetElementName);
        if (interfaceC4239bA == null) {
            list = this.o;
            interfaceC4239bA = a(list, targetElementName);
        }
        List list2 = list;
        InterfaceC4239b interfaceC4239b = interfaceC4239bA;
        if (interfaceC4239b == null) {
            callback.invoke();
        } else {
            g().a(interfaceC4239b, list2, elementLayoutParams, animationParams, new j(p().q()), callback);
        }
    }

    public final void a(final InterfaceC4239b interfaceC4239b, List list) {
        Intrinsics.checkNotNullParameter(interfaceC4239b, "<this>");
        io.bidmachine.rendering.internal.t.b(this.b, "Destroy AdElement - " + interfaceC4239b.g().getName(), new Object[0]);
        if (list != null) {
            list.remove(interfaceC4239b);
        }
        UiUtils.onUiThread(new io.bidmachine.rendering.internal.s() { // from class: io.bidmachine.rendering.internal.controller.f$$ExternalSyntheticLambda1
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                interfaceC4239b.destroy();
            }
        });
    }

    public final void a(List list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        io.bidmachine.rendering.internal.t.b(this.b, "Destroy AdElements", new Object[0]);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a((InterfaceC4239b) it.next(), list);
        }
        list.clear();
    }

    public final void c(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((InterfaceC4239b) it.next()).k();
        }
    }

    public final InterfaceC4239b b(String str) {
        InterfaceC4239b interfaceC4239bA = a(this.n, str);
        return interfaceC4239bA == null ? a(this.o, str) : interfaceC4239bA;
    }

    public static /* synthetic */ void a(f fVar, io.bidmachine.rendering.internal.G g, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            list = null;
        }
        fVar.a(g, list);
    }

    public final void a(final io.bidmachine.rendering.internal.G g, List list) {
        Intrinsics.checkNotNullParameter(g, "<this>");
        io.bidmachine.rendering.internal.t.b(this.b, "Destroy TargetObject - " + g.r(), new Object[0]);
        if (list != null) {
            list.remove(g);
        }
        UiUtils.onUiThread(new io.bidmachine.rendering.internal.s() { // from class: io.bidmachine.rendering.internal.controller.f$$ExternalSyntheticLambda0
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                g.destroy();
            }
        });
    }

    public final void a(io.bidmachine.rendering.internal.adform.a adForm, Error error) {
        Intrinsics.checkNotNullParameter(adForm, "adForm");
        Intrinsics.checkNotNullParameter(error, "error");
        if (adForm.C() && this.c.h()) {
            this.d.b(this, error);
        }
    }

    public final void a(Error error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (this.c.a(false)) {
            this.d.a(this, error);
        }
    }

    public final void a(BrokenCreativeEvent brokenCreativeEvent) {
        io.bidmachine.rendering.internal.controller.h hVarR;
        if (this.c.l() || (hVarR = r()) == null) {
            return;
        }
        hVarR.a(brokenCreativeEvent);
    }

    public final void a(String str, String str2) {
        io.bidmachine.rendering.internal.t.a(this.b, "EventTask - " + str + ", target object (" + str2 + ") not found", new Object[0]);
    }

    public final void a(String str, String str2, String str3) {
        io.bidmachine.rendering.internal.t.a(this.b, "EventTask - " + str + ", target object (" + str2 + ") not " + str3, new Object[0]);
    }

    public final List a(List list, Function0 adFormListenerFactory) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(adFormListenerFactory, "adFormListenerFactory");
        List<AdElementParams> listSortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new k());
        ArrayList<Pair> arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listSortedWith, 10));
        for (AdElementParams adElementParams : listSortedWith) {
            io.bidmachine.rendering.internal.adform.c cVar = (io.bidmachine.rendering.internal.adform.c) adFormListenerFactory.invoke();
            io.bidmachine.rendering.internal.adform.a aVarA = a(adElementParams, cVar);
            this.m.add(aVarA);
            arrayList.add(TuplesKt.to(aVarA, cVar));
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        for (Pair pair : arrayList) {
            io.bidmachine.rendering.internal.adform.a aVar = (io.bidmachine.rendering.internal.adform.a) pair.component1();
            a(aVar, (io.bidmachine.rendering.internal.adform.c) pair.component2());
            arrayList2.add(aVar);
        }
        return arrayList2;
    }

    public final InterfaceC4239b a(List list, String name) {
        Object next;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (StringsKt__StringsJVMKt.equals(((InterfaceC4239b) next).g().getName(), name, true)) {
                break;
            }
        }
        return (InterfaceC4239b) next;
    }
}
