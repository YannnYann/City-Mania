package com.unity3d.ads.adplayer.webviewpool;

import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: WebViewPool.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface WebViewPool {
    Object acquireForShow(Continuation<? super PoolEntry> continuation);

    Object acquireFreshEntry(Continuation<? super PoolEntry> continuation);

    Object enqueueRecycled(PoolEntry poolEntry, Continuation<? super Unit> continuation);

    Object initialize(int i, Continuation<? super Unit> continuation);

    Object release(PoolEntry poolEntry, Continuation<? super Unit> continuation);

    Object resetEntry(PoolEntry poolEntry, Continuation<? super PoolEntry> continuation);
}
