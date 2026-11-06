package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzv extends zza {
    public final TaskCompletionSource zza;

    public zzv(TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzak
    public final void zzr(Status status, String str) {
        if (status.isSuccess()) {
            this.zza.trySetResult(str);
            return;
        }
        TaskCompletionSource taskCompletionSource = this.zza;
        int i = zzai.$r8$clinit;
        taskCompletionSource.trySetException(ApiExceptionUtil.fromStatus(status));
    }
}
