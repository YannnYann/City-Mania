package com.google.android.gms.games;

import android.app.Activity;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.games_v2.zzad;
import com.google.android.gms.internal.games_v2.zzaq;
import com.google.android.gms.internal.games_v2.zzay;
import com.google.android.gms.internal.games_v2.zzbw;
import com.google.android.gms.internal.games_v2.zzcj;
import com.google.android.gms.internal.games_v2.zzcq;
import com.google.android.gms.internal.games_v2.zzdg;
import com.google.android.gms.internal.games_v2.zzeb;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@ShowFirstParty
@zzad
public final class PlayGames {
    private PlayGames() {
    }

    @zzad
    public static AchievementsClient getAchievementsClient(Activity activity) {
        zzbw.zzb();
        return new zzcj(zzaq.zza(zzbw.zzc()));
    }

    @zzad
    public static EventsClient getEventsClient(Activity activity) {
        zzbw.zzb();
        return new zzcq(zzaq.zza(zzbw.zzc()));
    }

    @zzad
    public static GamesSignInClient getGamesSignInClient(Activity activity) {
        zzbw.zzb();
        return new zzdg(zzay.zza(zzbw.zzc()), zzaq.zza(zzbw.zzc()));
    }

    @zzad
    public static LeaderboardsClient getLeaderboardsClient(Activity activity) {
        zzbw.zzb();
        return new zzeb(zzaq.zza(zzbw.zzc()));
    }
}
