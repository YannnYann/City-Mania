package io.bidmachine.rendering.internal;

import android.animation.Animator;
import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.bidmachine.rendering.internal.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC4250f {
    public static final Animator a(Animator animator, View view) {
        Intrinsics.checkNotNullParameter(animator, "<this>");
        Intrinsics.checkNotNullParameter(view, "view");
        animator.addListener(new q(view));
        return animator;
    }
}
