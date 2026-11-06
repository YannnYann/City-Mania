package com.google.android.gms.games.leaderboard;

import android.net.Uri;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.Player;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface LeaderboardScore extends Freezable<LeaderboardScore> {
    String getDisplayRank();

    String getDisplayScore();

    long getRank();

    long getRawScore();

    Player getScoreHolder();

    String getScoreHolderDisplayName();

    Uri getScoreHolderHiResImageUri();

    @KeepName
    @Deprecated
    String getScoreHolderHiResImageUrl();

    Uri getScoreHolderIconImageUri();

    @KeepName
    @Deprecated
    String getScoreHolderIconImageUrl();

    String getScoreTag();

    long getTimestampMillis();
}
