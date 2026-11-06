package ads_mobile_sdk;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
public final class fw3<K, V> implements Map.Entry<K, V>, KMappedMarker {
    private final /* synthetic */ Map.Entry<K, V> a;

    /* JADX WARN: Multi-variable type inference failed */
    public fw3(Map.Entry<? extends K, ? extends V> delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.a = delegate;
    }

    @Override // java.util.Map.Entry
    public K getKey() {
        return this.a.getKey();
    }

    @Override // java.util.Map.Entry
    public V getValue() {
        return this.a.getValue();
    }

    @Override // java.util.Map.Entry
    public V setValue(V v) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
