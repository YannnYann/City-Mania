package io.bidmachine.rendering.internal;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import io.bidmachine.rendering.Repository;
import io.bidmachine.rendering.internal.H;
import io.bidmachine.rendering.model.AdPhaseParams;
import io.bidmachine.rendering.model.Background;
import io.bidmachine.rendering.model.Border;
import io.bidmachine.rendering.model.ElementLayoutParams;
import io.bidmachine.rendering.model.animation.AnimationParams;
import io.bidmachine.util.ViewUtils;
import io.bidmachine.util.ViewUtilsKt;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: io.bidmachine.rendering.internal.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4240c {
    public static final a g = new a(null);
    public final Object a;
    public final AdPhaseParams b;
    public final ViewGroup c;
    public final HashSet d;
    public final C4248e e;
    public final H f;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.c$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.c$b */
    public static final class b extends Lambda implements Function0 {
        public final /* synthetic */ Function1 a;
        public final /* synthetic */ View b;
        public final /* synthetic */ Function0 c;
        public final /* synthetic */ Function0 d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Function1 function1, View view, Function0 function0, Function0 function02) {
            super(0);
            this.a = function1;
            this.b = view;
            this.c = function0;
            this.d = function02;
        }

        public final void a() {
            this.a.invoke(this.b);
            this.c.invoke();
            this.d.invoke();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.c$c, reason: collision with other inner class name */
    public static final class C1175c extends Lambda implements Function1 {
        public final /* synthetic */ ElementLayoutParams a;
        public final /* synthetic */ InterfaceC4239b b;
        public final /* synthetic */ List c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1175c(ElementLayoutParams elementLayoutParams, InterfaceC4239b interfaceC4239b, List list) {
            super(1);
            this.a = elementLayoutParams;
            this.b = interfaceC4239b;
            this.c = list;
        }

        public final void a(View it) {
            Intrinsics.checkNotNullParameter(it, "it");
            AbstractC4247d.a(this.a, this.b, it, this.c);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((View) obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C4240c(Object assetsHolder, Context context, Repository repository, AdPhaseParams adPhaseParams) {
        Intrinsics.checkNotNullParameter(assetsHolder, "assetsHolder");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(repository, "repository");
        Intrinsics.checkNotNullParameter(adPhaseParams, "adPhaseParams");
        this.a = assetsHolder;
        this.b = adPhaseParams;
        this.c = new FrameLayout(context);
        this.d = new HashSet();
        H hA = null;
        this.e = new C4248e(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0);
        Background background = adPhaseParams.getBackground();
        if (background != null) {
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            hA = I.a(background, applicationContext, repository);
        }
        this.f = hA;
    }

    public final void a(ViewGroup rootContainer, ViewGroup container, List ads, List controls) {
        Intrinsics.checkNotNullParameter(rootContainer, "rootContainer");
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(ads, "ads");
        Intrinsics.checkNotNullParameter(controls, "controls");
        Context context = container.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "container.context");
        a();
        H h = this.f;
        if (h != null) {
            H.a(h, this.a, (View) this.c, (Integer) null, (Border) null, false, (H.a) null, 60, (Object) null);
        }
        io.bidmachine.rendering.internal.view.e eVar = new io.bidmachine.rendering.internal.view.e(context);
        eVar.setTag("ads");
        Iterator it = ads.iterator();
        while (it.hasNext()) {
            InterfaceC4239b interfaceC4239b = (InterfaceC4239b) it.next();
            AbstractC4247d.a(eVar, rootContainer, ads, interfaceC4239b);
            this.d.add(interfaceC4239b);
        }
        ViewUtilsKt.addViewSafely$default(this.c, eVar, 0, ViewUtils.createMatchParentParams(), 2, null);
        io.bidmachine.rendering.internal.view.e eVar2 = new io.bidmachine.rendering.internal.view.e(context);
        eVar2.setTag("controls");
        Iterator it2 = controls.iterator();
        while (it2.hasNext()) {
            AbstractC4247d.a(eVar2, rootContainer, controls, (InterfaceC4239b) it2.next());
        }
        ViewUtilsKt.addViewSafely$default(this.c, eVar2, 0, ViewUtils.createMatchParentParams(), 2, null);
        ViewUtilsKt.addViewSafely(container, this.c, 0, ViewUtils.createMatchParentParams());
    }

    public final void b() {
        this.e.a();
        a();
    }

    public final AdPhaseParams c() {
        return this.b;
    }

    public final ViewGroup d() {
        return this.c;
    }

    public final void e() {
        H h = this.f;
        if (h != null) {
            H.a(h, this.a, (View) this.c, (Integer) null, (Border) null, false, new H.a(0L, null, 3, null), 12, (Object) null);
        }
    }

    public final void a() {
        H h = this.f;
        if (h != null) {
            h.a();
        }
        this.d.clear();
        this.c.removeAllViews();
        ViewUtilsKt.removeFromParent(this.c);
    }

    public final void a(InterfaceC4239b adElement, List adElements, ElementLayoutParams elementLayoutParams, AnimationParams animationParams, Function0 onLayoutChanged, Function0 callback) {
        Intrinsics.checkNotNullParameter(adElement, "adElement");
        Intrinsics.checkNotNullParameter(adElements, "adElements");
        Intrinsics.checkNotNullParameter(onLayoutChanged, "onLayoutChanged");
        Intrinsics.checkNotNullParameter(callback, "callback");
        View viewJ = adElement.j();
        if (viewJ == null) {
            callback.invoke();
            return;
        }
        if (elementLayoutParams == null) {
            elementLayoutParams = adElement.g().getElementLayoutParams();
        }
        if (Intrinsics.areEqual(elementLayoutParams, adElement.m())) {
            callback.invoke();
        } else {
            C1175c c1175c = new C1175c(elementLayoutParams, adElement, adElements);
            this.e.b(viewJ, animationParams, c1175c, new b(c1175c, viewJ, callback, onLayoutChanged));
        }
    }

    public final void a(io.bidmachine.rendering.internal.adform.a adForm) {
        Intrinsics.checkNotNullParameter(adForm, "adForm");
        this.d.remove(adForm);
        if (this.d.isEmpty()) {
            e();
        }
    }
}
