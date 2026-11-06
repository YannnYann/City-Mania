package io.blueflower.stapel2d.util;

/* JADX INFO: loaded from: classes5.dex */
public class StaticGetter<T> implements Getter<T> {
    public T value;

    public StaticGetter(T t) {
        this.value = t;
    }

    @Override // io.blueflower.stapel2d.util.Getter
    public T get() {
        return this.value;
    }
}
