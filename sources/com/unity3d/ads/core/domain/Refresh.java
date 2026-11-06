package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import gatewayprotocol.v1.AdDataRefreshResponseOuterClass;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: Refresh.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface Refresh {
    Object invoke(ByteString byteString, ByteString byteString2, Continuation<? super AdDataRefreshResponseOuterClass.AdDataRefreshResponse> continuation);
}
