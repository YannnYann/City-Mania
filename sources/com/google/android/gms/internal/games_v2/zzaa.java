package com.google.android.gms.internal.games_v2;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzaa implements Runnable {
    final /* synthetic */ zzab zza;

    public zzaa(zzab zzabVar) {
        Objects.requireNonNull(zzabVar);
        this.zza = zzabVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzd();
    }
}
