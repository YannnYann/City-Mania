package com.google.android.gms.games.stats;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.internal.zzg;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class(creator = "PlayerStatsEntityCreator")
@SafeParcelable.Reserved({1000})
public class PlayerStatsEntity extends zzg implements PlayerStats {
    public static final Parcelable.Creator<PlayerStatsEntity> CREATOR = new zza();

    @SafeParcelable.Field(getter = "getAverageSessionLength", id = 1)
    public final float zza;

    @SafeParcelable.Field(getter = "getChurnProbability", id = 2)
    public final float zzb;

    @SafeParcelable.Field(getter = "getDaysSinceLastPlayed", id = 3)
    public final int zzc;

    @SafeParcelable.Field(getter = "getNumberOfPurchases", id = 4)
    public final int zzd;

    @SafeParcelable.Field(getter = "getNumberOfSessions", id = 5)
    public final int zze;

    @SafeParcelable.Field(getter = "getSessionPercentile", id = 6)
    public final float zzf;

    @SafeParcelable.Field(getter = "getSpendPercentile", id = 7)
    public final float zzg;

    @SafeParcelable.Field(getter = "getRawValues", id = 8)
    public final Bundle zzh;

    @SafeParcelable.Field(getter = "getSpendProbability", id = 9)
    public final float zzi;

    @SafeParcelable.Field(getter = "getHighSpenderProbability", id = 10)
    public final float zzj;

    @SafeParcelable.Field(getter = "getTotalSpendNext28Days", id = 11)
    public final float zzk;

    @SafeParcelable.Constructor
    public PlayerStatsEntity(@SafeParcelable.Param(id = 1) float f, @SafeParcelable.Param(id = 2) float f2, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) int i3, @SafeParcelable.Param(id = 6) float f3, @SafeParcelable.Param(id = 7) float f4, @SafeParcelable.Param(id = 8) Bundle bundle, @SafeParcelable.Param(id = 9) float f5, @SafeParcelable.Param(id = 10) float f6, @SafeParcelable.Param(id = 11) float f7) {
        this.zza = f;
        this.zzb = f2;
        this.zzc = i;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = f3;
        this.zzg = f4;
        this.zzh = bundle;
        this.zzi = f5;
        this.zzj = f6;
        this.zzk = f7;
    }

    public static int zzb(PlayerStats playerStats) {
        return Objects.hash(Float.valueOf(playerStats.getAverageSessionLength()), Float.valueOf(playerStats.getChurnProbability()), Integer.valueOf(playerStats.getDaysSinceLastPlayed()), Integer.valueOf(playerStats.getNumberOfPurchases()), Integer.valueOf(playerStats.getNumberOfSessions()), Float.valueOf(playerStats.getSessionPercentile()), Float.valueOf(playerStats.getSpendPercentile()), Float.valueOf(playerStats.getSpendProbability()), Float.valueOf(playerStats.getHighSpenderProbability()), Float.valueOf(playerStats.getTotalSpendNext28Days()));
    }

    public static boolean zzc(PlayerStats playerStats, Object obj) {
        if (!(obj instanceof PlayerStats)) {
            return false;
        }
        if (playerStats == obj) {
            return true;
        }
        PlayerStats playerStats2 = (PlayerStats) obj;
        return Float.valueOf(playerStats2.getAverageSessionLength()).equals(Float.valueOf(playerStats.getAverageSessionLength())) && Float.valueOf(playerStats2.getChurnProbability()).equals(Float.valueOf(playerStats.getChurnProbability())) && Integer.valueOf(playerStats2.getDaysSinceLastPlayed()).equals(Integer.valueOf(playerStats.getDaysSinceLastPlayed())) && Integer.valueOf(playerStats2.getNumberOfPurchases()).equals(Integer.valueOf(playerStats.getNumberOfPurchases())) && Integer.valueOf(playerStats2.getNumberOfSessions()).equals(Integer.valueOf(playerStats.getNumberOfSessions())) && Float.valueOf(playerStats2.getSessionPercentile()).equals(Float.valueOf(playerStats.getSessionPercentile())) && Float.valueOf(playerStats2.getSpendPercentile()).equals(Float.valueOf(playerStats.getSpendPercentile())) && Float.valueOf(playerStats2.getSpendProbability()).equals(Float.valueOf(playerStats.getSpendProbability())) && Float.valueOf(playerStats2.getHighSpenderProbability()).equals(Float.valueOf(playerStats.getHighSpenderProbability())) && Float.valueOf(playerStats2.getTotalSpendNext28Days()).equals(Float.valueOf(playerStats.getTotalSpendNext28Days()));
    }

    public static String zzd(PlayerStats playerStats) {
        return com.google.android.gms.common.internal.Objects.toStringHelper(playerStats).add("AverageSessionLength", Float.valueOf(playerStats.getAverageSessionLength())).add("ChurnProbability", Float.valueOf(playerStats.getChurnProbability())).add("DaysSinceLastPlayed", Integer.valueOf(playerStats.getDaysSinceLastPlayed())).add("NumberOfPurchases", Integer.valueOf(playerStats.getNumberOfPurchases())).add("NumberOfSessions", Integer.valueOf(playerStats.getNumberOfSessions())).add("SessionPercentile", Float.valueOf(playerStats.getSessionPercentile())).add("SpendPercentile", Float.valueOf(playerStats.getSpendPercentile())).add("SpendProbability", Float.valueOf(playerStats.getSpendProbability())).add("HighSpenderProbability", Float.valueOf(playerStats.getHighSpenderProbability())).add("TotalSpendNext28Days", Float.valueOf(playerStats.getTotalSpendNext28Days())).toString();
    }

    public final boolean equals(Object obj) {
        return zzc(this, obj);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ PlayerStats freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final float getAverageSessionLength() {
        return this.zza;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final float getChurnProbability() {
        return this.zzb;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final int getDaysSinceLastPlayed() {
        return this.zzc;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final float getHighSpenderProbability() {
        return this.zzj;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final int getNumberOfPurchases() {
        return this.zzd;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final int getNumberOfSessions() {
        return this.zze;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final float getSessionPercentile() {
        return this.zzf;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final float getSpendPercentile() {
        return this.zzg;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final float getSpendProbability() {
        return this.zzi;
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final float getTotalSpendNext28Days() {
        return this.zzk;
    }

    public final int hashCode() {
        return zzb(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        return zzd(this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.stats.PlayerStats
    public final Bundle zza() {
        return this.zzh;
    }

    public PlayerStatsEntity(PlayerStats playerStats) {
        this.zza = playerStats.getAverageSessionLength();
        this.zzb = playerStats.getChurnProbability();
        this.zzc = playerStats.getDaysSinceLastPlayed();
        this.zzd = playerStats.getNumberOfPurchases();
        this.zze = playerStats.getNumberOfSessions();
        this.zzf = playerStats.getSessionPercentile();
        this.zzg = playerStats.getSpendPercentile();
        this.zzi = playerStats.getSpendProbability();
        this.zzj = playerStats.getHighSpenderProbability();
        this.zzk = playerStats.getTotalSpendNext28Days();
        this.zzh = playerStats.zza();
    }
}
