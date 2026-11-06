package ads_mobile_sdk;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
public final class ew3<K, V> extends bw3<Map.Entry<? extends K, ? extends V>> implements Set<Map.Entry<? extends K, ? extends V>>, KMappedMarker {
    private final Set<Map.Entry<K, V>> b;

    public static final class a implements Iterator<Map.Entry<? extends K, ? extends V>>, KMappedMarker {
        private final /* synthetic */ Iterator<Map.Entry<K, V>> a;
        final /* synthetic */ Iterator<Map.Entry<K, V>> b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
            this.b = it;
            this.a = it;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return new fw3(this.b.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ew3(Set<? extends Map.Entry<? extends K, ? extends V>> delegate) {
        super(delegate);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.b = delegate;
    }

    public /* bridge */ boolean a(Map.Entry<? extends Object, ? extends Object> entry) {
        return super.contains(entry);
    }

    @Override // ads_mobile_sdk.bw3, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return a((Map.Entry) obj);
        }
        return false;
    }

    @Override // ads_mobile_sdk.bw3, java.util.Collection, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return new a(this.b.iterator());
    }
}
