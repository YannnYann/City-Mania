package com.google.android.libraries.ads.mobile.sdk.common;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Image {
    public final Drawable a;
    public final Uri b;
    public final double c;

    public Image(Drawable drawable, Uri uri, double d) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.a = drawable;
        this.b = uri;
        this.c = d;
    }

    public final Drawable getDrawable() {
        return this.a;
    }

    public final Uri getUri() {
        return this.b;
    }
}
