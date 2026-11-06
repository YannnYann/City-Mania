package io.bidmachine.rendering.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class ImageBackgroundSource implements BackgroundSource {
    public final Image a;

    public ImageBackgroundSource(Image image) {
        Intrinsics.checkNotNullParameter(image, "image");
        this.a = image;
    }

    public final Image getImage() {
        return this.a;
    }
}
