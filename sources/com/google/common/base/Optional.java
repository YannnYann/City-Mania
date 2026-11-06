package com.google.common.base;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Optional<T> implements Serializable {
    public abstract boolean equals(Object object);

    public abstract T get();

    public abstract int hashCode();

    public abstract boolean isPresent();

    public abstract T or(Supplier<? extends T> supplier);

    public abstract T orNull();

    public static <T> Optional<T> absent() {
        return Absent.withType();
    }

    public static <T> Optional<T> of(T reference) {
        return new Present(Preconditions.checkNotNull(reference));
    }
}
