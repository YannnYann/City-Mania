package com.unity3d.ads.gatewayclient;

import com.unity3d.ads.core.data.model.OperationType;

/* JADX INFO: compiled from: RequestUrlFactory.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface RequestUrlFactory {
    String getRequestUrl(OperationType operationType, String str);

    /* JADX INFO: compiled from: RequestUrlFactory.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ String getRequestUrl$default(RequestUrlFactory requestUrlFactory, OperationType operationType, String str, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getRequestUrl");
            }
            if ((i & 2) != 0) {
                str = null;
            }
            return requestUrlFactory.getRequestUrl(operationType, str);
        }
    }
}
