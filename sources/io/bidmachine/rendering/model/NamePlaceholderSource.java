package io.bidmachine.rendering.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class NamePlaceholderSource implements PlaceholderSource {
    public final String a;

    public NamePlaceholderSource(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.a = name;
    }

    public final String getName() {
        return this.a;
    }
}
