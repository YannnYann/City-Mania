package io.bidmachine.rendering.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class ColorBackgroundSource implements BackgroundSource {
    public final Color a;

    public ColorBackgroundSource(Color color) {
        Intrinsics.checkNotNullParameter(color, "color");
        this.a = color;
    }

    public final Color getColor() {
        return this.a;
    }
}
