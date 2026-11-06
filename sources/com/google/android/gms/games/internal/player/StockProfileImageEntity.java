package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@UsedByReflection("GamesGmsClientImpl.java")
@SafeParcelable.Class(creator = "StockProfileImageEntityCreator")
@SafeParcelable.Reserved({1000})
public final class StockProfileImageEntity extends com.google.android.gms.games.internal.zzg implements StockProfileImage {
    public static final Parcelable.Creator<StockProfileImageEntity> CREATOR = new zzj();

    @SafeParcelable.Field(getter = "getImageUrl", id = 1)
    public final String zza;

    @SafeParcelable.Field(getter = "getImageUri", id = 2)
    public final Uri zzb;

    @SafeParcelable.Field(defaultValue = "", getter = "getA11yLabel", id = 3)
    public final String zzc;

    @SafeParcelable.Constructor
    public StockProfileImageEntity(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) Uri uri, @SafeParcelable.Param(id = 3) String str2) {
        this.zza = str;
        this.zzb = uri;
        this.zzc = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof StockProfileImage)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        StockProfileImage stockProfileImage = (StockProfileImage) obj;
        return Objects.equals(this.zza, stockProfileImage.getImageUrl()) && Objects.equals(this.zzb, stockProfileImage.zza()) && Objects.equals(this.zzc, stockProfileImage.zzb());
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final /* bridge */ /* synthetic */ StockProfileImage freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.internal.player.StockProfileImage
    public String getImageUrl() {
        return this.zza;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public final boolean isDataValid() {
        return true;
    }

    public final String toString() {
        return com.google.android.gms.common.internal.Objects.toStringHelper(this).add("ImageId", this.zza).add("ImageUri", this.zzb).add("A11yLabel", this.zzc).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getImageUrl(), false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    @Override // com.google.android.gms.games.internal.player.StockProfileImage
    public final Uri zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.games.internal.player.StockProfileImage
    public final String zzb() {
        return this.zzc;
    }
}
