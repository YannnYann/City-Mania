package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: Concurrent.common.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class Concurrent_commonKt {
    public static final <T> T getValue(AtomicReference<T> atomicReference) {
        return atomicReference.get();
    }

    public static final <T> void setValue(AtomicReference<T> atomicReference, T t) {
        atomicReference.set(t);
    }
}
