package com.google.android.gms.games;

import android.content.Intent;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface AchievementsClient {
    Task<Intent> getAchievementsIntent();

    void setSteps(String str, int i);

    void unlock(String str);
}
