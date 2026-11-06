package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ForwardingMap<K, V> extends ForwardingObject implements Map<K, V> {
    @Override // com.google.common.collect.ForwardingObject
    public abstract Map<K, V> delegate();

    @Override // java.util.Map
    public int size() {
        return delegate().size();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    @Override // java.util.Map
    public V remove(Object key) {
        return delegate().remove(key);
    }

    @Override // java.util.Map
    public void clear() {
        delegate().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object key) {
        return delegate().containsKey(key);
    }

    @Override // java.util.Map
    public V get(Object key) {
        return delegate().get(key);
    }

    @Override // java.util.Map
    public V put(K key, V value) {
        return delegate().put(key, value);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        delegate().putAll(map);
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return delegate().keySet();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return delegate().values();
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return delegate().entrySet();
    }

    public boolean standardContainsValue(Object value) {
        return Maps.containsValueImpl(this, value);
    }

    public boolean standardEquals(Object object) {
        return Maps.equalsImpl(this, object);
    }

    public int standardHashCode() {
        return Sets.hashCodeImpl(entrySet());
    }
}
