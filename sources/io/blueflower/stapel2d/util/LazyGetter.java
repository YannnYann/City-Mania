package io.blueflower.stapel2d.util;

/* JADX INFO: loaded from: classes5.dex */
public class LazyGetter<T> implements Getter<T> {
    public Getter<? extends T> getter;
    public T value;

    public LazyGetter(Getter<? extends T> getter) {
        if (getter == null) {
            throw new IllegalArgumentException("Getter might not be null");
        }
        this.getter = getter;
    }

    @Override // io.blueflower.stapel2d.util.Getter
    public T get() {
        Getter<? extends T> getter = this.getter;
        if (getter != null) {
            this.value = getter.get();
            this.getter = null;
        }
        return this.value;
    }
}
