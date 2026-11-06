package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.gatewayclient.RequestPolicy;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CommonUniversalRequestTtlValidator.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CommonUniversalRequestTtlValidator implements UniversalRequestTtlValidator {
    @Override // com.unity3d.ads.core.domain.events.UniversalRequestTtlValidator
    public boolean invoke(UniversalRequestOuterClass.UniversalRequest universalRequest, RequestPolicy requestPolicy) {
        Intrinsics.checkNotNullParameter(universalRequest, "universalRequest");
        Intrinsics.checkNotNullParameter(requestPolicy, "requestPolicy");
        return System.currentTimeMillis() - (universalRequest.getSharedData().getTimestamps().getTimestamp().getSeconds() * ((long) 1000)) < ((long) requestPolicy.getMaxDuration());
    }
}
