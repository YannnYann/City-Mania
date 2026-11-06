package io.bidmachine.rendering.model;

import io.bidmachine.rendering.model.MediaSource;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class Base64MediaSource extends MediaSource {
    public final String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Base64MediaSource(String base64) {
        super(MediaSource.DeliveryType.PRELOAD, null);
        Intrinsics.checkNotNullParameter(base64, "base64");
        this.b = base64;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Base64MediaSource) && Intrinsics.areEqual(this.b, ((Base64MediaSource) obj).b);
    }

    public final String getBase64() {
        return this.b;
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        return "Base64MediaSource(base64=" + this.b + ')';
    }
}
