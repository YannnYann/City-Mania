package com.google.android.gms.libs.throttling;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
@SafeParcelable.Class(creator = "ThrottlingOverrideCreator")
public final class ThrottlingOverride extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ThrottlingOverride> CREATOR = new zzd();

    @SafeParcelable.Field(getter = "getSelector", id = 1)
    public ThrottlingSelector zza;

    @SafeParcelable.Field(getter = "getLimits", id = 2)
    public ThrottlingLimits zzb;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
    @KeepForSdk
    public static final class Builder {
        public final ThrottlingOverride zza = new ThrottlingOverride(null);
    }

    private ThrottlingOverride() {
        throw null;
    }

    @SafeParcelable.Constructor
    public ThrottlingOverride(@SafeParcelable.Param(id = 1) ThrottlingSelector throttlingSelector, @SafeParcelable.Param(id = 2) ThrottlingLimits throttlingLimits) {
        this.zza = throttlingSelector;
        this.zzb = throttlingLimits;
    }

    public /* synthetic */ ThrottlingOverride(byte[] bArr) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ThrottlingOverride) {
            ThrottlingOverride throttlingOverride = (ThrottlingOverride) obj;
            if (Objects.equals(this.zza, throttlingOverride.zza) && Objects.equals(this.zzb, throttlingOverride.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.zza, i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
