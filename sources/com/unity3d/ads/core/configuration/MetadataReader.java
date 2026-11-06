package com.unity3d.ads.core.configuration;

import com.google.android.gms.ads.RequestConfiguration;
import com.unity3d.services.core.misc.JsonStorage;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MetadataReader.kt */
/* JADX INFO: loaded from: classes4.dex */
public abstract class MetadataReader<T> {
    private final JsonStorage jsonStorage;
    private final String key;

    public MetadataReader(JsonStorage jsonStorage, String key) {
        Intrinsics.checkNotNullParameter(jsonStorage, "jsonStorage");
        Intrinsics.checkNotNullParameter(key, "key");
        this.jsonStorage = jsonStorage;
        this.key = key;
    }

    public final JsonStorage getJsonStorage() {
        return this.jsonStorage;
    }

    public final String getKey() {
        return this.key;
    }

    public static /* synthetic */ Object read$default(MetadataReader metadataReader, Object obj, int i, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: read");
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        Object obj3 = metadataReader.getJsonStorage().get(metadataReader.getKey());
        if (obj3 == null) {
            return obj;
        }
        Intrinsics.reifiedOperationMarker(3, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        return obj3;
    }

    public static /* synthetic */ Object readAndDelete$default(MetadataReader metadataReader, Object obj, int i, Object obj2) {
        if (obj2 == null) {
            if ((i & 1) != 0) {
                obj = null;
            }
            Object obj3 = metadataReader.getJsonStorage().get(metadataReader.getKey());
            if (obj3 != null) {
                Intrinsics.reifiedOperationMarker(3, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
                obj = obj3;
            }
            if (metadataReader.getJsonStorage().get(metadataReader.getKey()) != null) {
                metadataReader.getJsonStorage().delete(metadataReader.getKey());
            }
            return obj;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readAndDelete");
    }

    public final /* synthetic */ <T> T read(T t) {
        T t2 = (T) getJsonStorage().get(getKey());
        if (t2 == null) {
            return t;
        }
        Intrinsics.reifiedOperationMarker(3, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
        return t2;
    }

    public final /* synthetic */ <T> T readAndDelete(T t) {
        Object obj = getJsonStorage().get(getKey());
        if (obj != null) {
            Intrinsics.reifiedOperationMarker(3, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
            t = (T) obj;
        }
        if (getJsonStorage().get(getKey()) != null) {
            getJsonStorage().delete(getKey());
        }
        return t;
    }
}
