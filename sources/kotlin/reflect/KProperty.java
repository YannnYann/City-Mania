package kotlin.reflect;

/* JADX INFO: compiled from: KProperty.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface KProperty<V> extends KCallable<V> {

    /* JADX INFO: compiled from: KProperty.kt */
    public interface Getter<V> extends KFunction<V> {
    }

    boolean isConst();

    boolean isLateinit();
}
