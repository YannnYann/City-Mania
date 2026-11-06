package io.bidmachine.util;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Error.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ErrorKt {
    public static final Error toError(Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        return new Error(th);
    }
}
