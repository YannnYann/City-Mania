package com.unity3d.ads.core.domain;

import com.unity3d.ads.IUnityAdsTokenListener;
import com.unity3d.ads.TokenConfiguration;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: GetAsyncHeaderBiddingToken.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface GetAsyncHeaderBiddingToken {
    Object invoke(int i, TokenConfiguration tokenConfiguration, IUnityAdsTokenListener iUnityAdsTokenListener, Continuation<? super Unit> continuation);
}
