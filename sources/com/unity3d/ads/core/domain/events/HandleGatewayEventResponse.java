package com.unity3d.ads.core.domain.events;

import gatewayprotocol.v1.UniversalResponseOuterClass;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: HandleGatewayEventResponse.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface HandleGatewayEventResponse {
    Object invoke(UniversalResponseOuterClass.UniversalResponse universalResponse, Continuation<? super Unit> continuation);
}
