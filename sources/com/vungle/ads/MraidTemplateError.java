package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class MraidTemplateError extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MraidTemplateError(Sdk.SDKError.Reason loggableReason, String message) {
        super(loggableReason, message, null);
        Intrinsics.checkNotNullParameter(loggableReason, "loggableReason");
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
