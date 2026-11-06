package kotlin.reflect;

import kotlin.jvm.functions.Function0;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: KProperty.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface KProperty0<V> extends KProperty<V>, Function0<V> {

    /* JADX INFO: compiled from: KProperty.kt */
    public interface Getter<V> extends KProperty.Getter<V>, Function0<V> {
    }

    V get();

    Object getDelegate();

    /* JADX INFO: renamed from: getGetter */
    Getter<V> mo2859getGetter();
}
