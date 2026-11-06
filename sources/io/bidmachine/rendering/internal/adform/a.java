package io.bidmachine.rendering.internal.adform;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import io.bidmachine.iab.utils.ClickAreaFactory;
import io.bidmachine.rendering.Repository;
import io.bidmachine.rendering.internal.C4248e;
import io.bidmachine.rendering.internal.G;
import io.bidmachine.rendering.internal.H;
import io.bidmachine.rendering.internal.I;
import io.bidmachine.rendering.internal.InterfaceC4239b;
import io.bidmachine.rendering.internal.InterfaceC4251g;
import io.bidmachine.rendering.internal.j;
import io.bidmachine.rendering.internal.t;
import io.bidmachine.rendering.model.AdElementParams;
import io.bidmachine.rendering.model.AppearanceParams;
import io.bidmachine.rendering.model.Background;
import io.bidmachine.rendering.model.Border;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.rendering.model.ElementLayoutParams;
import io.bidmachine.rendering.model.Padding;
import io.bidmachine.rendering.model.PaddingKt;
import io.bidmachine.rendering.model.animation.AnimationParams;
import io.bidmachine.rendering.utils.VisibilityChanger;
import io.bidmachine.util.ErrorKt;
import io.bidmachine.util.UiUtilsKt;
import io.bidmachine.util.ViewUtils;
import io.bidmachine.util.ViewUtilsKt;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a extends G implements InterfaceC4239b, View.OnClickListener, View.OnTouchListener, VisibilityChanger {
    public final Object d;
    public final Repository e;
    public final AdElementParams f;
    public final c g;
    public final io.bidmachine.rendering.internal.detector.brokencreative.a h;
    public final Context i;
    public final AppearanceParams j;
    public final H k;
    public final AtomicBoolean l;
    public final AtomicBoolean m;
    public final AtomicBoolean n;
    public final AtomicBoolean o;
    public final AtomicReference p;
    public final C4248e q;
    public ViewGroup r;
    public volatile boolean s;
    public volatile boolean t;
    public volatile boolean u;
    public volatile boolean v;
    public volatile ElementLayoutParams w;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.adform.a$a, reason: collision with other inner class name */
    public static final class C1165a extends Lambda implements Function0 {
        public final /* synthetic */ boolean b;
        public final /* synthetic */ Function0 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1165a(boolean z, Function0 function0) {
            super(0);
            this.b = z;
            this.c = function0;
        }

        public final void a() {
            a.this.setVisibility(this.b);
            this.c.invoke();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public a(Context context, Object assetsHolder, Repository repository, AdElementParams adElementParams, c adFormListener, io.bidmachine.rendering.internal.event.a eventCallback, io.bidmachine.rendering.internal.detector.brokencreative.a aVar) {
        super(eventCallback);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adElementParams, "adElementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
        this.d = assetsHolder;
        this.e = repository;
        this.f = adElementParams;
        this.g = adFormListener;
        this.h = aVar;
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.i = applicationContext;
        AppearanceParams appearanceParams = adElementParams.getAppearanceParams();
        this.j = appearanceParams;
        Background background = appearanceParams.getBackground();
        j jVar = null;
        Object[] objArr = 0;
        this.k = background != null ? I.a(background, applicationContext, repository) : null;
        this.l = new AtomicBoolean(false);
        this.m = new AtomicBoolean(false);
        this.n = new AtomicBoolean(false);
        this.o = new AtomicBoolean(false);
        this.p = new AtomicReference(null);
        this.q = new C4248e(jVar, 1, objArr == true ? 1 : 0);
        this.t = true;
        this.v = this.t;
    }

    public final Repository A() {
        return this.e;
    }

    public abstract View B();

    public final boolean C() {
        return this.l.get();
    }

    public final void D() {
        this.m.set(true);
        this.g.e(this);
        u();
        t();
    }

    public void E() {
    }

    public void F() {
        this.s = false;
        v();
    }

    public void G() {
        this.s = true;
        v();
    }

    public final void H() {
        io.bidmachine.rendering.internal.detector.brokencreative.a aVar = this.h;
        if (aVar != null) {
            aVar.i();
        }
    }

    public void I() {
        F();
    }

    public void J() {
        G();
    }

    public void K() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean L() {
        View viewB = B();
        if (viewB == 0) {
            return false;
        }
        Padding padding = this.j.getPadding();
        if (padding != null && !padding.isZero()) {
            FrameLayout frameLayout = new FrameLayout(this.i);
            frameLayout.setId(ViewUtils.generateViewId());
            PaddingKt.setPadding(frameLayout, padding);
            frameLayout.addView(viewB, new FrameLayout.LayoutParams(-1, -1));
            this.r = frameLayout;
        }
        View viewJ = j();
        if (viewJ == null) {
            return false;
        }
        viewJ.setId(ViewUtils.generateViewId());
        viewJ.setTag(this.f.getName());
        Boolean clickable = this.j.getClickable();
        if (clickable != null && clickable.booleanValue()) {
            viewJ.setOnTouchListener(this);
            viewJ.setOnClickListener(this);
        }
        Float opacity = this.j.getOpacity();
        if (opacity != null) {
            viewJ.setAlpha(opacity.floatValue());
        }
        Boolean visible = this.j.getVisible();
        if (visible != null) {
            setVisibility(visible.booleanValue());
        }
        if (viewB instanceof InterfaceC4251g) {
            ((InterfaceC4251g) viewB).a(this.j);
            return true;
        }
        a(viewB, this.k);
        return true;
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public void a(ElementLayoutParams elementLayoutParams) {
        this.w = elementLayoutParams;
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public final void b() {
        this.n.set(true);
        u();
    }

    public void c(boolean z) {
    }

    @Override // io.bidmachine.rendering.internal.G, io.bidmachine.rendering.internal.InterfaceC4239b
    public void destroy() {
        super.destroy();
        this.q.a();
        H h = this.k;
        if (h != null) {
            h.a();
        }
        io.bidmachine.rendering.internal.detector.brokencreative.a aVar = this.h;
        if (aVar != null) {
            aVar.c();
        }
        E();
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public final void e() {
        this.n.set(false);
        this.p.set(null);
        I();
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public final AdElementParams g() {
        return this.f;
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public View j() {
        ViewGroup viewGroup = this.r;
        return viewGroup != null ? viewGroup : B();
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public final void k() {
        if (!this.f.isPrerender() && this.l.compareAndSet(false, true)) {
            try {
                K();
            } catch (Throwable th) {
                t.b(th);
                this.g.a(this, ErrorKt.toError(th));
            }
        }
    }

    @Override // io.bidmachine.rendering.utils.VisibilityChanger
    public void lockVisibility(boolean z) {
        setVisibility(z);
        this.u = true;
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public ElementLayoutParams m() {
        return this.w;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        a((ClickData) null);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent event) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getAction() == 1) {
            a(UiUtilsKt.isRealMotionEvent(event) ? io.bidmachine.rendering.utils.UiUtilsKt.toClickData(event, view) : null);
        }
        return true;
    }

    @Override // io.bidmachine.rendering.internal.G
    public String r() {
        return this.f.getName();
    }

    public final boolean s() {
        return this.f.isPrerender() || this.m.get();
    }

    public void setVisibility(boolean z) {
        this.t = z;
        if (this.u) {
            return;
        }
        if (z) {
            ViewUtilsKt.showViewSafely(j());
        } else {
            ViewUtilsKt.hideViewSafely(j());
        }
        this.v = z;
        v();
    }

    public final void t() {
        Boolean bool;
        if (s() && (bool = (Boolean) this.p.getAndSet(null)) != null) {
            c(bool.booleanValue());
        }
    }

    public String toString() {
        return "type - " + this.f.getAdElementType() + ", name - " + this.f.getName();
    }

    public final void u() {
        if (s() && this.n.compareAndSet(true, false)) {
            J();
        }
    }

    @Override // io.bidmachine.rendering.utils.VisibilityChanger
    public void unlockVisibility() {
        this.u = false;
        setVisibility(this.t);
    }

    public final void v() {
        View viewB = B();
        if (viewB == null) {
            return;
        }
        if (this.v && this.s) {
            if (this.o.compareAndSet(false, true)) {
                a(viewB);
            }
        } else if (this.o.compareAndSet(true, false)) {
            H();
        }
    }

    public final c w() {
        return this.g;
    }

    public final AppearanceParams x() {
        return this.j;
    }

    public final Context y() {
        return this.i;
    }

    public final Object z() {
        return this.d;
    }

    public void a(View view, H h) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (h != null) {
            H.a(h, this.d, view, (Integer) null, (Border) null, false, (H.a) null, 60, (Object) null);
        }
    }

    @Override // io.bidmachine.rendering.internal.G
    public final void b(boolean z) {
        this.p.set(Boolean.valueOf(z));
        t();
    }

    @Override // io.bidmachine.rendering.internal.InterfaceC4239b
    public void a(ClickAreaFactory clickAreaFactory) {
        Intrinsics.checkNotNullParameter(clickAreaFactory, "clickAreaFactory");
        a((ClickData) null);
    }

    public void a(ClickData clickData) {
        io.bidmachine.rendering.internal.event.a aVarQ = q();
        View viewB = B();
        aVarQ.a(viewB != null ? viewB.getId() : -1, clickData);
    }

    public final void b(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        t.a(r(), message, new Object[0]);
    }

    public final void a(boolean z, AnimationParams animationParams, Function0 callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.q.a(j(), z, animationParams, new C1165a(z, callback));
    }

    public final void a(View view) {
        View view2;
        Intrinsics.checkNotNullParameter(view, "view");
        H h = this.k;
        if (h != null) {
            view2 = view;
            H.a(h, this.d, view2, (Integer) null, (Border) null, false, new H.a(0L, null, 3, null), 12, (Object) null);
        } else {
            view2 = view;
        }
        io.bidmachine.rendering.internal.detector.brokencreative.a aVar = this.h;
        if (aVar != null) {
            aVar.a(view2);
        }
        this.g.a(this);
    }
}
