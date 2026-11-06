package com.google.android.gms.internal.games_v2;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.games.AuthenticationResult;
import com.google.android.gms.games.GamesSignInClient;
import com.google.android.gms.games.gamessignin.AuthResponse;
import com.google.android.gms.games.gamessignin.AuthScope;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdg implements GamesSignInClient {
    private final zzaw zza;
    private final zzaq zzb;

    public zzdg(zzaw zzawVar, zzaq zzaqVar) {
        this.zza = zzawVar;
        this.zzb = zzaqVar;
    }

    @Override // com.google.android.gms.games.GamesSignInClient
    public final Task<AuthenticationResult> isAuthenticated() {
        return this.zza.zzc();
    }

    public final Task<String> requestServerSideAccess(final String str, final boolean z) {
        return this.zzb.zzb(new zzap() { // from class: com.google.android.gms.internal.games_v2.zzdf
            @Override // com.google.android.gms.internal.games_v2.zzap
            public final /* synthetic */ Task zza(GoogleApi googleApi) {
                TaskApiCall.Builder builder = TaskApiCall.builder();
                final String str2 = str;
                final boolean z2 = z;
                return googleApi.doWrite(builder.run(new RemoteCall() { // from class: com.google.android.gms.internal.games_v2.zzde
                    @Override // com.google.android.gms.common.api.internal.RemoteCall
                    public final /* synthetic */ void accept(Object obj, Object obj2) throws RemoteException {
                        ((com.google.android.gms.games.internal.zzai) obj).zzS((TaskCompletionSource) obj2, str2, z2);
                    }
                }).setMethodKey(6699).build());
            }
        });
    }

    @Override // com.google.android.gms.games.GamesSignInClient
    public final Task<AuthenticationResult> signIn() {
        return this.zza.zze();
    }

    public final Task<AuthResponse> requestServerSideAccess(final String str, final boolean z, List<AuthScope> list) {
        Objects.requireNonNull(str, "serverClientId must not be null.");
        if (str.isEmpty()) {
            throw new IllegalArgumentException("serverClientId must not be empty.");
        }
        if (list == null || list.contains(null)) {
            throw new IllegalArgumentException("AuthScope array cannot contain null elements.");
        }
        return this.zza.zzb(new zzau() { // from class: com.google.android.gms.internal.games_v2.zzdc
            @Override // com.google.android.gms.internal.games_v2.zzau
            public final /* synthetic */ Task zza(GoogleApi googleApi, final List list2) {
                TaskApiCall.Builder builder = TaskApiCall.builder();
                final String str2 = str;
                final boolean z2 = z;
                return googleApi.doWrite(builder.run(new RemoteCall() { // from class: com.google.android.gms.internal.games_v2.zzdd
                    @Override // com.google.android.gms.common.api.internal.RemoteCall
                    public final /* synthetic */ void accept(Object obj, Object obj2) throws RemoteException {
                        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                        com.google.android.gms.games.internal.zzai zzaiVar = (com.google.android.gms.games.internal.zzai) obj;
                        AuthScope authScope = AuthScope.EMAIL;
                        List list3 = list2;
                        Objects.requireNonNull(list3, "Input scopes list cannot be null");
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        Iterator it = list3.iterator();
                        while (it.hasNext()) {
                            linkedHashSet.add(((AuthScope) it.next()).getValue());
                        }
                        zzaiVar.zzT(taskCompletionSource, str2, z2, zzgq.zzi(linkedHashSet));
                    }
                }).setMethodKey(6748).build());
            }
        }, list);
    }
}
