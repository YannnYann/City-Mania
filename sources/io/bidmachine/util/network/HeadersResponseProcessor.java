package io.bidmachine.util.network;

import java.net.URLConnection;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HeadersResponseProcessor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class HeadersResponseProcessor implements ResponseProcessor<Map<String, ? extends List<? extends String>>> {
    @Override // io.bidmachine.util.network.ResponseProcessor
    public Map<String, ? extends List<? extends String>> process(URLConnection urlConnection) throws Throwable {
        Intrinsics.checkNotNullParameter(urlConnection, "urlConnection");
        Map<String, List<String>> headerFields = urlConnection.getHeaderFields();
        Intrinsics.checkNotNullExpressionValue(headerFields, "urlConnection.headerFields");
        return headerFields;
    }
}
