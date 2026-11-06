package io.blueflower.stapel2d.util;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Builder<T> {
    public final T context;

    public abstract void build();

    public void release() {
    }

    public Builder(T t) {
        this.context = t;
    }

    public T getBuilderContext() {
        return this.context;
    }
}
