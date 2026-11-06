package com.google.android.gms.libs.throttling;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.ironsource.C3647i2;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
@SafeParcelable.Class(creator = "ThrottlingSelectorCreator")
public final class ThrottlingSelector extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ThrottlingSelector> CREATOR = new zzf();

    @SafeParcelable.Field(getter = "getCallingPackageName", id = 1)
    public String zza;

    @SafeParcelable.Field(defaultValue = C3647i2.f, getter = "getMethodKey", id = 2)
    public final int zzb;

    @SafeParcelable.Field(defaultValue = C3647i2.f, getter = "getServiceId", id = 3)
    public final int zzc;

    @SafeParcelable.Field(getter = "getIntentAction", id = 4)
    public String zzd;

    @SafeParcelable.Field(getter = "getComponentName", id = 5)
    public String zze;

    @SafeParcelable.Field(getter = "getContentUri", id = 6)
    public String zzf;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
    @KeepForSdk
    public static final class Builder {
        public final ThrottlingSelector zza = new ThrottlingSelector(null);
    }

    private ThrottlingSelector() {
        this.zzb = -1;
        this.zzc = -1;
    }

    @SafeParcelable.Constructor
    public ThrottlingSelector(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) int i, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) String str3, @SafeParcelable.Param(id = 6) String str4) {
        this.zza = str;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = str2;
        this.zze = str3;
        this.zzf = str4;
    }

    public /* synthetic */ ThrottlingSelector(byte[] bArr) {
        this.zzb = -1;
        this.zzc = -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ThrottlingSelector) {
            ThrottlingSelector throttlingSelector = (ThrottlingSelector) obj;
            if (Objects.equals(this.zza, throttlingSelector.zza) && Integer.valueOf(this.zzb).equals(Integer.valueOf(throttlingSelector.zzb)) && Integer.valueOf(this.zzc).equals(Integer.valueOf(throttlingSelector.zzc)) && Objects.equals(this.zzd, throttlingSelector.zzd) && Objects.equals(this.zze, throttlingSelector.zze) && Objects.equals(this.zzf, throttlingSelector.zzf)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), this.zzd, this.zze, this.zzf);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zza, false);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeString(parcel, 5, this.zze, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzf, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
