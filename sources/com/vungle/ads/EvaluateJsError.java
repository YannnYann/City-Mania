package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class EvaluateJsError extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EvaluateJsError(String msg) {
        super(Sdk.SDKError.Reason.EVALUATE_JAVASCRIPT_FAILED, msg, null);
        Intrinsics.checkNotNullParameter(msg, "msg");
    }
}
