package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.games.gamessignin.AuthResponse;
import com.google.android.gms.games.gamessignin.AuthScope;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzw extends zza {
    public final TaskCompletionSource zza;

    public zzw(TaskCompletionSource taskCompletionSource) {
        this.zza = taskCompletionSource;
    }

    @Override // com.google.android.gms.games.internal.zza, com.google.android.gms.games.internal.zzak
    public final void zzs(Status status, String str, List list) {
        if (status.isSuccess()) {
            this.zza.trySetResult(new AuthResponse(str, AuthScope.zza(list)));
            return;
        }
        TaskCompletionSource taskCompletionSource = this.zza;
        int i = zzai.$r8$clinit;
        taskCompletionSource.trySetException(ApiExceptionUtil.fromStatus(status));
    }
}
