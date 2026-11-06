package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@SafeParcelable.Class(creator = "ContentsCreator")
@SafeParcelable.Reserved({1})
@Deprecated
@KeepForSdk
public class Contents extends AbstractSafeParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<Contents> CREATOR = new zza();

    @SafeParcelable.Field(id = 2)
    public final ParcelFileDescriptor zza;

    @SafeParcelable.Field(id = 3)
    public final int zzb;

    @SafeParcelable.Field(id = 4)
    public final int zzc;

    @SafeParcelable.Field(id = 5)
    public final DriveId zzd;

    @SafeParcelable.Field(id = 7)
    public final boolean zze;

    @SafeParcelable.Field(id = 8)
    public final String zzf;

    @SafeParcelable.Constructor
    public Contents(@SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) DriveId driveId, @SafeParcelable.Param(id = 7) boolean z, @SafeParcelable.Param(id = 8) String str) {
        this.zza = parcelFileDescriptor;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = driveId;
        this.zze = z;
        this.zzf = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        ParcelFileDescriptor parcelFileDescriptor = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, parcelFileDescriptor, i, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zzb);
        SafeParcelWriter.writeInt(parcel, 4, this.zzc);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzd, i, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.zze);
        SafeParcelWriter.writeString(parcel, 8, this.zzf, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
