package com.vungle.ads.internal;

import android.view.View;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class y0 implements View.OnAttachStateChangeListener {
    public final WeakReference a;

    public y0(c1 tracker) {
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        this.a = new WeakReference(tracker);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View v) {
        Intrinsics.checkNotNullParameter(v, "v");
        c1 c1Var = (c1) this.a.get();
        if (c1Var != null) {
            c1.a(c1Var, v);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View v) {
        Intrinsics.checkNotNullParameter(v, "v");
        c1 c1Var = (c1) this.a.get();
        if (c1Var != null) {
            c1.b(c1Var, v);
        }
    }
}
