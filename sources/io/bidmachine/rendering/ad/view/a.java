package io.bidmachine.rendering.ad.view;

import io.bidmachine.rendering.model.animation.AnimationParams;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    public final String a;
    public final AnimationParams b;
    public final Function0 c;

    public a(String tag, AnimationParams animationParams, Function0 function0) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.a = tag;
        this.b = animationParams;
        this.c = function0;
    }

    public final AnimationParams a() {
        return this.b;
    }

    public final Function0 b() {
        return this.c;
    }

    public final String c() {
        return this.a;
    }
}
