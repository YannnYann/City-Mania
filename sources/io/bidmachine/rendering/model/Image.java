package io.bidmachine.rendering.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class Image {
    public final ScaleType a;
    public final Resource b;

    public Image(ScaleType scaleType, Resource resource) {
        Intrinsics.checkNotNullParameter(scaleType, "scaleType");
        Intrinsics.checkNotNullParameter(resource, "resource");
        this.a = scaleType;
        this.b = resource;
    }

    public final Resource getResource() {
        return this.b;
    }

    public final ScaleType getScaleType() {
        return this.a;
    }
}
