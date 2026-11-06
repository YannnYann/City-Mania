package com.unity3d.ads.core.data.model.exception;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ExposureException.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ExposureException extends Exception {
    private final Object[] parameters;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExposureException(String message, Object[] parameters) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        this.parameters = parameters;
    }

    public final Object[] getParameters() {
        return this.parameters;
    }
}
