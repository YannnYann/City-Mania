package kotlin.properties;

import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: Interfaces.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ReadOnlyProperty<T, V> {
    V getValue(T t, KProperty<?> kProperty);
}
