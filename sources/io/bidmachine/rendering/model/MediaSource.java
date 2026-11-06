package io.bidmachine.rendering.model;

import io.bidmachine.rendering.internal.k;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class MediaSource {
    public static final Companion Companion = new Companion(null);
    public final DeliveryType a;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MediaSource fromBase64(String str) {
            if (str == null) {
                return null;
            }
            if (StringsKt__StringsKt.isBlank(str)) {
                str = null;
            }
            if (str != null) {
                return new Base64MediaSource(str);
            }
            return null;
        }

        public final MediaSource fromDefaultSettings(String str) {
            try {
                String strA = k.a.a(str);
                if (strA != null) {
                    return MediaSource.Companion.fromBase64(strA);
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }

        public final MediaSource fromUrl(String str) {
            if (str == null) {
                return null;
            }
            return MediaSourceKt.urlsToMediaSource(CollectionsKt__CollectionsJVMKt.listOf(str));
        }

        public Companion() {
        }
    }

    public enum DeliveryType {
        PRELOAD,
        STREAM
    }

    public /* synthetic */ MediaSource(DeliveryType deliveryType, DefaultConstructorMarker defaultConstructorMarker) {
        this(deliveryType);
    }

    public DeliveryType getDeliveryType() {
        return this.a;
    }

    public MediaSource(DeliveryType deliveryType) {
        this.a = deliveryType;
    }
}
