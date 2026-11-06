package io.bidmachine.rendering.model;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class UrlResourceSource implements ResourceSource {
    public final List a;

    public UrlResourceSource(List<String> urls) {
        Intrinsics.checkNotNullParameter(urls, "urls");
        this.a = urls;
    }

    public final List<String> getUrls() {
        return this.a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UrlResourceSource(String url) {
        this((List<String>) CollectionsKt__CollectionsJVMKt.listOf(url));
        Intrinsics.checkNotNullParameter(url, "url");
    }
}
