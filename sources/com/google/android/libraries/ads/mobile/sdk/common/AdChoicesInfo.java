package com.google.android.libraries.ads.mobile.sdk.common;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AdChoicesInfo {
    public final String a;
    public final List b;

    public AdChoicesInfo(String text, List<Image> images) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(images, "images");
        this.a = text;
        this.b = images;
    }
}
