package com.unity3d.ads;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsError.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class UnityAdsError {
    private final int code;
    private final String message;

    public UnityAdsError(int i, String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.code = i;
        this.message = message;
    }

    public final int getCode() {
        return this.code;
    }

    public final String getMessage() {
        return this.message;
    }
}
