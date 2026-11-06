package io.bidmachine.util;

import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SafeExecutable.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface SafeExecutable<T> extends Executable<T> {
    void onExecute(T t) throws Throwable;

    default void onThrows(Throwable throwable) throws Throwable {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
    }

    @Override // io.bidmachine.util.Executable
    default void execute(T t) {
        try {
            onExecute(t);
        } catch (Throwable th) {
            try {
                onThrows(th);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable unused) {
            }
        }
    }
}
