package io.bidmachine.rendering.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class ColorPlaceholderSource implements PlaceholderSource {
    public final Color a;

    public ColorPlaceholderSource(Color color) {
        Intrinsics.checkNotNullParameter(color, "color");
        this.a = color;
    }

    public final Color getColor() {
        return this.a;
    }
}
