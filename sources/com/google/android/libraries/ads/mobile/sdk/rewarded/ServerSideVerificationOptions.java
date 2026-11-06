package com.google.android.libraries.ads.mobile.sdk.rewarded;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ServerSideVerificationOptions {
    public final String a;
    public final String b;

    public ServerSideVerificationOptions(String userId, String customData) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(customData, "customData");
        this.a = userId;
        this.b = customData;
    }

    public final String getCustomData() {
        return this.b;
    }

    public final String getUserId() {
        return this.a;
    }
}
