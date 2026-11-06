package com.google.android.gms.games;

import android.content.Intent;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface LeaderboardsClient {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
    public static class LeaderboardScores implements Releasable {
        public final Leaderboard zza;
        public final LeaderboardScoreBuffer zzb;

        public LeaderboardScores(Leaderboard leaderboard, LeaderboardScoreBuffer leaderboardScoreBuffer) {
            this.zza = leaderboard;
            this.zzb = leaderboardScoreBuffer;
        }

        @Override // com.google.android.gms.common.api.Releasable
        public void release() {
            this.zzb.release();
        }
    }

    Task<Intent> getAllLeaderboardsIntent();

    void submitScore(String str, long j);
}
