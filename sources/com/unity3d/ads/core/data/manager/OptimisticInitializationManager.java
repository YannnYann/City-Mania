package com.unity3d.ads.core.data.manager;

import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: OptimisticInitializationManager.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface OptimisticInitializationManager {
    void onInitializationFinished(boolean z);

    Object tryOptimisticCompletion(Continuation<? super Boolean> continuation);
}
