package io.bidmachine.rendering.internal;

import io.bidmachine.util.SafeRunnable;

/* JADX INFO: loaded from: classes5.dex */
public interface s extends SafeRunnable {
    @Override // io.bidmachine.util.SafeRunnable
    default void onThrows(Throwable th) {
        t.b(th);
    }
}
