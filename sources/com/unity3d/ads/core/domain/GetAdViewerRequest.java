package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: GetAdViewerRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface GetAdViewerRequest {
    Object invoke(ByteString byteString, ByteString byteString2, Continuation<? super UniversalRequestOuterClass.UniversalRequest> continuation);
}
