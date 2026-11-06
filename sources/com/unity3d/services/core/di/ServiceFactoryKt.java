package com.unity3d.services.core.di;

import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ServiceFactory.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ServiceFactoryKt {
    public static final <T> Lazy<T> factoryOf(Function0<? extends T> initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        return new Factory(initializer);
    }
}
