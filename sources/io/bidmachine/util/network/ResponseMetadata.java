package io.bidmachine.util.network;

import java.net.URL;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ResponseMetadata.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ResponseMetadata {
    public final int code;
    public final Map<String, List<String>> headers;
    public final URL url;

    /* JADX WARN: Multi-variable type inference failed */
    public ResponseMetadata(URL url, int i, Map<String, ? extends List<String>> map) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.url = url;
        this.code = i;
        this.headers = map;
    }

    public final URL getUrl() {
        return this.url;
    }

    public final int getCode() {
        return this.code;
    }

    public final String getHeader(String key) {
        List<String> list;
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, List<String>> map = this.headers;
        if (map == null || (list = map.get(key)) == null) {
            return null;
        }
        return (String) CollectionsKt___CollectionsKt.firstOrNull((List) list);
    }
}
