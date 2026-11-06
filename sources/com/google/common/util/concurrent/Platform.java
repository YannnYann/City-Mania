package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class Platform {
    public static boolean isInstanceOfThrowableClass(Throwable t, Class<? extends Throwable> expectedClass) {
        return expectedClass.isInstance(t);
    }

    public static void restoreInterruptIfIsInterruptedException(Throwable t) {
        Preconditions.checkNotNull(t);
        if (t instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
    }
}
