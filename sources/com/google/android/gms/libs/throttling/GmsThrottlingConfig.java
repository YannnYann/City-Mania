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
@SafeParcelable.Class(creator = "GmsThrottlingConfigCreator")
public final class GmsThrottlingConfig extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GmsThrottlingConfig> CREATOR = new zzb();

    @SafeParcelable.Field(getter = "getClientConfig", id = 1)
    public ThrottlingPolicy zza;

    @SafeParcelable.Field(getter = "getModuleConfig", id = 2)
    public ThrottlingPolicy zzb;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
    @KeepForSdk
    public static final class Builder {
        public final GmsThrottlingConfig zza = new GmsThrottlingConfig(null);
    }

    private GmsThrottlingConfig() {
        throw null;
    }

    @SafeParcelable.Constructor
    public GmsThrottlingConfig(@SafeParcelable.Param(id = 1) ThrottlingPolicy throttlingPolicy, @SafeParcelable.Param(id = 2) ThrottlingPolicy throttlingPolicy2) {
        this.zza = throttlingPolicy;
        this.zzb = throttlingPolicy2;
    }

    public /* synthetic */ GmsThrottlingConfig(byte[] bArr) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GmsThrottlingConfig) {
            GmsThrottlingConfig gmsThrottlingConfig = (GmsThrottlingConfig) obj;
            if (Objects.equals(this.zza, gmsThrottlingConfig.zza) && Objects.equals(this.zzb, gmsThrottlingConfig.zzb)) {
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
