package com.unity3d.services.core.di;

import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ServiceFactory.kt */
/* JADX INFO: loaded from: classes4.dex */
final class Factory<T> implements Lazy<T> {
    private final Function0<T> initializer;

    @Override // kotlin.Lazy
    public boolean isInitialized() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Factory(Function0<? extends T> initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        this.initializer = initializer;
    }

    @Override // kotlin.Lazy
    public T getValue() {
        return this.initializer.invoke();
    }
}
