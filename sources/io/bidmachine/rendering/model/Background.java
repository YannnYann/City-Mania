package io.bidmachine.rendering.model;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
public final class Background {
    public final float a;
    public final BackgroundSource b;
    public final Placeholder c;
    public final boolean d;

    public final float getOpacity() {
        return this.a;
    }

    public final Placeholder getPlaceholder() {
        return this.c;
    }

    public final BackgroundSource getSource() {
        return this.b;
    }

    public final boolean isContextBased() {
        return this.d;
    }

    public Background(float f, BackgroundSource backgroundSource, Placeholder placeholder) {
        this.a = f;
        this.b = backgroundSource;
        this.c = placeholder;
        this.d = (backgroundSource instanceof ColorBackgroundSource) && ((ColorBackgroundSource) backgroundSource).getColor().isContextBased();
    }

    public /* synthetic */ Background(float f, BackgroundSource backgroundSource, Placeholder placeholder, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 1.0f : f, (i & 2) != 0 ? null : backgroundSource, (i & 4) != 0 ? null : placeholder);
    }
}
