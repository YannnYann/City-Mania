package com.unity3d.ads.core.domain;

import gatewayprotocol.v1.InitializationResponseOuterClass;

/* JADX INFO: compiled from: DeliverModuleConfigs.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface DeliverModuleConfigs {
    void invoke(InitializationResponseOuterClass.InitializationResponse initializationResponse);

    void notifyFailure(String str);
}
