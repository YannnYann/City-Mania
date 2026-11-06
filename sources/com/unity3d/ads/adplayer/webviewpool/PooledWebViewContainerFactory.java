package com.unity3d.ads.adplayer.webviewpool;

import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PooledWebViewContainerFactory.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface PooledWebViewContainerFactory {
    AndroidWebViewContainer create(PoolEntry poolEntry, CoroutineScope coroutineScope, AdObject adObject);
}
