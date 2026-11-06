package com.google.android.gms.internal.common;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zze implements zzd {
    private zze() {
        throw null;
    }

    public /* synthetic */ zze(byte[] bArr) {
    }

    @Override // com.google.android.gms.internal.common.zzd
    public final ScheduledExecutorService zza(int i, int i2) {
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new zzf(null)));
    }
}
