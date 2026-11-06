package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public interface ClientThrottlingManager {

    @KeepForSdk
    public static final int NO_THROTTLING = Integer.MIN_VALUE;

    @KeepForSdk
    void release(int i);

    @KeepForSdk
    int tryAcquire(int i, ConnectionThrottlingConfig connectionThrottlingConfig);
}
