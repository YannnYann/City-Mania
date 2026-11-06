package com.vungle.ads;

import com.iab.omid.library.vungle.d;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class AdExpiredError extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdExpiredError(String message) {
        super(Sdk.SDKError.Reason.AD_EXPIRED, d.a("Ad expired: ", message), null);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
