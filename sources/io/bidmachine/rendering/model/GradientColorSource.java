package io.bidmachine.rendering.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class GradientColorSource implements ColorSource {
    public final Gradient a;

    public GradientColorSource(Gradient gradient) {
        Intrinsics.checkNotNullParameter(gradient, "gradient");
        this.a = gradient;
    }

    public final Gradient getGradient() {
        return this.a;
    }
}
