package com.unity3d.ads.core.extensions;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.exception.GatewayException;
import gatewayprotocol.v1.ErrorOuterClass;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ErrorExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ErrorExtensionsKt {
    public static final ByteString getErrorTokenOrNull(ErrorOuterClass.Error error) {
        Intrinsics.checkNotNullParameter(error, "<this>");
        if (error.getErrorToken().isEmpty()) {
            return null;
        }
        return error.getErrorToken();
    }

    public static final ByteString getErrorTokenOrNull(Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        GatewayException gatewayException = th instanceof GatewayException ? (GatewayException) th : null;
        if (gatewayException != null) {
            return gatewayException.getErrorToken();
        }
        return null;
    }
}
