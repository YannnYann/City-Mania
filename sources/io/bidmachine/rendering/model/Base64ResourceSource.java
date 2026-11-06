package io.bidmachine.rendering.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class Base64ResourceSource implements ResourceSource {
    public final String a;

    public Base64ResourceSource(String base64) {
        Intrinsics.checkNotNullParameter(base64, "base64");
        this.a = base64;
    }

    public final String getBase64() {
        return this.a;
    }
}
