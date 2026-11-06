package com.unity3d.ads.core.domain;

import com.unity3d.ads.TokenConfiguration;
import gatewayprotocol.v1.HeaderBiddingTokenOuterClass;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: BuildHeaderBiddingToken.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface BuildHeaderBiddingToken {
    Object invoke(int i, TokenConfiguration tokenConfiguration, Continuation<? super HeaderBiddingTokenOuterClass.HeaderBiddingToken> continuation);

    /* JADX INFO: compiled from: BuildHeaderBiddingToken.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ Object invoke$default(BuildHeaderBiddingToken buildHeaderBiddingToken, int i, TokenConfiguration tokenConfiguration, Continuation continuation, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
            }
            if ((i2 & 2) != 0) {
                tokenConfiguration = null;
            }
            return buildHeaderBiddingToken.invoke(i, tokenConfiguration, continuation);
        }
    }
}
