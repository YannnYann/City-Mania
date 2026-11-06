package com.google.android.gms.internal.games_v2;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class zzeo implements zzap {
    private final /* synthetic */ String zza;
    private final /* synthetic */ boolean zzb;

    public /* synthetic */ zzeo(String str, boolean z) {
        this.zza = str;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.games_v2.zzap
    public final /* synthetic */ Task zza(GoogleApi googleApi) {
        TaskApiCall.Builder builder = TaskApiCall.builder();
        final String str = this.zza;
        final boolean z = this.zzb;
        return googleApi.doRead(builder.run(new RemoteCall() { // from class: com.google.android.gms.internal.games_v2.zzej
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) throws RemoteException {
                ((com.google.android.gms.games.internal.zzai) obj).zzt((TaskCompletionSource) obj2, str, z);
            }
        }).setMethodKey(6711).build());
    }
}
