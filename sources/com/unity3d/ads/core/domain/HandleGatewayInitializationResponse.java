package com.unity3d.ads.core.domain;

import gatewayprotocol.v1.UniversalResponseOuterClass;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: HandleGatewayInitializationResponse.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface HandleGatewayInitializationResponse {
    Object invoke(UniversalResponseOuterClass.UniversalResponse universalResponse, Continuation<? super Unit> continuation);
}
