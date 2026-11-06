package kotlin.properties;

import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: Interfaces.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ReadWriteProperty<T, V> extends ReadOnlyProperty<T, V> {
    @Override // kotlin.properties.ReadOnlyProperty
    V getValue(T t, KProperty<?> kProperty);

    void setValue(T t, KProperty<?> kProperty, V v);
}
