package com.google.android.gms.internal.games_v2;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.games.RecallAccess;
import com.google.android.gms.games.RecallClient;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfc extends GoogleApi implements RecallClient {
    private static final Api.ClientKey zza;
    private static final Api.AbstractClientBuilder zzb;
    private static final Api zzc;
    private final zzaw zzd;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zza = clientKey;
        zzey zzeyVar = new zzey();
        zzb = zzeyVar;
        zzc = new Api("Recall.API", zzeyVar, clientKey);
    }

    public zzfc(Context context, zzaw zzawVar) {
        super(context, (Api<Api.ApiOptions.NoOptions>) zzc, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.zzd = zzawVar;
    }

    public final Task<RecallAccess> requestRecallAccess() {
        final TaskApiCall taskApiCallBuild = TaskApiCall.builder().setMethodKey(6742).setAutoResolveMissingFeatures(false).setFeatures(com.google.android.gms.games.zzd.zze).run(new RemoteCall() { // from class: com.google.android.gms.internal.games_v2.zzfb
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) throws RemoteException {
                ((zzal) ((zzfx) obj).getService()).zzd(new zzez(this.zza, (TaskCompletionSource) obj2), "unusedServerClientId");
            }
        }).build();
        return this.zzd.zzd().onSuccessTask(new SuccessContinuation() { // from class: com.google.android.gms.internal.games_v2.zzfa
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final /* synthetic */ Task then(Object obj) {
                return this.zza.doRead(taskApiCallBuild);
            }
        });
    }
}
