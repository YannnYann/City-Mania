package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public final class InternalClientFlagRegistry {
    private static final InternalClientFlags zza = zzag.zza();

    private InternalClientFlagRegistry() {
    }

    @KeepForSdk
    public static InternalClientFlags getClientFlags() {
        return zza;
    }
}
