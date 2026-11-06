package io.bidmachine.rendering.model;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class Color {
    public final ColorSource a;
    public final boolean b;

    public Color(ColorSource source, boolean z) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.a = source;
        this.b = z;
    }

    public final ColorSource getSource() {
        return this.a;
    }

    public final boolean isContextBased() {
        return this.b;
    }

    public /* synthetic */ Color(ColorSource colorSource, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(colorSource, (i & 2) != 0 ? false : z);
    }
}
