package com.google.android.gms.libs.throttling;

import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public interface GmsThrottler {
    @KeepForSdk
    void release(long j);

    @KeepForSdk
    boolean tryAcquire(long j, ThrottlingLimits throttlingLimits);
}
