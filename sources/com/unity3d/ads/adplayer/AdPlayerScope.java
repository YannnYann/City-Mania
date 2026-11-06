package com.unity3d.ads.adplayer;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: AdPlayerScope.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdPlayerScope implements CoroutineScope {
    private final /* synthetic */ CoroutineScope $$delegate_0;
    private final CoroutineDispatcher defaultDispatcher;
    private final CoroutineExceptionHandler sdkErrorHandler;

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.$$delegate_0.getCoroutineContext();
    }

    public AdPlayerScope(CoroutineDispatcher defaultDispatcher, CoroutineExceptionHandler sdkErrorHandler) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(sdkErrorHandler, "sdkErrorHandler");
        this.$$delegate_0 = CoroutineScopeKt.CoroutineScope(defaultDispatcher.plus(sdkErrorHandler));
        this.defaultDispatcher = defaultDispatcher;
        this.sdkErrorHandler = sdkErrorHandler;
    }
}
