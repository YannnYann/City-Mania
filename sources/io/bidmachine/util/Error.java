package io.bidmachine.util;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Error.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class Error {
    public final String message;

    public Error(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.message = message;
    }

    public final String getMessage() {
        return this.message;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Error(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        String message = throwable.getMessage();
        this(message == null ? "Empty throwable" : message);
    }

    public String toString() {
        return this.message;
    }
}
