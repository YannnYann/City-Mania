package com.google.android.gms.libs.throttling;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
@SafeParcelable.Class(creator = "ThrottlingPolicyCreator")
public final class ThrottlingPolicy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ThrottlingPolicy> CREATOR = new zze();

    @SafeParcelable.Field(defaultValue = "false", getter = "getEnabled", id = 1)
    public final boolean zza;

    @SafeParcelable.Field(getter = "getDefaultLimits", id = 2)
    public ThrottlingLimits zzb;

    @SafeParcelable.Field(getter = "getOverrides", id = 3)
    public ThrottlingOverride[] zzc;

    @SafeParcelable.Field(defaultValue = "10000", getter = "getMaxCacheEntries", id = 4)
    public final int zzd;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
    @KeepForSdk
    public static final class Builder {
        public final ThrottlingPolicy zza = new ThrottlingPolicy(null);
    }

    private ThrottlingPolicy() {
        this.zza = false;
        this.zzd = UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS;
    }

    @SafeParcelable.Constructor
    public ThrottlingPolicy(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) ThrottlingLimits throttlingLimits, @SafeParcelable.Param(id = 3) ThrottlingOverride[] throttlingOverrideArr, @SafeParcelable.Param(id = 4) int i) {
        this.zza = z;
        this.zzb = throttlingLimits;
        this.zzc = throttlingOverrideArr;
        this.zzd = i;
    }

    public /* synthetic */ ThrottlingPolicy(byte[] bArr) {
        this.zza = false;
        this.zzd = UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ThrottlingPolicy) {
            ThrottlingPolicy throttlingPolicy = (ThrottlingPolicy) obj;
            if (Boolean.valueOf(this.zza).equals(Boolean.valueOf(throttlingPolicy.zza)) && Objects.equals(this.zzb, throttlingPolicy.zzb) && Arrays.equals(this.zzc, throttlingPolicy.zzc) && Integer.valueOf(this.zzd).equals(Integer.valueOf(throttlingPolicy.zzd))) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Boolean.valueOf(this.zza), this.zzb, Integer.valueOf(Arrays.hashCode(this.zzc)), Integer.valueOf(this.zzd));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.zza);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        SafeParcelWriter.writeTypedArray(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.writeInt(parcel, 4, this.zzd);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
