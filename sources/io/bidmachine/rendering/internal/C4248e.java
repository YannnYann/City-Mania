package io.bidmachine.rendering.internal;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import android.view.ViewParent;
import io.bidmachine.rendering.model.animation.AnimationParams;
import io.bidmachine.rendering.model.animation.AnimationTiming;
import io.bidmachine.rendering.model.animation.effect.AnimationEffect;
import io.bidmachine.rendering.model.animation.effect.LayoutAnimationEffect;
import io.bidmachine.util.ViewUtilsKt;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: renamed from: io.bidmachine.rendering.internal.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4248e {
    public final CoroutineDispatcher a;
    public final CoroutineScope b;
    public final Map c;

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.e$a */
    public static final class a extends SuspendLambda implements Function2 {
        public int a;
        public /* synthetic */ Object b;
        public final /* synthetic */ boolean c;
        public final /* synthetic */ List d;
        public final /* synthetic */ View e;
        public final /* synthetic */ C4248e f;
        public final /* synthetic */ AnimationTiming g;
        public final /* synthetic */ boolean h;
        public final /* synthetic */ Function0 i;

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.e$a$a, reason: collision with other inner class name */
        public static final class C1187a extends Lambda implements Function1 {
            public final /* synthetic */ CoroutineScope a;
            public final /* synthetic */ List b;
            public final /* synthetic */ boolean c;
            public final /* synthetic */ Function0 d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1187a(CoroutineScope coroutineScope, List list, boolean z, Function0 function0) {
                super(1);
                this.a = coroutineScope;
                this.b = list;
                this.c = z;
                this.d = function0;
            }

            public final void a(View view) {
                if (view != null) {
                    List list = this.b;
                    boolean z = this.c;
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((AnimationEffect) it.next()).onAnimationEnd(view);
                    }
                    if (!z) {
                        ViewUtilsKt.invisibleViewSafely(view);
                    }
                }
                Function0 function0 = this.d;
                if (function0 != null) {
                    try {
                        function0.invoke();
                        Unit unit = Unit.INSTANCE;
                    } catch (Throwable unused) {
                    }
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                a((View) obj);
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(boolean z, List list, View view, C4248e c4248e, AnimationTiming animationTiming, boolean z2, Function0 function0, Continuation continuation) {
            super(2, continuation);
            this.c = z;
            this.d = list;
            this.e = view;
            this.f = c4248e;
            this.g = animationTiming;
            this.h = z2;
            this.i = function0;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            a aVar = new a(this.c, this.d, this.e, this.f, this.g, this.h, this.i, continuation);
            aVar.b = obj;
            return aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope coroutineScope2 = (CoroutineScope) this.b;
                    if (this.c) {
                        List list = this.d;
                        if (!(list instanceof Collection) || !list.isEmpty()) {
                            Iterator it = list.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                if (((AnimationEffect) it.next()).isLayoutSensitive()) {
                                    View view = this.e;
                                    this.b = coroutineScope2;
                                    this.a = 1;
                                    if (ViewUtilsKt.awaitLayout(view, this) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                }
                            }
                        }
                    }
                    coroutineScope = coroutineScope2;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    coroutineScope = (CoroutineScope) this.b;
                    ResultKt.throwOnFailure(obj);
                }
                ViewUtilsKt.showViewSafely(this.e);
                List<AnimationEffect> list2 = this.d;
                View view2 = this.e;
                boolean z = this.h;
                for (AnimationEffect animationEffect : list2) {
                    animationEffect.onSaveViewState(view2);
                    animationEffect.prepareView(view2, z);
                }
                C4248e c4248e = this.f;
                View view3 = this.e;
                AnimationTiming animationTiming = this.g;
                List list3 = this.d;
                boolean z2 = this.h;
                ArrayList arrayList = new ArrayList();
                Iterator it2 = list3.iterator();
                while (it2.hasNext()) {
                    Animator animatorBuildAnimator = ((AnimationEffect) it2.next()).buildAnimator(view3, z2);
                    if (animatorBuildAnimator != null) {
                        arrayList.add(animatorBuildAnimator);
                    }
                }
                c4248e.a(view3, animationTiming, list3, arrayList, new C1187a(coroutineScope, this.d, this.h, this.i));
            } catch (Throwable unused) {
                Function0 function0 = this.i;
                if (function0 != null) {
                    try {
                        function0.invoke();
                        Unit unit = Unit.INSTANCE;
                    } catch (Throwable unused2) {
                    }
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.e$b */
    public static final class b extends SuspendLambda implements Function2 {
        public Object a;
        public int b;
        public /* synthetic */ Object c;
        public final /* synthetic */ View d;
        public final /* synthetic */ C4248e e;
        public final /* synthetic */ AnimationTiming f;
        public final /* synthetic */ List g;
        public final /* synthetic */ Function0 h;
        public final /* synthetic */ Function1 i;

        /* JADX INFO: renamed from: io.bidmachine.rendering.internal.e$b$a */
        public static final class a extends Lambda implements Function1 {
            public final /* synthetic */ CoroutineScope a;
            public final /* synthetic */ float b;
            public final /* synthetic */ float c;
            public final /* synthetic */ Function0 d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(CoroutineScope coroutineScope, float f, float f2, Function0 function0) {
                super(1);
                this.a = coroutineScope;
                this.b = f;
                this.c = f2;
                this.d = function0;
            }

            public final void a(View view) {
                if (view != null) {
                    float f = this.b;
                    float f2 = this.c;
                    view.setTranslationX(f);
                    view.setTranslationY(f2);
                }
                Function0 function0 = this.d;
                if (function0 != null) {
                    try {
                        function0.invoke();
                        Unit unit = Unit.INSTANCE;
                    } catch (Throwable unused) {
                    }
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                a((View) obj);
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(View view, C4248e c4248e, AnimationTiming animationTiming, List list, Function0 function0, Function1 function1, Continuation continuation) {
            super(2, continuation);
            this.d = view;
            this.e = c4248e;
            this.f = animationTiming;
            this.g = list;
            this.h = function0;
            this.i = function1;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            b bVar = new b(this.d, this.e, this.f, this.g, this.h, this.i, continuation);
            bVar.c = obj;
            return bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineScope coroutineScope;
            View view;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.b;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    coroutineScope = (CoroutineScope) this.c;
                    ViewParent parent = this.d.getParent();
                    io.bidmachine.rendering.internal.view.e eVar = parent instanceof io.bidmachine.rendering.internal.view.e ? (io.bidmachine.rendering.internal.view.e) parent : null;
                    if (eVar == null) {
                        Function0 function0 = this.h;
                        if (function0 != null) {
                            try {
                                function0.invoke();
                                Unit unit = Unit.INSTANCE;
                            } catch (Throwable unused) {
                            }
                        }
                        return Unit.INSTANCE;
                    }
                    View view2 = new View(this.d.getContext());
                    this.i.invoke(view2);
                    if (!ViewUtilsKt.addViewSafely$default(eVar, view2, 0, null, 6, null)) {
                        Function0 function02 = this.h;
                        if (function02 != null) {
                            try {
                                function02.invoke();
                                Unit unit2 = Unit.INSTANCE;
                            } catch (Throwable unused2) {
                            }
                        }
                        return Unit.INSTANCE;
                    }
                    this.c = coroutineScope;
                    this.a = view2;
                    this.b = 1;
                    if (ViewUtilsKt.awaitLayout(view2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    view = view2;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    view = (View) this.a;
                    coroutineScope = (CoroutineScope) this.c;
                    ResultKt.throwOnFailure(obj);
                }
                Rect locationInWindow = ViewUtilsKt.getLocationInWindow(view);
                ViewUtilsKt.removeFromParent(view);
                Rect locationInWindow2 = ViewUtilsKt.getLocationInWindow(this.d);
                float translationX = this.d.getTranslationX();
                float translationY = this.d.getTranslationY();
                ValueAnimator valueAnimatorOfPropertyValuesHolder = ValueAnimator.ofPropertyValuesHolder(PropertyValuesHolder.ofInt("width", locationInWindow2.width(), locationInWindow.width()), PropertyValuesHolder.ofInt("height", locationInWindow2.height(), locationInWindow.height()));
                valueAnimatorOfPropertyValuesHolder.addUpdateListener(new D(this.d));
                Intrinsics.checkNotNullExpressionValue(valueAnimatorOfPropertyValuesHolder, "ofPropertyValuesHolder(\n…ayout))\n                }");
                ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.d, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, translationX, (locationInWindow.left - locationInWindow2.left) + translationX), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, translationY, (locationInWindow.top - locationInWindow2.top) + translationY));
                Intrinsics.checkNotNullExpressionValue(objectAnimatorOfPropertyValuesHolder, "ofPropertyValuesHolder(\n…      )\n                )");
                this.e.a(this.d, this.f, this.g, CollectionsKt__CollectionsKt.listOf((Object[]) new ValueAnimator[]{valueAnimatorOfPropertyValuesHolder, objectAnimatorOfPropertyValuesHolder}), new a(coroutineScope, translationX, translationY, this.h));
            } catch (Throwable unused3) {
                Function0 function03 = this.h;
                if (function03 != null) {
                    try {
                        function03.invoke();
                        Unit unit3 = Unit.INSTANCE;
                    } catch (Throwable unused4) {
                    }
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.e$c */
    public static final class c extends Lambda implements Function0 {
        public final /* synthetic */ WeakReference a;
        public final /* synthetic */ Function0 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(WeakReference weakReference, Function0 function0) {
            super(0);
            this.a = weakReference;
            this.b = function0;
        }

        public final void a() {
            View view = (View) this.a.get();
            if (view != null) {
                ViewUtilsKt.showViewSafely(view);
            }
            Function0 function0 = this.b;
            if (function0 != null) {
                function0.invoke();
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.e$d */
    public static final class d extends SuspendLambda implements Function2 {
        public int a;
        public /* synthetic */ Object b;

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
            d dVar = C4248e.this.new d(continuation);
            dVar.b = obj;
            return dVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            C4248e c4248e = C4248e.this;
            try {
                synchronized (c4248e.c) {
                    Iterator it = c4248e.c.values().iterator();
                    while (it.hasNext()) {
                        try {
                            ((Animator) it.next()).cancel();
                            Unit unit = Unit.INSTANCE;
                        } catch (Throwable unused) {
                        }
                    }
                    c4248e.c.clear();
                    Unit unit2 = Unit.INSTANCE;
                }
            } catch (Throwable unused2) {
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.rendering.internal.e$e, reason: collision with other inner class name */
    public static final class C1188e extends SuspendLambda implements Function2 {
        public int a;
        public /* synthetic */ Object b;
        public final /* synthetic */ View d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1188e(View view, Continuation continuation) {
            super(2, continuation);
            this.d = view;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C1188e) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C1188e c1188e = C4248e.this.new C1188e(this.d, continuation);
            c1188e.b = obj;
            return c1188e;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            C4248e c4248e = C4248e.this;
            try {
                Animator animator = (Animator) c4248e.c.remove(this.d);
                if (animator != null) {
                    animator.end();
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Throwable unused) {
            }
            return Unit.INSTANCE;
        }
    }

    public C4248e(j coroutineDispatchers) {
        Intrinsics.checkNotNullParameter(coroutineDispatchers, "coroutineDispatchers");
        CoroutineDispatcher coroutineDispatcherE = coroutineDispatchers.e();
        this.a = coroutineDispatcherE;
        this.b = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default(null, 1, null).plus(coroutineDispatcherE));
        Map mapSynchronizedMap = Collections.synchronizedMap(new WeakHashMap());
        Intrinsics.checkNotNullExpressionValue(mapSynchronizedMap, "synchronizedMap(WeakHashMap())");
        this.c = mapSynchronizedMap;
    }

    public final void b(View view, AnimationParams animationParams, Function0 function0) {
        a(view);
        if (view != null && animationParams != null) {
            a(view, false, false, animationParams, function0);
        } else if (function0 != null) {
            function0.invoke();
        }
    }

    public final void c(View view, AnimationParams animationParams, Function0 function0) {
        a(view);
        if (view != null && animationParams != null) {
            a(view, true, true, animationParams, function0);
        } else if (function0 != null) {
            function0.invoke();
        }
    }

    public final void a(View view, boolean z, AnimationParams animationParams, Function0 function0) {
        a(view);
        if (view == null || animationParams == null) {
            if (function0 != null) {
                function0.invoke();
            }
        } else if (z != ViewUtilsKt.isViewVisible(view)) {
            a(view, z, false, animationParams, function0);
        } else if (function0 != null) {
            function0.invoke();
        }
    }

    public /* synthetic */ C4248e(j jVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? j.i.a() : jVar);
    }

    public final void b(View view, AnimationParams animationParams, Function1 layoutParamsApplier, Function0 function0) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(layoutParamsApplier, "layoutParamsApplier");
        a(view);
        if (animationParams != null) {
            a(view, animationParams, layoutParamsApplier, function0);
        } else if (function0 != null) {
            function0.invoke();
        }
    }

    public final void a(View view, AnimationParams animationParams, Function0 function0) {
        a(view);
        if (view != null && animationParams != null) {
            a(view, false, false, animationParams, (Function0) new c(new WeakReference(view), function0));
        } else if (function0 != null) {
            function0.invoke();
        }
    }

    public final void a(View view, boolean z, boolean z2, AnimationParams animationParams, Function0 function0) {
        AnimationTiming animationTiming = animationParams.getAnimationTiming();
        List<AnimationEffect> animationEffectList = animationParams.getAnimationEffectList();
        if (!animationEffectList.isEmpty()) {
            BuildersKt__Builders_commonKt.launch$default(this.b, this.a, null, new a(z2, animationEffectList, view, this, animationTiming, z, function0, null), 2, null);
        } else if (function0 != null) {
            function0.invoke();
        }
    }

    public final void a(View view, AnimationParams animationParams, Function1 function1, Function0 function0) {
        Object next;
        AnimationTiming animationTiming = animationParams.getAnimationTiming();
        List<AnimationEffect> animationEffectList = animationParams.getAnimationEffectList();
        Iterator<T> it = animationEffectList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (((AnimationEffect) next) instanceof LayoutAnimationEffect) {
                    break;
                }
            }
        }
        if (((AnimationEffect) next) != null) {
            BuildersKt__Builders_commonKt.launch$default(this.b, this.a, null, new b(view, this, animationTiming, animationEffectList, function0, function1, null), 2, null);
        } else if (function0 != null) {
            function0.invoke();
        }
    }

    public final void a(View view) {
        if (view == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(this.b, this.a, null, new C1188e(view, null), 2, null);
    }

    public final void a() {
        CoroutineScopeKt.cancel$default(this.b, null, 1, null);
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.a), null, null, new d(null), 3, null);
    }

    public final void a(View view, AnimationTiming animationTiming, List list, List list2, Function1 function1) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setInterpolator(animationTiming.getAnimationEasing().createInterpolator());
        animatorSet.setDuration(Duration.m2881getInWholeMillisecondsimpl(animationTiming.m2715getDurationUwyO8pc()));
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (!((AnimationEffect) it.next()).isApplicableWithLayers()) {
                    break;
                }
            }
            AbstractC4250f.a(animatorSet, view);
        } else {
            AbstractC4250f.a(animatorSet, view);
        }
        animatorSet.playTogether(list2);
        animatorSet.addListener(new C4252h(view, this.c));
        animatorSet.addListener(new u(view, function1));
        this.c.put(view, animatorSet);
        animatorSet.start();
    }
}
