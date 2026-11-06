package io.bidmachine.rendering.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class XmlResourceSource implements ResourceSource {
    public final String a;

    public XmlResourceSource(String xml) {
        Intrinsics.checkNotNullParameter(xml, "xml");
        this.a = xml;
    }
}
