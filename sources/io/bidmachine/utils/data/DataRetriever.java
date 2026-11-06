package io.bidmachine.utils.data;

import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.Function;

/* JADX INFO: loaded from: classes5.dex */
public interface DataRetriever<K> {
    default boolean getBoolean(K k) {
        return getBoolean(k, false);
    }

    boolean getBoolean(K k, boolean z);

    default Double getDoubleOrNull(K k) {
        return getDoubleOrNull(k, null);
    }

    Double getDoubleOrNull(K k, Double d);

    default float getFloat(K k) {
        return getFloat(k, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    float getFloat(K k, float f);

    default Float getFloatOrNull(K k) {
        return getFloatOrNull(k, null);
    }

    Float getFloatOrNull(K k, Float f);

    default int getInteger(K k) {
        return getInteger(k, 0);
    }

    int getInteger(K k, int i);

    default Object getObjectOrNull(K k) {
        return getObjectOrNull(k, null);
    }

    Object getObjectOrNull(K k, Object obj);

    default <T> T getOrNullSafely(K k, Function<Object, T> function) {
        return (T) getOrNullSafely(k, null, function);
    }

    default String getStringOrNull(K k) {
        return getStringOrNull(k, null);
    }

    String getStringOrNull(K k, String str);

    default <T> T getOrNullSafely(K k, T t, Function<Object, T> function) {
        try {
            Object objectOrNull = getObjectOrNull(k, t);
            if (objectOrNull == null) {
                return null;
            }
            return function.apply(objectOrNull);
        } catch (Exception unused) {
            return t;
        }
    }
}
