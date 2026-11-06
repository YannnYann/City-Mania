package com.google.android.gms.games.leaderboard;

import android.net.Uri;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.Game;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface Leaderboard extends Freezable<Leaderboard> {
    String getDisplayName();

    Uri getIconImageUri();

    @KeepName
    @Deprecated
    String getIconImageUrl();

    String getLeaderboardId();

    int getScoreOrder();

    ArrayList<LeaderboardVariant> getVariants();

    Game zza();
}
