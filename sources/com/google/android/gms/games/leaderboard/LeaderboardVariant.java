package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.Freezable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface LeaderboardVariant extends Freezable<LeaderboardVariant> {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface Collection {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface TimeSpan {
    }

    int getCollection();

    String getDisplayPlayerRank();

    String getDisplayPlayerScore();

    long getNumScores();

    long getPlayerRank();

    String getPlayerScoreTag();

    long getRawPlayerScore();

    int getTimeSpan();

    boolean hasPlayerInfo();

    String zza();

    String zzb();

    String zzc();
}
