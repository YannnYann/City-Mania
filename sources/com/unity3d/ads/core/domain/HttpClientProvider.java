package com.unity3d.ads.core.domain;

import com.unity3d.services.core.network.core.HttpClient;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: HttpClientProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface HttpClientProvider {
    Object invoke(Continuation<? super HttpClient> continuation);
}
