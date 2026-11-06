package com.vungle.ads;

import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class VungleMediationLogger {
    public static final VungleMediationLogger INSTANCE = new VungleMediationLogger();

    public static final void logError(VungleAdType vungleAdType, String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        AnalyticsClient.INSTANCE.c(Sdk.SDKError.Reason.MEDIATION_ERROR, message, vungleAdType != null ? VungleMediationLoggerKt.access$getAdLogEntry(vungleAdType) : null);
    }
}
