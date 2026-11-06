package com.vungle.ads.internal;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class c1 {
    public final Map a;
    public final Handler b;
    public final Rect c;
    public final ViewTreeObserver.OnPreDrawListener d;
    public final b1 e;
    public boolean f;

    public c1(WeakHashMap trackedViews, Handler visibilityHandler) {
        Intrinsics.checkNotNullParameter(trackedViews, "trackedViews");
        Intrinsics.checkNotNullParameter(visibilityHandler, "visibilityHandler");
        this.a = trackedViews;
        this.b = visibilityHandler;
        this.c = new Rect();
        this.d = new ViewTreeObserver.OnPreDrawListener() { // from class: com.vungle.ads.internal.c1$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                return c1.d(this.f$0);
            }
        };
        this.e = new b1(this);
    }

    public static final void b(c1 c1Var, View view) {
        ViewTreeObserver viewTreeObserver;
        a1 a1Var = (a1) c1Var.a.get(view);
        if (a1Var == null || (viewTreeObserver = a1Var.d) == null) {
            return;
        }
        a1Var.d = null;
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(c1Var.d);
        }
    }

    public static final boolean d(c1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (!this$0.f) {
            this$0.f = true;
            this$0.b.postDelayed(this$0.e, 100L);
        }
        return true;
    }

    public static final boolean a(c1 c1Var, View view, int i) {
        c1Var.getClass();
        if (view != null && view.getVisibility() == 0 && view.getParent() != null) {
            ViewParent parent = view.getParent();
            while (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                if (viewGroup.getVisibility() != 0) {
                    boolean z = com.vungle.ads.internal.util.v.a;
                    com.vungle.ads.internal.util.u.c("ImpressionTracker", "Parent visibility is not visible: " + parent);
                    return false;
                }
                parent = viewGroup.getParent();
            }
            if (view.getGlobalVisibleRect(c1Var.c)) {
                long jHeight = ((long) c1Var.c.height()) * ((long) c1Var.c.width());
                long height = ((long) view.getHeight()) * ((long) view.getWidth());
                if (height > 0 && ((long) 100) * jHeight >= ((long) i) * height) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final void b(c1 c1Var) {
        if (c1Var.f) {
            return;
        }
        c1Var.f = true;
        c1Var.b.postDelayed(c1Var.e, 100L);
    }

    public final void a(View view, z0 z0Var) {
        a1 a1Var;
        ViewTreeObserver viewTreeObserver;
        ViewTreeObserver viewTreeObserver2;
        Intrinsics.checkNotNullParameter(view, "view");
        a1 a1Var2 = (a1) this.a.get(view);
        if (a1Var2 == null) {
            a1Var2 = new a1(new y0(this));
            this.a.put(view, a1Var2);
            view.addOnAttachStateChangeListener(a1Var2.a());
            if (view.isAttachedToWindow() && (a1Var = (a1) this.a.get(view)) != null && a1Var.d() != (viewTreeObserver = view.getViewTreeObserver())) {
                a1 a1Var3 = (a1) this.a.get(view);
                if (a1Var3 != null && (viewTreeObserver2 = a1Var3.d) != null) {
                    a1Var3.d = null;
                    if (viewTreeObserver2.isAlive()) {
                        viewTreeObserver2.removeOnPreDrawListener(this.d);
                    }
                }
                if (!viewTreeObserver.isAlive()) {
                    boolean z = com.vungle.ads.internal.util.v.a;
                    Intrinsics.checkNotNullExpressionValue("c1", "TAG");
                    com.vungle.ads.internal.util.u.a("c1", "ViewTreeObserver of the tracked view's window is not alive, falling back to polling");
                } else {
                    viewTreeObserver.addOnPreDrawListener(this.d);
                    a1Var.a(viewTreeObserver);
                }
            }
            if (!this.f) {
                this.f = true;
                this.b.postDelayed(this.e, 100L);
            }
        }
        a1Var2.e();
        a1Var2.a(z0Var);
    }

    public c1() {
        this(new WeakHashMap(10), new Handler(Looper.getMainLooper()));
    }

    public static final void a(c1 c1Var, View view) {
        ViewTreeObserver viewTreeObserver;
        ViewTreeObserver viewTreeObserver2;
        if (c1Var.a.get(view) != null) {
            a1 a1Var = (a1) c1Var.a.get(view);
            if (a1Var != null && a1Var.d() != (viewTreeObserver = view.getViewTreeObserver())) {
                a1 a1Var2 = (a1) c1Var.a.get(view);
                if (a1Var2 != null && (viewTreeObserver2 = a1Var2.d) != null) {
                    a1Var2.d = null;
                    if (viewTreeObserver2.isAlive()) {
                        viewTreeObserver2.removeOnPreDrawListener(c1Var.d);
                    }
                }
                if (!viewTreeObserver.isAlive()) {
                    boolean z = com.vungle.ads.internal.util.v.a;
                    Intrinsics.checkNotNullExpressionValue("c1", "TAG");
                    com.vungle.ads.internal.util.u.a("c1", "ViewTreeObserver of the tracked view's window is not alive, falling back to polling");
                } else {
                    viewTreeObserver.addOnPreDrawListener(c1Var.d);
                    a1Var.a(viewTreeObserver);
                }
            }
            if (c1Var.f) {
                return;
            }
            c1Var.f = true;
            c1Var.b.postDelayed(c1Var.e, 100L);
        }
    }

    public final void a(View view) {
        ViewTreeObserver viewTreeObserver;
        Intrinsics.checkNotNullParameter(view, "view");
        a1 a1Var = (a1) this.a.get(view);
        if (a1Var != null && (viewTreeObserver = a1Var.d) != null) {
            a1Var.d = null;
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.d);
            }
        }
        a1 a1Var2 = (a1) this.a.remove(view);
        if (a1Var2 != null) {
            view.removeOnAttachStateChangeListener(a1Var2.a());
        }
    }

    public final void a() {
        Iterator it = CollectionsKt___CollectionsKt.toList(this.a.keySet()).iterator();
        while (it.hasNext()) {
            a((View) it.next());
        }
        this.b.removeCallbacks(this.e);
        this.f = false;
    }
}
