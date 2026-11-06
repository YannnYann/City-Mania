package io.bidmachine.util.network;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NetworkError.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class NetworkError {
    public final Throwable throwable;

    public NetworkError(Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        this.throwable = throwable;
    }

    public final Throwable getThrowable() {
        return this.throwable;
    }

    public String toString() {
        return this.throwable.toString();
    }
}
