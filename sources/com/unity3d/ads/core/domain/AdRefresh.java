package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.AdObject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: AdRefresh.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface AdRefresh {
    Object invoke(AdObject adObject, Continuation<? super Unit> continuation);
}
