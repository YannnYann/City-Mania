package com.google.android.gms.games.achievement;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.games.Player;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface Achievement extends Freezable<Achievement>, Parcelable {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface AchievementState {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface AchievementType {
    }

    String getAchievementId();

    int getCurrentSteps();

    String getDescription();

    String getFormattedCurrentSteps();

    String getFormattedTotalSteps();

    long getLastUpdatedTimestamp();

    String getName();

    Uri getRevealedImageUri();

    @KeepName
    @Deprecated
    String getRevealedImageUrl();

    int getState();

    int getTotalSteps();

    int getType();

    Uri getUnlockedImageUri();

    @KeepName
    @Deprecated
    String getUnlockedImageUrl();

    long getXpValue();

    String zza();

    Player zzb();

    @ShowFirstParty
    float zzc();
}
