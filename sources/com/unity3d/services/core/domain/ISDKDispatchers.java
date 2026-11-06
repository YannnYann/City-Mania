package com.unity3d.services.core.domain;

import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: compiled from: ISDKDispatchers.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface ISDKDispatchers {
    CoroutineDispatcher getDefault();

    CoroutineDispatcher getIo();

    CoroutineDispatcher getMain();
}
