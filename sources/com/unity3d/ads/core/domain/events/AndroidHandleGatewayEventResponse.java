package com.unity3d.ads.core.domain.events;

import gatewayprotocol.v1.UniversalResponseOuterClass;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: AndroidHandleGatewayEventResponse.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidHandleGatewayEventResponse implements HandleGatewayEventResponse {
    @Override // com.unity3d.ads.core.domain.events.HandleGatewayEventResponse
    public Object invoke(UniversalResponseOuterClass.UniversalResponse universalResponse, Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }
}
