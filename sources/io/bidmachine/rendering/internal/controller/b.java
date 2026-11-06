package io.bidmachine.rendering.internal.controller;

import android.content.Context;
import android.view.View;
import io.bidmachine.rendering.Rendering;
import io.bidmachine.rendering.internal.C4248e;
import io.bidmachine.rendering.internal.j;
import io.bidmachine.rendering.internal.p;
import io.bidmachine.rendering.internal.s;
import io.bidmachine.rendering.internal.t;
import io.bidmachine.rendering.internal.view.f;
import io.bidmachine.rendering.model.AdParams;
import io.bidmachine.rendering.model.AdPhaseParams;
import io.bidmachine.rendering.model.BrokenCreativeEvent;
import io.bidmachine.rendering.model.CacheType;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.Orientation;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.model.animation.AnimationParams;
import io.bidmachine.rendering.utils.UiUtils;
import io.bidmachine.util.Error;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.util.Tag;
import io.bidmachine.util.cache.MediaFileCacheManager;
import java.util.Iterator;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements io.bidmachine.rendering.internal.controller.a {
    public final AdParams a;
    public final io.bidmachine.rendering.internal.controller.c b;
    public final Tag c;
    public final Context d;
    public final io.bidmachine.rendering.internal.state.a e;
    public final Queue f;
    public final Set g;
    public final AtomicBoolean h;
    public final AtomicBoolean i;
    public final AtomicBoolean j;
    public final C4248e k;
    public io.bidmachine.rendering.internal.view.f l;
    public volatile io.bidmachine.rendering.internal.controller.e m;
    public volatile io.bidmachine.rendering.internal.controller.e n;
    public final Orientation o;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.controller.b$b, reason: collision with other inner class name */
    public final class C1176b implements io.bidmachine.rendering.internal.controller.h {
        public final io.bidmachine.rendering.internal.controller.c a;
        public final /* synthetic */ b b;

        public C1176b(b bVar, io.bidmachine.rendering.internal.controller.c adControllerListener) {
            Intrinsics.checkNotNullParameter(adControllerListener, "adControllerListener");
            this.b = bVar;
            this.a = adControllerListener;
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void a(SystemComponent systemComponent, ClickData clickData) {
            this.a.a(systemComponent, clickData);
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void b() {
            this.a.b();
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void c(AnimationParams animationParams, Function0 callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            if (!this.b.j()) {
                d(animationParams, callback);
            } else {
                this.b.b(animationParams);
                this.b.e(animationParams, callback);
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void d() {
            this.a.d();
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void e() {
            this.a.e();
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void a(PrivacySheetParams privacySheetParams) {
            Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
            this.a.a(privacySheetParams);
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void b(AnimationParams animationParams, Function0 callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.b.c(animationParams, callback);
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void d(AnimationParams animationParams, Function0 callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.b.a(animationParams, callback);
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void a(BrokenCreativeEvent brokenCreativeEvent) {
            Intrinsics.checkNotNullParameter(brokenCreativeEvent, "brokenCreativeEvent");
            this.b.a(brokenCreativeEvent);
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void a(AnimationParams animationParams, Function0 callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.b.d(animationParams, callback);
        }

        @Override // io.bidmachine.rendering.internal.controller.h
        public void a() {
            this.a.a();
        }
    }

    public final class c implements f.c {
        public c() {
        }

        @Override // io.bidmachine.rendering.internal.view.f.c
        public void a(AnimationParams animationParams, Function0 callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            b.this.b(animationParams, callback);
        }

        @Override // io.bidmachine.rendering.internal.view.f.c
        public void onLoaded() {
            b.this.s();
        }

        @Override // io.bidmachine.rendering.internal.view.f.c
        public void a(BrokenCreativeEvent brokenCreativeEvent) {
            Intrinsics.checkNotNullParameter(brokenCreativeEvent, "brokenCreativeEvent");
            b.this.a(brokenCreativeEvent);
        }
    }

    public /* synthetic */ class d {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CacheType.values().length];
            try {
                iArr[CacheType.FullLoad.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CacheType.PartialLoad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CacheType.StreamLoad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final class e extends Lambda implements Function0 {
        public final /* synthetic */ io.bidmachine.rendering.internal.controller.e a;
        public final /* synthetic */ b b;
        public final /* synthetic */ Function0 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(io.bidmachine.rendering.internal.controller.e eVar, b bVar, Function0 function0) {
            super(0);
            this.a = eVar;
            this.b = bVar;
            this.c = function0;
        }

        public final void a() {
            try {
                io.bidmachine.rendering.internal.controller.e eVar = this.a;
                if (eVar != null) {
                    eVar.b(true);
                }
                this.b.b.c();
                Function0 function0 = this.c;
                if (function0 != null) {
                    function0.invoke();
                }
            } catch (Throwable th) {
                Function0 function02 = this.c;
                if (function02 != null) {
                    function02.invoke();
                }
                throw th;
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class f extends Lambda implements Function0 {
        public final /* synthetic */ io.bidmachine.rendering.internal.controller.e a;
        public final /* synthetic */ b b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(io.bidmachine.rendering.internal.controller.e eVar, b bVar) {
            super(0);
            this.a = eVar;
            this.b = bVar;
        }

        public final void a() {
            this.a.b(true);
            this.b.h(this.a);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class g extends Lambda implements Function0 {
        public final /* synthetic */ Function0 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(Function0 function0) {
            super(0);
            this.b = function0;
        }

        public final void a() {
            b.this.b.g();
            this.b.invoke();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class h extends Lambda implements Function0 {
        public final /* synthetic */ io.bidmachine.rendering.internal.view.f a;
        public final /* synthetic */ b b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(io.bidmachine.rendering.internal.view.f fVar, b bVar) {
            super(0);
            this.a = fVar;
            this.b = bVar;
        }

        public final void a() {
            this.a.e();
            this.b.b.c(this.a);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class i extends Lambda implements Function0 {
        public final /* synthetic */ io.bidmachine.rendering.internal.controller.e b;
        public final /* synthetic */ Function0 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(io.bidmachine.rendering.internal.controller.e eVar, Function0 function0) {
            super(0);
            this.b = eVar;
            this.c = function0;
        }

        public final void a() {
            try {
                b.this.d(this.b);
            } finally {
                Function0 function0 = this.c;
                if (function0 != null) {
                    function0.invoke();
                }
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(Context context, AdParams adParams, io.bidmachine.rendering.internal.controller.c adControllerListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adParams, "adParams");
        Intrinsics.checkNotNullParameter(adControllerListener, "adControllerListener");
        this.a = adParams;
        this.b = adControllerListener;
        Tag tag = new Tag("AdController");
        this.c = tag;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.d = applicationContext;
        this.e = new io.bidmachine.rendering.internal.state.c(tag.toString());
        this.f = new ConcurrentLinkedQueue();
        this.g = new CopyOnWriteArraySet();
        this.h = new AtomicBoolean(false);
        this.i = new AtomicBoolean(false);
        this.j = new AtomicBoolean(false);
        this.k = new C4248e(null, 1, 0 == true ? 1 : 0);
        this.o = adParams.getOrientation();
    }

    @Override // io.bidmachine.rendering.internal.controller.a
    public void d() {
        t.b(this.c, "onCollapsed", new Object[0]);
        this.e.q();
        io.bidmachine.rendering.internal.controller.e eVar = this.m;
        if (eVar != null) {
            eVar.d();
        }
    }

    @Override // io.bidmachine.rendering.internal.controller.a
    public void destroy() {
        t.b(this.c, "destroy", new Object[0]);
        this.k.a();
        io.bidmachine.rendering.internal.controller.e eVar = this.m;
        if (eVar != null) {
            b(eVar);
        }
        for (io.bidmachine.rendering.internal.controller.e it : this.f) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            b(it);
        }
        c();
        io.bidmachine.rendering.internal.view.f fVar = this.l;
        if (fVar != null) {
            fVar.a();
        }
        this.l = null;
        Function0<MediaFileCacheManager> mediaFileCacheManagerProvider = Rendering.getMediaFileCacheManagerProvider();
        if (mediaFileCacheManagerProvider != null) {
            mediaFileCacheManagerProvider.invoke().unholdMediaFiles(this.c);
        }
        this.e.destroy();
    }

    @Override // io.bidmachine.rendering.internal.controller.a
    public void e() {
        t.b(this.c, "performHide", new Object[0]);
        io.bidmachine.rendering.internal.controller.e eVar = this.m;
        if (eVar != null) {
            eVar.b(false);
        }
        r();
    }

    public final void f(io.bidmachine.rendering.internal.controller.e eVar) {
        eVar.h();
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            ((io.bidmachine.rendering.internal.controller.e) it.next()).h();
        }
    }

    @Override // io.bidmachine.rendering.internal.controller.a
    public Orientation g() {
        return this.o;
    }

    public final CacheType h() {
        return this.a.getCacheType();
    }

    public final void i(io.bidmachine.rendering.internal.controller.e eVar) {
        if (this.e.j()) {
            eVar.a(true);
        }
        if (this.e.t()) {
            eVar.a(false);
        }
    }

    public final boolean j() {
        return i() != null;
    }

    public final boolean k() {
        Queue queue = this.f;
        if (queue != null && queue.isEmpty()) {
            return true;
        }
        Iterator it = queue.iterator();
        while (it.hasNext()) {
            if (!((io.bidmachine.rendering.internal.controller.e) it.next()).c()) {
                return false;
            }
        }
        return true;
    }

    public boolean l() {
        return this.e.c();
    }

    public final void m() {
        if (this.h.compareAndSet(false, true)) {
            for (io.bidmachine.rendering.internal.controller.e eVar : this.f) {
                t.b(this.c, "loadAdPhase (%s)", eVar);
                eVar.a();
            }
        }
    }

    public final void n() {
        final AdPhaseParams placeholderParams = this.a.getPlaceholderParams();
        UiUtils.onUiThread(new s() { // from class: io.bidmachine.rendering.internal.controller.b$$ExternalSyntheticLambda0
            @Override // io.bidmachine.util.SafeRunnable
            public final void onRun() {
                b.a(this.f$0, placeholderParams);
            }
        });
    }

    public final void o() {
        if (this.e.h()) {
            io.bidmachine.rendering.internal.controller.e eVar = this.m;
            if (eVar != null) {
                eVar.e();
            }
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                ((io.bidmachine.rendering.internal.controller.e) it.next()).e();
            }
            this.b.d(this);
        }
    }

    public final void p() {
        if (this.e.p()) {
            this.b.a(this);
        }
    }

    public final boolean q() {
        if (!this.e.a(true)) {
            return false;
        }
        this.b.b(this);
        return true;
    }

    public final void r() {
        io.bidmachine.rendering.internal.view.f fVar = this.l;
        if (fVar != null && this.j.compareAndSet(true, false)) {
            fVar.e();
            this.b.b(fVar);
        }
    }

    public final void s() {
        q();
    }

    public final void t() {
        io.bidmachine.rendering.internal.view.f fVar = this.l;
        if (fVar != null && this.j.compareAndSet(false, true)) {
            this.b.a(fVar);
            fVar.f();
        }
    }

    public String toString() {
        return this.c.toString();
    }

    public final void c() {
        this.f.clear();
    }

    public final boolean g(io.bidmachine.rendering.internal.controller.e adPhaseController) {
        Intrinsics.checkNotNullParameter(adPhaseController, "adPhaseController");
        return this.f.remove(adPhaseController);
    }

    public final void h(io.bidmachine.rendering.internal.controller.e eVar) {
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        t.b(this.c, "removeAndDestroyAdPhaseController (%s)", eVar);
        g(eVar);
        b(eVar);
    }

    @Override // io.bidmachine.rendering.internal.controller.a
    public boolean b() {
        t.b(this.c, "performShow", new Object[0]);
        this.e.s();
        io.bidmachine.rendering.internal.controller.e eVar = this.m;
        if (eVar != null) {
            if (!this.e.j()) {
                return true;
            }
            d(eVar);
            return true;
        }
        t();
        m();
        return false;
    }

    public final void c(AnimationParams animationParams, Function0 callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!this.e.q()) {
            callback.invoke();
        } else {
            this.b.b(animationParams, callback);
        }
    }

    @Override // io.bidmachine.rendering.internal.controller.a
    public void a() {
        t.b(this.c, "load (cacheType - %s)", h());
        Queue<AdPhaseParams> adPhaseParamsQueue = this.a.getAdPhaseParamsQueue();
        if (adPhaseParamsQueue.isEmpty()) {
            this.b.b(this, new Error("Ad phase queue is empty"));
            return;
        }
        if (l()) {
            this.b.b(this);
            return;
        }
        if (this.e.a()) {
            for (AdPhaseParams adPhaseParams : adPhaseParamsQueue) {
                Tag tag = new Tag("AdPhaseController");
                a(new io.bidmachine.rendering.internal.controller.f(this.d, adPhaseParams, this.c, tag, new io.bidmachine.rendering.internal.state.d(tag.toString(), j.i.a()), new a()));
            }
            this.g.addAll(this.f);
            int i2 = d.$EnumSwitchMapping$0[h().ordinal()];
            if (i2 == 1) {
                m();
                return;
            }
            if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                n();
            } else {
                n();
                m();
            }
        }
    }

    public final void d(io.bidmachine.rendering.internal.controller.e eVar) {
        eVar.b();
        i(eVar);
    }

    public final void e(AnimationParams animationParams, Function0 function0) {
        io.bidmachine.rendering.internal.controller.e eVar = this.m;
        if (eVar != null) {
            a(eVar, animationParams, function0);
        } else if (function0 != null) {
            function0.invoke();
        }
    }

    public final io.bidmachine.rendering.internal.controller.e i() {
        return (io.bidmachine.rendering.internal.controller.e) this.f.peek();
    }

    public final void d(AnimationParams animationParams, Function0 callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!this.e.r()) {
            callback.invoke();
        } else {
            this.b.a(animationParams, callback);
        }
    }

    public final class a implements io.bidmachine.rendering.internal.controller.g {
        public a() {
        }

        @Override // io.bidmachine.rendering.internal.controller.g
        public void a(io.bidmachine.rendering.internal.controller.e adPhaseController, Error error) {
            Intrinsics.checkNotNullParameter(adPhaseController, "adPhaseController");
            Intrinsics.checkNotNullParameter(error, "error");
            t.a(b.this.c, "onAdPhaseFailToLoad (%s) - %s", adPhaseController, error);
            b.this.h(adPhaseController);
            if (!b.this.l()) {
                b.this.a(error);
                return;
            }
            if (!b.this.e.d()) {
                b.this.p();
                return;
            }
            b.this.a(adPhaseController, new Error("Fail to load after show (CacheType - " + b.this.h() + ") - " + error));
        }

        @Override // io.bidmachine.rendering.internal.controller.g
        public void b(io.bidmachine.rendering.internal.controller.e adPhaseController) {
            Intrinsics.checkNotNullParameter(adPhaseController, "adPhaseController");
            t.b(b.this.c, "onAdPhaseLoaded (%s)", adPhaseController);
            if (b.this.k()) {
                b.a(b.this, null, 1, null);
                b.this.q();
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.g
        public void b(io.bidmachine.rendering.internal.controller.e adPhaseController, Error error) {
            Intrinsics.checkNotNullParameter(adPhaseController, "adPhaseController");
            Intrinsics.checkNotNullParameter(error, "error");
            t.a(b.this.c, "onAdPhaseCommitVisibleFailed (%s) - %s", adPhaseController, error);
            b.this.b(error);
        }

        @Override // io.bidmachine.rendering.internal.controller.g
        public void a(io.bidmachine.rendering.internal.controller.e adPhaseController) {
            Intrinsics.checkNotNullParameter(adPhaseController, "adPhaseController");
            t.b(b.this.c, "onAdPhaseCommitVisible (%s)", adPhaseController);
            b.this.e(adPhaseController);
        }
    }

    public final View c(io.bidmachine.rendering.internal.controller.e eVar) {
        return eVar.g().d();
    }

    public final void e(io.bidmachine.rendering.internal.controller.e adPhaseController) {
        Intrinsics.checkNotNullParameter(adPhaseController, "adPhaseController");
        this.g.remove(adPhaseController);
        if (this.g.isEmpty()) {
            o();
        }
    }

    public final void b(AnimationParams animationParams) {
        if (this.i.compareAndSet(false, true)) {
            this.b.f();
            this.n = this.m;
            io.bidmachine.rendering.internal.controller.e eVarI = i();
            if (eVarI == null) {
                a(this.n, this.n == null ? new Error("No ad phase to show") : null);
            } else {
                if (this.n != eVarI) {
                    g(eVarI);
                    eVarI.a(new C1176b(this, this.b));
                    this.m = eVarI;
                }
                this.b.a(eVarI);
                a(animationParams);
            }
            this.i.set(false);
        }
    }

    public static /* synthetic */ void b(b bVar, AnimationParams animationParams, Function0 function0, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            animationParams = null;
        }
        if ((i2 & 2) != 0) {
            function0 = null;
        }
        bVar.e(animationParams, function0);
    }

    public final void b(io.bidmachine.rendering.internal.controller.e eVar) {
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        t.b(this.c, "destroyAdPhaseController (%s)", eVar);
        eVar.destroy();
        e(eVar);
        if (this.m == eVar) {
            this.m = null;
        }
        if (this.n == eVar) {
            this.n = null;
        }
    }

    public final void b(Error error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (this.e.h()) {
            this.b.a(this, error);
            a(this, null, null, 3, null);
        }
    }

    public final void b(AnimationParams animationParams, Function0 callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.k.b(this.l, animationParams, new g(callback));
    }

    @Override // io.bidmachine.rendering.internal.controller.a
    public void f() {
        t.b(this.c, "onExpanded", new Object[0]);
        this.e.r();
        io.bidmachine.rendering.internal.controller.e eVar = this.m;
        if (eVar != null) {
            eVar.f();
        }
    }

    @Override // io.bidmachine.rendering.internal.controller.a
    public void a(boolean z) {
        t.b(this.c, "onShown (isViewability - %s)", Boolean.valueOf(z));
        io.bidmachine.rendering.internal.controller.e eVar = this.m;
        if (eVar == null) {
            return;
        }
        if (z && this.e.g()) {
            f(eVar);
            b(this, null, null, 3, null);
            this.b.c(this);
        }
        if (z || !this.e.m()) {
            return;
        }
        f(eVar);
        i(eVar);
    }

    public static final void a(b this$0, AdPhaseParams adPhaseParams) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.l != null) {
            return;
        }
        io.bidmachine.rendering.internal.view.f fVar = new io.bidmachine.rendering.internal.view.f(this$0.d, adPhaseParams);
        fVar.setListener(this$0.new c());
        fVar.b();
        this$0.l = fVar;
    }

    public static /* synthetic */ void a(b bVar, AnimationParams animationParams, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            animationParams = null;
        }
        bVar.b(animationParams);
    }

    public final void a(io.bidmachine.rendering.internal.controller.e eVar, AnimationParams animationParams, Function0 function0) {
        io.bidmachine.rendering.internal.controller.e eVar2 = this.n;
        if (eVar2 != null) {
            a(eVar2, animationParams);
        }
        this.k.c(c(eVar), animationParams, p.a(new i(eVar, function0)));
    }

    public final void a(io.bidmachine.rendering.internal.controller.e eVar, AnimationParams animationParams) {
        this.k.a(c(eVar), animationParams, p.a(new f(eVar, this)));
    }

    public static /* synthetic */ void a(b bVar, AnimationParams animationParams, Function0 function0, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            animationParams = null;
        }
        if ((i2 & 2) != 0) {
            function0 = null;
        }
        bVar.a(animationParams, function0);
    }

    public final void a(AnimationParams animationParams, Function0 function0) {
        io.bidmachine.rendering.internal.controller.e eVar = this.m;
        Function0 function0A = p.a(new e(eVar, this, function0));
        if (eVar == null) {
            function0A.invoke();
        } else {
            this.k.b(c(eVar), animationParams, function0A);
        }
    }

    public final void a(io.bidmachine.rendering.internal.controller.e eVar, Error error) {
        if (error != null) {
            this.b.a(eVar, error);
        }
        a(this, null, null, 3, null);
    }

    public final boolean a(io.bidmachine.rendering.internal.controller.e adPhaseController) {
        Intrinsics.checkNotNullParameter(adPhaseController, "adPhaseController");
        return this.f.add(adPhaseController);
    }

    public final boolean a(Error error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (!this.e.a(false)) {
            return false;
        }
        this.b.b(this, error);
        return true;
    }

    public final void a(AnimationParams animationParams) {
        io.bidmachine.rendering.internal.view.f fVar = this.l;
        if (fVar != null && this.j.compareAndSet(true, false)) {
            this.k.b(fVar, animationParams, new h(fVar, this));
        }
    }

    public final void a(BrokenCreativeEvent brokenCreativeEvent) {
        Intrinsics.checkNotNullParameter(brokenCreativeEvent, "brokenCreativeEvent");
        if (this.e.l()) {
            return;
        }
        this.b.a(brokenCreativeEvent);
    }
}
