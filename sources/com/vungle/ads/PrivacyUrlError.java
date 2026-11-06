package com.vungle.ads;

import com.iab.omid.library.vungle.d;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class PrivacyUrlError extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrivacyUrlError(String privacyUrl) {
        super(Sdk.SDKError.Reason.PRIVACY_URL_ERROR, d.a("Failed to open privacy url: ", privacyUrl), null);
        Intrinsics.checkNotNullParameter(privacyUrl, "privacyUrl");
    }
}
