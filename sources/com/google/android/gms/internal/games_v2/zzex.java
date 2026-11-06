package com.google.android.gms.internal.games_v2;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.games.AnnotatedData;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.PlayersClient;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzex implements PlayersClient {
    private final zzaq zza;

    public zzex(zzaq zzaqVar) {
        this.zza = zzaqVar;
    }

    private final Task zza(final String str, final int i, final boolean z) {
        return this.zza.zzb(new zzap() { // from class: com.google.android.gms.internal.games_v2.zzes
            @Override // com.google.android.gms.internal.games_v2.zzap
            public final /* synthetic */ Task zza(GoogleApi googleApi) {
                TaskApiCall.Builder builder = TaskApiCall.builder();
                final String str2 = str;
                final int i2 = i;
                final boolean z2 = z;
                return googleApi.doRead(builder.run(new RemoteCall() { // from class: com.google.android.gms.internal.games_v2.zzev
                    @Override // com.google.android.gms.common.api.internal.RemoteCall
                    public final /* synthetic */ void accept(Object obj, Object obj2) throws RemoteException {
                        ((com.google.android.gms.games.internal.zzai) obj).zzu((TaskCompletionSource) obj2, str2, i2, false, z2);
                    }
                }).setMethodKey(6715).build());
            }
        });
    }

    private final Task zzb(final String str, final int i) {
        return this.zza.zzb(new zzap() { // from class: com.google.android.gms.internal.games_v2.zzet
            @Override // com.google.android.gms.internal.games_v2.zzap
            public final /* synthetic */ Task zza(GoogleApi googleApi) {
                TaskApiCall.Builder builder = TaskApiCall.builder();
                final String str2 = str;
                final int i2 = i;
                return googleApi.doRead(builder.run(new RemoteCall() { // from class: com.google.android.gms.internal.games_v2.zzeu
                    @Override // com.google.android.gms.common.api.internal.RemoteCall
                    public final /* synthetic */ void accept(Object obj, Object obj2) throws RemoteException {
                        ((com.google.android.gms.games.internal.zzai) obj).zzu((TaskCompletionSource) obj2, str2, i2, true, false);
                    }
                }).setMethodKey(6716).build());
            }
        });
    }

    public final Task<Intent> getCompareProfileIntent(final Player player) {
        return this.zza.zzb(new zzap() { // from class: com.google.android.gms.internal.games_v2.zzeq
            @Override // com.google.android.gms.internal.games_v2.zzap
            public final /* synthetic */ Task zza(GoogleApi googleApi) {
                TaskApiCall.Builder builder = TaskApiCall.builder();
                final Player player2 = player;
                return googleApi.doRead(builder.run(new RemoteCall() { // from class: com.google.android.gms.internal.games_v2.zzeh
                    @Override // com.google.android.gms.common.api.internal.RemoteCall
                    public final /* synthetic */ void accept(Object obj, Object obj2) throws RemoteException {
                        Intent intentZzN = ((com.google.android.gms.games.internal.zzao) ((com.google.android.gms.games.internal.zzai) obj).getService()).zzN(new PlayerEntity(player2));
                        intentZzN.setExtrasClassLoader(PlayerEntity.class.getClassLoader());
                        ((TaskCompletionSource) obj2).trySetResult(intentZzN);
                    }
                }).setMethodKey(6713).build());
            }
        });
    }

    public final Task<Intent> getCompareProfileIntentWithAlternativeNameHints(String str, String str2, String str3) {
        return this.zza.zzb(new zzep(str, str2, str3));
    }

    public final Task<Player> getCurrentPlayer() {
        return this.zza.zzb(zzef.zza);
    }

    public final Task<String> getCurrentPlayerId() {
        return this.zza.zzb(zzew.zza);
    }

    public final Task<Intent> getPlayerSearchIntent() {
        return this.zza.zzb(zzer.zza);
    }

    public final Task<AnnotatedData<PlayerBuffer>> loadFriends(int i, boolean z) {
        return zza("friends_all", i, z);
    }

    public final Task<AnnotatedData<PlayerBuffer>> loadMoreFriends(int i) {
        return zzb("friends_all", i);
    }

    public final Task<AnnotatedData<PlayerBuffer>> loadMoreRecentlyPlayedWithPlayers(int i) {
        return zzb("played_with", i);
    }

    public final Task<AnnotatedData<Player>> loadPlayer(String str) {
        return this.zza.zzb(new zzeo(str, false));
    }

    public final Task<AnnotatedData<PlayerBuffer>> loadRecentlyPlayedWithPlayers(int i, boolean z) {
        return zza("played_with", i, z);
    }

    public final Task<Intent> getCompareProfileIntent(String str) {
        return this.zza.zzb(new zzep(str, null, null));
    }

    public final Task<AnnotatedData<Player>> getCurrentPlayer(final boolean z) {
        return this.zza.zzb(new zzap() { // from class: com.google.android.gms.internal.games_v2.zzen
            @Override // com.google.android.gms.internal.games_v2.zzap
            public final /* synthetic */ Task zza(GoogleApi googleApi) {
                TaskApiCall.Builder builder = TaskApiCall.builder();
                final boolean z2 = z;
                return googleApi.doRead(builder.run(new RemoteCall() { // from class: com.google.android.gms.internal.games_v2.zzek
                    @Override // com.google.android.gms.common.api.internal.RemoteCall
                    public final /* synthetic */ void accept(Object obj, Object obj2) throws RemoteException {
                        ((com.google.android.gms.games.internal.zzai) obj).zzs((TaskCompletionSource) obj2, z2);
                    }
                }).setMethodKey(6710).build());
            }
        });
    }

    public final Task<AnnotatedData<Player>> loadPlayer(String str, boolean z) {
        return this.zza.zzb(new zzeo(str, z));
    }
}
