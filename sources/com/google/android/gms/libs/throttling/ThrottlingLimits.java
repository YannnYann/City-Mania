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
@SafeParcelable.Class(creator = "ThrottlingLimitsCreator")
public final class ThrottlingLimits extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ThrottlingLimits> CREATOR = new zzc();

    @SafeParcelable.Field(defaultValue = C3647i2.f, getter = "getMaxInflight", id = 1)
    public final int zza;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
    @KeepForSdk
    public static final class Builder {
        public final ThrottlingLimits zza = new ThrottlingLimits((byte[]) null);
    }

    private ThrottlingLimits() {
        this.zza = -1;
    }

    @SafeParcelable.Constructor
    public ThrottlingLimits(@SafeParcelable.Param(id = 1) int i) {
        this.zza = i;
    }

    public /* synthetic */ ThrottlingLimits(byte[] bArr) {
        this.zza = -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ThrottlingLimits) {
            return Integer.valueOf(this.zza).equals(Integer.valueOf(((ThrottlingLimits) obj).zza));
        }
        return false;
    }

    public int getMaxInflight() {
        return this.zza;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.zza));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, getMaxInflight());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
