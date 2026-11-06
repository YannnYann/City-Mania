package com.vungle.ads;

import com.iab.omid.library.vungle.d;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class InvalidCSBDataError extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InvalidCSBDataError(String message) {
        super(Sdk.SDKError.Reason.INVALID_CSB_DATA, d.a("Invalid CSB data: ", message), null);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
