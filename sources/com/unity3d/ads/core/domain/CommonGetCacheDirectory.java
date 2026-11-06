package com.unity3d.ads.core.domain;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CommonGetCacheDirectory.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CommonGetCacheDirectory implements GetCacheDirectory {
    @Override // com.unity3d.ads.core.domain.GetCacheDirectory
    public File invoke(File cacheDirectoryBase, String cacheDirectoryPath) {
        Intrinsics.checkNotNullParameter(cacheDirectoryBase, "cacheDirectoryBase");
        Intrinsics.checkNotNullParameter(cacheDirectoryPath, "cacheDirectoryPath");
        return new File(cacheDirectoryBase, cacheDirectoryPath);
    }
}
