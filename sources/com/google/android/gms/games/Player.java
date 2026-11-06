package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.data.Freezable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public interface Player extends Freezable<Player>, Parcelable {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface FriendsListVisibilityStatus {
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlayerFriendStatus {
    }

    Uri getBannerImageLandscapeUri();

    @KeepName
    @Deprecated
    String getBannerImageLandscapeUrl();

    Uri getBannerImagePortraitUri();

    @KeepName
    @Deprecated
    String getBannerImagePortraitUrl();

    CurrentPlayerInfo getCurrentPlayerInfo();

    String getDisplayName();

    Uri getHiResImageUri();

    @KeepName
    @Deprecated
    String getHiResImageUrl();

    Uri getIconImageUri();

    @KeepName
    @Deprecated
    String getIconImageUrl();

    @Deprecated
    long getLastPlayedWithTimestamp();

    PlayerLevelInfo getLevelInfo();

    String getPlayerId();

    PlayerRelationshipInfo getRelationshipInfo();

    long getRetrievedTimestamp();

    String getTitle();

    String zza();

    String zzb();

    String zzc();

    boolean zzd();

    @Deprecated
    int zze();

    boolean zzf();

    boolean zzg();

    com.google.android.gms.games.internal.player.zza zzh();

    long zzi();
}
