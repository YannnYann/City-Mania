package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.RetainForClient;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@RetainForClient
@SafeParcelable.Class(creator = "GameEntityCreator", creatorIsFinal = false)
@SafeParcelable.Reserved({1000})
public final class GameEntity extends GamesDowngradeableSafeParcel implements Game {
    public static final Parcelable.Creator<GameEntity> CREATOR = new zze();

    @SafeParcelable.Field(getter = "getApplicationId", id = 1)
    public final String zza;

    @SafeParcelable.Field(getter = "getDisplayName", id = 2)
    public final String zzb;

    @SafeParcelable.Field(getter = "getPrimaryCategory", id = 3)
    public final String zzc;

    @SafeParcelable.Field(getter = "getSecondaryCategory", id = 4)
    public final String zzd;

    @SafeParcelable.Field(getter = "getDescription", id = 5)
    public final String zze;

    @SafeParcelable.Field(getter = "getDeveloperName", id = 6)
    public final String zzf;

    @SafeParcelable.Field(getter = "getIconImageUri", id = 7)
    public final Uri zzg;

    @SafeParcelable.Field(getter = "getHiResImageUri", id = 8)
    public final Uri zzh;

    @SafeParcelable.Field(getter = "getFeaturedImageUri", id = 9)
    public final Uri zzi;

    @SafeParcelable.Field(getter = "isPlayEnabledGame", id = 10)
    public final boolean zzj;

    @SafeParcelable.Field(getter = "isInstanceInstalled", id = 11)
    public final boolean zzk;

    @SafeParcelable.Field(getter = "getInstancePackageName", id = 12)
    public final String zzl;

    @SafeParcelable.Field(getter = "getGameplayAclStatus", id = 13)
    public final int zzm;

    @SafeParcelable.Field(getter = "getAchievementTotalCount", id = 14)
    public final int zzn;

    @SafeParcelable.Field(getter = "getLeaderboardCount", id = 15)
    public final int zzo;

    @SafeParcelable.Field(getter = "isRealTimeMultiplayerEnabled", id = 16)
    public final boolean zzp;

    @SafeParcelable.Field(getter = "isTurnBasedMultiplayerEnabled", id = 17)
    public final boolean zzq;

    @SafeParcelable.Field(getter = "getIconImageUrl", id = 18)
    public final String zzr;

    @SafeParcelable.Field(getter = "getHiResImageUrl", id = 19)
    public final String zzs;

    @SafeParcelable.Field(getter = "getFeaturedImageUrl", id = 20)
    public final String zzt;

    @SafeParcelable.Field(getter = "isMuted", id = 21)
    public final boolean zzu;

    @SafeParcelable.Field(getter = "isIdentitySharingConfirmed", id = 22)
    public final boolean zzv;

    @SafeParcelable.Field(getter = "areSnapshotsEnabled", id = 23)
    public final boolean zzw;

    @SafeParcelable.Field(getter = "getThemeColor", id = 24)
    public final String zzx;

    @SafeParcelable.Field(getter = "hasGamepadSupport", id = 25)
    public final boolean zzy;

    @SafeParcelable.Field(getter = "isProfilelessRecallEnabled", id = 28)
    public final boolean zzz;

    public GameEntity(Game game) {
        this.zza = game.getApplicationId();
        this.zzc = game.getPrimaryCategory();
        this.zzd = game.getSecondaryCategory();
        this.zze = game.getDescription();
        this.zzf = game.getDeveloperName();
        this.zzb = game.getDisplayName();
        this.zzg = game.getIconImageUri();
        this.zzr = game.getIconImageUrl();
        this.zzh = game.getHiResImageUri();
        this.zzs = game.getHiResImageUrl();
        this.zzi = game.getFeaturedImageUri();
        this.zzt = game.getFeaturedImageUrl();
        this.zzj = game.zza();
        this.zzk = game.zze();
        this.zzl = game.zzf();
        this.zzm = 1;
        this.zzn = game.getAchievementTotalCount();
        this.zzo = game.getLeaderboardCount();
        this.zzp = game.zzg();
        this.zzq = game.zzh();
        this.zzu = game.zzb();
        this.zzv = game.zzc();
        this.zzw = game.areSnapshotsEnabled();
        this.zzx = game.getThemeColor();
        this.zzy = game.hasGamepadSupport();
        this.zzz = game.zzd();
    }

    public static int zzi(Game game) {
        return Objects.hash(game.getApplicationId(), game.getDisplayName(), game.getPrimaryCategory(), game.getSecondaryCategory(), game.getDescription(), game.getDeveloperName(), game.getIconImageUri(), game.getHiResImageUri(), game.getFeaturedImageUri(), Boolean.valueOf(game.zza()), Boolean.valueOf(game.zze()), game.zzf(), Integer.valueOf(game.getAchievementTotalCount()), Integer.valueOf(game.getLeaderboardCount()), Boolean.valueOf(game.zzg()), Boolean.valueOf(game.zzh()), Boolean.valueOf(game.zzb()), Boolean.valueOf(game.zzc()), Boolean.valueOf(game.areSnapshotsEnabled()), game.getThemeColor(), Boolean.valueOf(game.hasGamepadSupport()), Boolean.valueOf(game.zzd()));
    }

    public static boolean zzj(Game game, Object obj) {
        if (!(obj instanceof Game)) {
            return false;
        }
        if (game == obj) {
            return true;
        }
        Game game2 = (Game) obj;
        return Objects.equals(game2.getApplicationId(), game.getApplicationId()) && Objects.equals(game2.getDisplayName(), game.getDisplayName()) && Objects.equals(game2.getPrimaryCategory(), game.getPrimaryCategory()) && Objects.equals(game2.getSecondaryCategory(), game.getSecondaryCategory()) && Objects.equals(game2.getDescription(), game.getDescription()) && Objects.equals(game2.getDeveloperName(), game.getDeveloperName()) && Objects.equals(game2.getIconImageUri(), game.getIconImageUri()) && Objects.equals(game2.getHiResImageUri(), game.getHiResImageUri()) && Objects.equals(game2.getFeaturedImageUri(), game.getFeaturedImageUri()) && Boolean.valueOf(game2.zza()).equals(Boolean.valueOf(game.zza())) && Boolean.valueOf(game2.zze()).equals(Boolean.valueOf(game.zze())) && Objects.equals(game2.zzf(), game.zzf()) && Integer.valueOf(game2.getAchievementTotalCount()).equals(Integer.valueOf(game.getAchievementTotalCount())) && Integer.valueOf(game2.getLeaderboardCount()).equals(Integer.valueOf(game.getLeaderboardCount())) && Boolean.valueOf(game2.zzg()).equals(Boolean.valueOf(game.zzg())) && Boolean.valueOf(game2.zzh()).equals(Boolean.valueOf(game.zzh())) && Boolean.valueOf(game2.zzb()).equals(Boolean.valueOf(game.zzb())) && Boolean.valueOf(game2.zzc()).equals(Boolean.valueOf(game.zzc())) && Boolean.valueOf(game2.areSnapshotsEnabled()).equals(Boolean.valueOf(game.areSnapshotsEnabled())) && Objects.equals(game2.getThemeColor(), game.getThemeColor()) && Boolean.valueOf(game2.hasGamepadSupport()).equals(Boolean.valueOf(game.hasGamepadSupport())) && Boolean.valueOf(game2.zzd()).equals(Boolean.valueOf(game.zzd()));
    }

    public static String zzk(Game game) {
        return com.google.android.gms.common.internal.Objects.toStringHelper(game).add("ApplicationId", game.getApplicationId()).add("DisplayName", game.getDisplayName()).add("PrimaryCategory", game.getPrimaryCategory()).add("SecondaryCategory", game.getSecondaryCategory()).add("Description", game.getDescription()).add("DeveloperName", game.getDeveloperName()).add("IconImageUri", game.getIconImageUri()).add("IconImageUrl", game.getIconImageUrl()).add("HiResImageUri", game.getHiResImageUri()).add("HiResImageUrl", game.getHiResImageUrl()).add("FeaturedImageUri", game.getFeaturedImageUri()).add("FeaturedImageUrl", game.getFeaturedImageUrl()).add("PlayEnabledGame", Boolean.valueOf(game.zza())).add("InstanceInstalled", Boolean.valueOf(game.zze())).add("InstancePackageName", game.zzf()).add("AchievementTotalCount", Integer.valueOf(game.getAchievementTotalCount())).add("LeaderboardCount", Integer.valueOf(game.getLeaderboardCount())).add("AreSnapshotsEnabled", Boolean.valueOf(game.areSnapshotsEnabled())).add("ThemeColor", game.getThemeColor()).add("HasGamepadSupport", Boolean.valueOf(game.hasGamepadSupport())).toString();
    }

    @Override // com.google.android.gms.games.Game
    public boolean areSnapshotsEnabled() {
        return this.zzw;
    }

    public boolean equals(Object obj) {
        return zzj(this, obj);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ Game freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.Game
    public int getAchievementTotalCount() {
        return this.zzn;
    }

    @Override // com.google.android.gms.games.Game
    public String getApplicationId() {
        return this.zza;
    }

    @Override // com.google.android.gms.games.Game
    public String getDescription() {
        return this.zze;
    }

    @Override // com.google.android.gms.games.Game
    public String getDeveloperName() {
        return this.zzf;
    }

    @Override // com.google.android.gms.games.Game
    public String getDisplayName() {
        return this.zzb;
    }

    @Override // com.google.android.gms.games.Game
    public Uri getFeaturedImageUri() {
        return this.zzi;
    }

    @Override // com.google.android.gms.games.Game
    public String getFeaturedImageUrl() {
        return this.zzt;
    }

    @Override // com.google.android.gms.games.Game
    public Uri getHiResImageUri() {
        return this.zzh;
    }

    @Override // com.google.android.gms.games.Game
    public String getHiResImageUrl() {
        return this.zzs;
    }

    @Override // com.google.android.gms.games.Game
    public Uri getIconImageUri() {
        return this.zzg;
    }

    @Override // com.google.android.gms.games.Game
    public String getIconImageUrl() {
        return this.zzr;
    }

    @Override // com.google.android.gms.games.Game
    public int getLeaderboardCount() {
        return this.zzo;
    }

    @Override // com.google.android.gms.games.Game
    public String getPrimaryCategory() {
        return this.zzc;
    }

    @Override // com.google.android.gms.games.Game
    public String getSecondaryCategory() {
        return this.zzd;
    }

    @Override // com.google.android.gms.games.Game
    public String getThemeColor() {
        return this.zzx;
    }

    @Override // com.google.android.gms.games.Game
    public boolean hasGamepadSupport() {
        return this.zzy;
    }

    public int hashCode() {
        return zzi(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzk(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (shouldDowngrade()) {
            parcel.writeString(this.zza);
            parcel.writeString(this.zzb);
            parcel.writeString(this.zzc);
            parcel.writeString(this.zzd);
            parcel.writeString(this.zze);
            parcel.writeString(this.zzf);
            Uri uri = this.zzg;
            parcel.writeString(uri == null ? null : uri.toString());
            Uri uri2 = this.zzh;
            parcel.writeString(uri2 == null ? null : uri2.toString());
            Uri uri3 = this.zzi;
            parcel.writeString(uri3 != null ? uri3.toString() : null);
            parcel.writeInt(this.zzj ? 1 : 0);
            parcel.writeInt(this.zzk ? 1 : 0);
            parcel.writeString(this.zzl);
            parcel.writeInt(this.zzm);
            parcel.writeInt(this.zzn);
            parcel.writeInt(this.zzo);
            return;
        }
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getApplicationId(), false);
        SafeParcelWriter.writeString(parcel, 2, getDisplayName(), false);
        SafeParcelWriter.writeString(parcel, 3, getPrimaryCategory(), false);
        SafeParcelWriter.writeString(parcel, 4, getSecondaryCategory(), false);
        SafeParcelWriter.writeString(parcel, 5, getDescription(), false);
        SafeParcelWriter.writeString(parcel, 6, getDeveloperName(), false);
        SafeParcelWriter.writeParcelable(parcel, 7, getIconImageUri(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 8, getHiResImageUri(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 9, getFeaturedImageUri(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 10, this.zzj);
        SafeParcelWriter.writeBoolean(parcel, 11, this.zzk);
        SafeParcelWriter.writeString(parcel, 12, this.zzl, false);
        SafeParcelWriter.writeInt(parcel, 13, this.zzm);
        SafeParcelWriter.writeInt(parcel, 14, getAchievementTotalCount());
        SafeParcelWriter.writeInt(parcel, 15, getLeaderboardCount());
        SafeParcelWriter.writeBoolean(parcel, 16, this.zzp);
        SafeParcelWriter.writeBoolean(parcel, 17, this.zzq);
        SafeParcelWriter.writeString(parcel, 18, getIconImageUrl(), false);
        SafeParcelWriter.writeString(parcel, 19, getHiResImageUrl(), false);
        SafeParcelWriter.writeString(parcel, 20, getFeaturedImageUrl(), false);
        SafeParcelWriter.writeBoolean(parcel, 21, this.zzu);
        SafeParcelWriter.writeBoolean(parcel, 22, this.zzv);
        SafeParcelWriter.writeBoolean(parcel, 23, areSnapshotsEnabled());
        SafeParcelWriter.writeString(parcel, 24, getThemeColor(), false);
        SafeParcelWriter.writeBoolean(parcel, 25, hasGamepadSupport());
        SafeParcelWriter.writeBoolean(parcel, 28, this.zzz);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // com.google.android.gms.games.Game
    public final boolean zza() {
        return this.zzj;
    }

    @Override // com.google.android.gms.games.Game
    public final boolean zzb() {
        return this.zzu;
    }

    @Override // com.google.android.gms.games.Game
    public final boolean zzc() {
        return this.zzv;
    }

    @Override // com.google.android.gms.games.Game
    public final boolean zzd() {
        return this.zzz;
    }

    @Override // com.google.android.gms.games.Game
    public final boolean zze() {
        return this.zzk;
    }

    @Override // com.google.android.gms.games.Game
    public final String zzf() {
        return this.zzl;
    }

    @Override // com.google.android.gms.games.Game
    public final boolean zzg() {
        return this.zzp;
    }

    @Override // com.google.android.gms.games.Game
    public final boolean zzh() {
        return this.zzq;
    }

    @SafeParcelable.Constructor
    public GameEntity(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) String str3, @SafeParcelable.Param(id = 4) String str4, @SafeParcelable.Param(id = 5) String str5, @SafeParcelable.Param(id = 6) String str6, @SafeParcelable.Param(id = 7) Uri uri, @SafeParcelable.Param(id = 8) Uri uri2, @SafeParcelable.Param(id = 9) Uri uri3, @SafeParcelable.Param(id = 10) boolean z, @SafeParcelable.Param(id = 11) boolean z2, @SafeParcelable.Param(id = 12) String str7, @SafeParcelable.Param(id = 13) int i, @SafeParcelable.Param(id = 14) int i2, @SafeParcelable.Param(id = 15) int i3, @SafeParcelable.Param(id = 16) boolean z3, @SafeParcelable.Param(id = 17) boolean z4, @SafeParcelable.Param(id = 18) String str8, @SafeParcelable.Param(id = 19) String str9, @SafeParcelable.Param(id = 20) String str10, @SafeParcelable.Param(id = 21) boolean z5, @SafeParcelable.Param(id = 22) boolean z6, @SafeParcelable.Param(id = 23) boolean z7, @SafeParcelable.Param(id = 24) String str11, @SafeParcelable.Param(id = 25) boolean z8, @SafeParcelable.Param(id = 28) boolean z9) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
        this.zze = str5;
        this.zzf = str6;
        this.zzg = uri;
        this.zzr = str8;
        this.zzh = uri2;
        this.zzs = str9;
        this.zzi = uri3;
        this.zzt = str10;
        this.zzj = z;
        this.zzk = z2;
        this.zzl = str7;
        this.zzm = i;
        this.zzn = i2;
        this.zzo = i3;
        this.zzp = z3;
        this.zzq = z4;
        this.zzu = z5;
        this.zzv = z6;
        this.zzw = z7;
        this.zzx = str11;
        this.zzy = z8;
        this.zzz = z9;
    }
}
