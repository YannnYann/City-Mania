package io.blueflower.stapel2d.util;

/* JADX INFO: loaded from: classes5.dex */
public abstract class PropertyAdapter<K, V> implements Property<V> {
    public Property<K> adaptee;

    public abstract K toInner(V v);

    public abstract V toOuter(K k);

    public PropertyAdapter(Property<K> property) {
        this.adaptee = property;
    }

    @Override // io.blueflower.stapel2d.util.Getter
    public V get() {
        return toOuter(this.adaptee.get());
    }

    @Override // io.blueflower.stapel2d.util.Setter
    public void set(V v) {
        this.adaptee.set(toInner(v));
    }
}
