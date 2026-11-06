package com.unity3d.ads.core.domain;

import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: GetUniversalRequestForPayLoad.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface GetUniversalRequestForPayLoad {
    Object invoke(UniversalRequestOuterClass.UniversalRequest.Payload payload, Continuation<? super UniversalRequestOuterClass.UniversalRequest> continuation);
}
