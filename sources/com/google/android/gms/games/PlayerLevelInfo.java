package com.google.android.gms.games;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@SafeParcelable.Class(creator = "PlayerLevelInfoCreator")
@SafeParcelable.Reserved({1000})
public final class PlayerLevelInfo extends com.google.android.gms.games.internal.zzg {
    public static final Parcelable.Creator<PlayerLevelInfo> CREATOR = new zzn();

    @SafeParcelable.Field(getter = "getCurrentXpTotal", id = 1)
    public final long zza;

    @SafeParcelable.Field(getter = "getLastLevelUpTimestamp", id = 2)
    public final long zzb;

    @SafeParcelable.Field(getter = "getCurrentLevel", id = 3)
    public final PlayerLevel zzc;

    @SafeParcelable.Field(getter = "getNextLevel", id = 4)
    public final PlayerLevel zzd;

    @SafeParcelable.Constructor
    public PlayerLevelInfo(@SafeParcelable.Param(id = 1) long j, @SafeParcelable.Param(id = 2) long j2, @SafeParcelable.Param(id = 3) PlayerLevel playerLevel, @SafeParcelable.Param(id = 4) PlayerLevel playerLevel2) {
        Preconditions.checkState(j != -1);
        Preconditions.checkNotNull(playerLevel);
        Preconditions.checkNotNull(playerLevel2);
        this.zza = j;
        this.zzb = j2;
        this.zzc = playerLevel;
        this.zzd = playerLevel2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlayerLevelInfo)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        PlayerLevelInfo playerLevelInfo = (PlayerLevelInfo) obj;
        return Long.valueOf(this.zza).equals(Long.valueOf(playerLevelInfo.zza)) && Long.valueOf(this.zzb).equals(Long.valueOf(playerLevelInfo.zzb)) && Objects.equals(this.zzc, playerLevelInfo.zzc) && Objects.equals(this.zzd, playerLevelInfo.zzd);
    }

    public PlayerLevel getCurrentLevel() {
        return this.zzc;
    }

    public long getCurrentXpTotal() {
        return this.zza;
    }

    public long getLastLevelUpTimestamp() {
        return this.zzb;
    }

    public PlayerLevel getNextLevel() {
        return this.zzd;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.zza), Long.valueOf(this.zzb), this.zzc, this.zzd);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, getCurrentXpTotal());
        SafeParcelWriter.writeLong(parcel, 2, getLastLevelUpTimestamp());
        SafeParcelWriter.writeParcelable(parcel, 3, getCurrentLevel(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, getNextLevel(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
