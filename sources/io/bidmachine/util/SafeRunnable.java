package io.bidmachine.util;

import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SafeRunnable.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface SafeRunnable extends Runnable {
    void onRun() throws Throwable;

    default void onThrows(Throwable throwable) throws Throwable {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
    }

    @Override // java.lang.Runnable
    default void run() {
        try {
            onRun();
        } catch (Throwable th) {
            try {
                onThrows(th);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable unused) {
            }
        }
    }
}
