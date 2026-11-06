package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import gatewayprotocol.v1.AdViewerResponseOuterClass;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: SendAdViewerRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface SendAdViewerRequest {
    Object invoke(ByteString byteString, ByteString byteString2, Continuation<? super AdViewerResponseOuterClass.AdViewerResponse> continuation);
}
