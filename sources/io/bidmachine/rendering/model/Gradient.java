package io.bidmachine.rendering.model;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class Gradient {
    public final GradientType a;
    public final GradientDirection b;
    public final List c;

    public Gradient(GradientType type, GradientDirection direction, List<Integer> colors) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(colors, "colors");
        this.a = type;
        this.b = direction;
        this.c = colors;
    }

    public final List<Integer> getColors() {
        return this.c;
    }

    public final GradientDirection getDirection() {
        return this.b;
    }

    public final GradientType getType() {
        return this.a;
    }
}
