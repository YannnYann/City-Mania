package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class SdkNotInitialized extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SdkNotInitialized(String message) {
        super(Sdk.SDKError.Reason.SDK_NOT_INITIALIZED, message, null);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
