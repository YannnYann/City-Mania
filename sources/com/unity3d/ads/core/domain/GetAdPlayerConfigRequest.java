package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.LoadConfigurationInternal;
import gatewayprotocol.v1.AdFormatOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: GetAdPlayerConfigRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface GetAdPlayerConfigRequest {
    Object invoke(String str, ByteString byteString, ByteString byteString2, AdFormatOuterClass.AdFormat adFormat, LoadConfigurationInternal loadConfigurationInternal, Continuation<? super UniversalRequestOuterClass.UniversalRequest> continuation);

    /* JADX INFO: compiled from: GetAdPlayerConfigRequest.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ Object invoke$default(GetAdPlayerConfigRequest getAdPlayerConfigRequest, String str, ByteString byteString, ByteString byteString2, AdFormatOuterClass.AdFormat adFormat, LoadConfigurationInternal loadConfigurationInternal, Continuation continuation, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
            }
            if ((i & 16) != 0) {
                loadConfigurationInternal = null;
            }
            return getAdPlayerConfigRequest.invoke(str, byteString, byteString2, adFormat, loadConfigurationInternal, continuation);
        }
    }
}
