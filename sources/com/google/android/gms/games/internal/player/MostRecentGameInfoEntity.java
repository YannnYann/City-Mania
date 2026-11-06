package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class(creator = "MostRecentGameInfoEntityCreator")
@SafeParcelable.Reserved({1000})
public final class MostRecentGameInfoEntity extends com.google.android.gms.games.internal.zzg implements zza {
    public static final Parcelable.Creator<MostRecentGameInfoEntity> CREATOR = new zzb();

    @SafeParcelable.Field(getter = "getGameId", id = 1)
    public final String zza;

    @SafeParcelable.Field(getter = "getGameName", id = 2)
    public final String zzb;

    @SafeParcelable.Field(getter = "getActivityTimestampMillis", id = 3)
    public final long zzc;

    @SafeParcelable.Field(getter = "getGameIconImageUri", id = 4)
    public final Uri zzd;

    @SafeParcelable.Field(getter = "getGameHiResImageUri", id = 5)
    public final Uri zze;

    @SafeParcelable.Field(getter = "getGameFeaturedImageUri", id = 6)
    public final Uri zzf;

    public MostRecentGameInfoEntity(zza zzaVar) {
        this.zza = zzaVar.zza();
        this.zzb = zzaVar.zzb();
        this.zzc = zzaVar.zzc();
        this.zzd = zzaVar.zzd();
        this.zze = zzaVar.zze();
        this.zzf = zzaVar.zzf();
    }

    public static int zzg(zza zzaVar) {
        return Objects.hash(zzaVar.zza(), zzaVar.zzb(), Long.valueOf(zzaVar.zzc()), zzaVar.zzd(), zzaVar.zze(), zzaVar.zzf());
    }

    public static boolean zzh(zza zzaVar, Object obj) {
        if (!(obj instanceof zza)) {
            return false;
        }
        if (zzaVar == obj) {
            return true;
        }
        zza zzaVar2 = (zza) obj;
        return Objects.equals(zzaVar2.zza(), zzaVar.zza()) && Objects.equals(zzaVar2.zzb(), zzaVar.zzb()) && Long.valueOf(zzaVar2.zzc()).equals(Long.valueOf(zzaVar.zzc())) && Objects.equals(zzaVar2.zzd(), zzaVar.zzd()) && Objects.equals(zzaVar2.zze(), zzaVar.zze()) && Objects.equals(zzaVar2.zzf(), zzaVar.zzf());
    }

    public static String zzi(zza zzaVar) {
        return com.google.android.gms.common.internal.Objects.toStringHelper(zzaVar).add("GameId", zzaVar.zza()).add("GameName", zzaVar.zzb()).add("ActivityTimestampMillis", Long.valueOf(zzaVar.zzc())).add("GameIconUri", zzaVar.zzd()).add("GameHiResUri", zzaVar.zze()).add("GameFeaturedUri", zzaVar.zzf()).toString();
    }

    public final boolean equals(Object obj) {
        return zzh(this, obj);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ Object freeze() {
        return this;
    }

    public final int hashCode() {
        return zzg(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        return zzi(this);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final String zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final long zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final Uri zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final Uri zze() {
        return this.zze;
    }

    @Override // com.google.android.gms.games.internal.player.zza
    public final Uri zzf() {
        return this.zzf;
    }

    @SafeParcelable.Constructor
    public MostRecentGameInfoEntity(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) Uri uri, @SafeParcelable.Param(id = 5) Uri uri2, @SafeParcelable.Param(id = 6) Uri uri3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = j;
        this.zzd = uri;
        this.zze = uri2;
        this.zzf = uri3;
    }
}
