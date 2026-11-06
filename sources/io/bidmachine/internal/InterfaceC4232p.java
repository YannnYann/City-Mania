package io.bidmachine.internal;

import io.bidmachine.core.Logger;
import io.bidmachine.utils.SafeRunnable;

/* JADX INFO: renamed from: io.bidmachine.internal.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public interface InterfaceC4232p extends SafeRunnable {
    @Override // io.bidmachine.utils.SafeRunnable
    default void onThrows(Throwable th) {
        Logger.w(th);
    }
}
