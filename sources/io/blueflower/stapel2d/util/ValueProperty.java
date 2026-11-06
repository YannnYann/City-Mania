package io.blueflower.stapel2d.util;

/* JADX INFO: loaded from: classes5.dex */
public class ValueProperty<T> implements Property<T> {
    public T value;

    public ValueProperty(T t) {
        this.value = t;
    }

    @Override // io.blueflower.stapel2d.util.Getter
    public T get() {
        return this.value;
    }

    @Override // io.blueflower.stapel2d.util.Setter
    public void set(T t) {
        this.value = t;
    }
}
