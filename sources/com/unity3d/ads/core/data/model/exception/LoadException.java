package com.unity3d.ads.core.data.model.exception;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoadException.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LoadException extends Exception {
    private final int errorCode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadException(int i, String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
        this.errorCode = i;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }
}
