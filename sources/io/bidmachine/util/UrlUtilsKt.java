package io.bidmachine.util;

import android.net.Uri;
import com.unity3d.services.core.network.model.HttpRequest;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: UrlUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class UrlUtilsKt {
    public static final Uri parseUriSafely(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            return parseUri(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final Uri parseUri(String str) {
        Uri validUri;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Uri uri = Uri.parse(str);
        Intrinsics.checkNotNullExpressionValue(uri, "parse(this)");
        String scheme = uri.getScheme();
        if ((scheme == null || scheme.length() == 0) && !StringsKt__StringsJVMKt.startsWith$default(str, "/", false, 2, null) && (validUri = Utils.getValidUri(str)) != null) {
            String scheme2 = validUri.getScheme();
            if (scheme2 != null && scheme2.length() > 0) {
                return validUri;
            }
            String string = validUri.toString();
            Intrinsics.checkNotNullExpressionValue(string, "newUri.toString()");
            if (StringsKt__StringsJVMKt.startsWith$default(string, "/", false, 2, null)) {
                return validUri;
            }
        }
        return uri;
    }

    public static final boolean isHttp(Uri uri) {
        if (uri != null) {
            return Intrinsics.areEqual(uri.getScheme(), "http") || Intrinsics.areEqual(uri.getScheme(), HttpRequest.DEFAULT_SCHEME);
        }
        return false;
    }

    public static final Uri removeQueryParameters(Uri uri, String... parameterNames) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Intrinsics.checkNotNullParameter(parameterNames, "parameterNames");
        return parameterNames.length == 0 ? uri : removeQueryParameters(uri, ArraysKt___ArraysKt.toSet(parameterNames));
    }

    public static final Uri removeQueryParameters(Uri uri, Collection<String> parameterNames) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Intrinsics.checkNotNullParameter(parameterNames, "parameterNames");
        if (parameterNames.isEmpty()) {
            return uri;
        }
        Uri.Builder builderClearQuery = uri.buildUpon().clearQuery();
        Intrinsics.checkNotNullExpressionValue(builderClearQuery, "buildUpon()\n        .clearQuery()");
        Uri uriBuild = appendQueryParametersFrom(builderClearQuery, uri, parameterNames).build();
        Intrinsics.checkNotNullExpressionValue(uriBuild, "buildUpon()\n        .cle…       )\n        .build()");
        return uriBuild;
    }

    public static /* synthetic */ Uri.Builder appendQueryParametersFrom$default(Uri.Builder builder, Uri uri, Collection collection, int i, Object obj) {
        if ((i & 2) != 0) {
            collection = CollectionsKt__CollectionsKt.emptyList();
        }
        return appendQueryParametersFrom(builder, uri, collection);
    }

    public static final Uri.Builder appendQueryParametersFrom(Uri.Builder builder, Uri fromUri, Collection<String> ignoreQueryParameters) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(fromUri, "fromUri");
        Intrinsics.checkNotNullParameter(ignoreQueryParameters, "ignoreQueryParameters");
        for (String str : fromUri.getQueryParameterNames()) {
            if (!ignoreQueryParameters.contains(str)) {
                Iterator<String> it = fromUri.getQueryParameters(str).iterator();
                while (it.hasNext()) {
                    builder.appendQueryParameter(str, it.next());
                }
            }
        }
        return builder;
    }
}
