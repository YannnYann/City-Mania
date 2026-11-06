package com.unity3d.ads.core.data.datasource;

import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: LifecycleDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface LifecycleDataSource {
    boolean appIsForeground();

    StateFlow<Boolean> getAppActive();
}
