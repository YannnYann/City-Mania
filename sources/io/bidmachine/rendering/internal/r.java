package io.bidmachine.rendering.internal;

import io.bidmachine.util.SafeExecutable;

/* JADX INFO: loaded from: classes5.dex */
public interface r extends SafeExecutable {
    @Override // io.bidmachine.util.SafeExecutable
    default void onThrows(Throwable th) {
        t.b(th);
    }
}
