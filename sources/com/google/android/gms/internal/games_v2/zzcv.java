package com.google.android.gms.internal.games_v2;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class zzcv implements RemoteCall {
    static final /* synthetic */ zzcv zza = new zzcv();

    private /* synthetic */ zzcv() {
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final /* synthetic */ void accept(Object obj, Object obj2) throws RemoteException {
        ((com.google.android.gms.games.internal.zzai) obj).zzY();
        ((TaskCompletionSource) obj2).trySetResult(null);
    }
}
