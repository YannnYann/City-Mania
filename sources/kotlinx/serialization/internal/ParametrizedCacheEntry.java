package kotlinx.serialization.internal;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Result;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;

/* JADX INFO: compiled from: Caching.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ParametrizedCacheEntry<T> {
    public final ConcurrentHashMap<List<KType>, Result<KSerializer<T>>> serializers = new ConcurrentHashMap<>();
}
