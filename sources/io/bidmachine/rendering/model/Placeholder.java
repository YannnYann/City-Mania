package io.bidmachine.rendering.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class Placeholder {
    public final PlaceholderSource a;

    public Placeholder(PlaceholderSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.a = source;
    }

    public final PlaceholderSource getSource() {
        return this.a;
    }
}
