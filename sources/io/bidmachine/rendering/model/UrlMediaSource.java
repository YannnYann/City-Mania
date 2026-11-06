package io.bidmachine.rendering.model;

import io.bidmachine.rendering.model.MediaSource;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class UrlMediaSource extends MediaSource {
    public final List b;
    public final MediaSource.DeliveryType c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UrlMediaSource(List<String> urls, MediaSource.DeliveryType deliveryType) {
        super(deliveryType, null);
        Intrinsics.checkNotNullParameter(urls, "urls");
        Intrinsics.checkNotNullParameter(deliveryType, "deliveryType");
        this.b = urls;
        this.c = deliveryType;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UrlMediaSource)) {
            return false;
        }
        UrlMediaSource urlMediaSource = (UrlMediaSource) obj;
        return Intrinsics.areEqual(this.b, urlMediaSource.b) && getDeliveryType() == urlMediaSource.getDeliveryType();
    }

    @Override // io.bidmachine.rendering.model.MediaSource
    public MediaSource.DeliveryType getDeliveryType() {
        return this.c;
    }

    public final List<String> getUrls() {
        return this.b;
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + getDeliveryType().hashCode();
    }

    public String toString() {
        return "UrlMediaSource(urls=" + this.b + ", deliveryType=" + getDeliveryType() + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UrlMediaSource(String url, MediaSource.DeliveryType deliveryType) {
        this((List<String>) CollectionsKt__CollectionsJVMKt.listOf(url), deliveryType);
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(deliveryType, "deliveryType");
    }
}
