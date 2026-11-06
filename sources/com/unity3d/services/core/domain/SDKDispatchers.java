package com.unity3d.services.core.domain;

import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: SDKDispatchers.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class SDKDispatchers implements ISDKDispatchers {

    /* JADX INFO: renamed from: io, reason: collision with root package name */
    private final CoroutineDispatcher f3924io = Dispatchers.getIO();

    /* JADX INFO: renamed from: default, reason: not valid java name */
    private final CoroutineDispatcher f3912default = Dispatchers.getDefault();
    private final CoroutineDispatcher main = Dispatchers.getMain();

    @Override // com.unity3d.services.core.domain.ISDKDispatchers
    public CoroutineDispatcher getIo() {
        return this.f3924io;
    }

    @Override // com.unity3d.services.core.domain.ISDKDispatchers
    public CoroutineDispatcher getDefault() {
        return this.f3912default;
    }

    @Override // com.unity3d.services.core.domain.ISDKDispatchers
    public CoroutineDispatcher getMain() {
        return this.main;
    }
}
