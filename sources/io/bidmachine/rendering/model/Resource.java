package io.bidmachine.rendering.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class Resource {
    public final ResourceSource a;

    public Resource(ResourceSource source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.a = source;
    }

    public final ResourceSource getSource() {
        return this.a;
    }
}
