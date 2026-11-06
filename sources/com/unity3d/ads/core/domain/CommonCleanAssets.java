package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.repository.CacheRepository;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CommonCleanAssets.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CommonCleanAssets implements CleanAssets {
    private final CacheRepository cacheRepository;

    public CommonCleanAssets(CacheRepository cacheRepository) {
        Intrinsics.checkNotNullParameter(cacheRepository, "cacheRepository");
        this.cacheRepository = cacheRepository;
    }

    @Override // com.unity3d.ads.core.domain.CleanAssets
    public Object invoke(Continuation<? super Unit> continuation) {
        Object objClearCache = this.cacheRepository.clearCache(continuation);
        return objClearCache == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objClearCache : Unit.INSTANCE;
    }
}
