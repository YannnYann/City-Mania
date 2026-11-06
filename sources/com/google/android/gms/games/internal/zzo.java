package com.google.android.gms.games.internal;

import com.google.android.gms.games.GamesStatusUtils;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzo extends zza {
    public final TaskCompletionSource zza;

    public zzo(TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzak
    public final void zzd(int i, String str) {
        if (i == 0 || i == 3003) {
            this.zza.trySetResult(null);
        } else {
            GamesStatusUtils.zzb(this.zza, i);
        }
    }
}
