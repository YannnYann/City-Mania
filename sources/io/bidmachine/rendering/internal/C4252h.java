package io.bidmachine.rendering.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.bidmachine.rendering.internal.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4252h extends AnimatorListenerAdapter {
    public final Map a;
    public final WeakReference b;

    public C4252h(View view, Map animators) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(animators, "animators");
        this.a = animators;
        this.b = new WeakReference(view);
    }

    public final void a() {
        Map map = this.a;
        View view = (View) this.b.get();
        if (view == null) {
            return;
        }
        map.remove(view);
        this.b.clear();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        a();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        a();
    }
}
