package com.unity3d.ads.core.domain;

import gatewayprotocol.v1.ClientInfoOuterClass;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: GetClientInfo.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface GetClientInfo {
    Object invoke(Continuation<? super ClientInfoOuterClass.ClientInfo> continuation);
}
