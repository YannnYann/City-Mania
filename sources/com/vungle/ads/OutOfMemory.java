package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class OutOfMemory extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OutOfMemory(String errorMessage) {
        super(Sdk.SDKError.Reason.OUT_OF_MEMORY, errorMessage, null);
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
    }
}
