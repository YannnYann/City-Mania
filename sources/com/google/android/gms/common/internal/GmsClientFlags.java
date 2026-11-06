package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public final class GmsClientFlags {
    private static volatile boolean zza = true;
    private static volatile boolean zzb = false;

    private GmsClientFlags() {
    }

    @KeepForSdk
    public static boolean isBindServiceOptimizationEnabled(String str) {
        return zza;
    }

    public static boolean zza() {
        return false;
    }
}
