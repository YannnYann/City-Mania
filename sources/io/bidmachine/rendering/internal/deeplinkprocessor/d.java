package io.bidmachine.rendering.internal.deeplinkprocessor;

import android.net.Uri;
import com.unity3d.services.core.network.model.HttpRequest;
import io.bidmachine.util.UrlUtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class d {
    public static final Uri a(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Uri.Builder builderPath = new Uri.Builder().scheme(HttpRequest.DEFAULT_SCHEME).authority("play.google.com").path("/d");
        Intrinsics.checkNotNullExpressionValue(builderPath, "Builder()\n        .schem…path(INLINE_INSTALL_PATH)");
        Uri uriBuild = UrlUtilsKt.appendQueryParametersFrom$default(builderPath, uri, null, 2, null).build();
        Intrinsics.checkNotNullExpressionValue(uriBuild, "Builder()\n        .schem…om(this)\n        .build()");
        return uriBuild;
    }
}
