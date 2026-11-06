package com.vungle.ads.internal;

import android.view.View;
import android.view.ViewTreeObserver;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a1 {
    public final View.OnAttachStateChangeListener a;
    public int b;
    public z0 c;
    public ViewTreeObserver d;

    public a1(y0 attachListener) {
        Intrinsics.checkNotNullParameter(attachListener, "attachListener");
        this.a = attachListener;
    }

    public final View.OnAttachStateChangeListener a() {
        return this.a;
    }

    public final z0 b() {
        return this.c;
    }

    public final int c() {
        return this.b;
    }

    public final ViewTreeObserver d() {
        return this.d;
    }

    public final void e() {
        this.b = 1;
    }

    public final void a(z0 z0Var) {
        this.c = z0Var;
    }

    public final void a(ViewTreeObserver viewTreeObserver) {
        this.d = viewTreeObserver;
    }
}
