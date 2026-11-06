package io.bidmachine.rendering.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class HtmlResourceSource implements ResourceSource {
    public final String a;

    public HtmlResourceSource(String html) {
        Intrinsics.checkNotNullParameter(html, "html");
        this.a = html;
    }

    public final String getHtml() {
        return this.a;
    }
}
