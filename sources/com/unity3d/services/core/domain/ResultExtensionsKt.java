package com.unity3d.services.core.domain;

import com.unity3d.ads.core.data.model.exception.InitializationException;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ResultExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ResultExtensionsKt {
    public static final /* synthetic */ <E extends Exception> E getCustomExceptionOrNull(Object obj) {
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(obj);
        Intrinsics.reifiedOperationMarker(3, "E");
        if (thM2763exceptionOrNullimpl instanceof Exception) {
            return (E) thM2763exceptionOrNullimpl;
        }
        return null;
    }

    public static final /* synthetic */ <E extends Exception> E getCustomExceptionOrThrow(Object obj) {
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(obj);
        Intrinsics.reifiedOperationMarker(3, "E");
        if (thM2763exceptionOrNullimpl instanceof Exception) {
            return (E) thM2763exceptionOrNullimpl;
        }
        throw new IllegalArgumentException("Wrong Exception type found");
    }

    public static final InitializationException getInitializationExceptionOrNull(Object obj) {
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(obj);
        if (thM2763exceptionOrNullimpl instanceof InitializationException) {
            return (InitializationException) thM2763exceptionOrNullimpl;
        }
        return null;
    }

    public static final InitializationException getInitializationExceptionOrThrow(Object obj) {
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(obj);
        if (thM2763exceptionOrNullimpl instanceof InitializationException) {
            return (InitializationException) thM2763exceptionOrNullimpl;
        }
        throw new IllegalArgumentException("Wrong Exception type found");
    }
}
