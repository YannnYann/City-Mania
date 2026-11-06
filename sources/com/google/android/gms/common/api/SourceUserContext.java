package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
@SafeParcelable.Class(creator = "SourceUserContextCreator")
public final class SourceUserContext extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SourceUserContext> CREATOR = new zze();

    @SafeParcelable.Field(getter = "getUserSerial", id = 1)
    private final long zza;

    @SafeParcelable.Constructor
    public SourceUserContext(@SafeParcelable.Param(id = 1) long j) {
        this.zza = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof SourceUserContext) && this.zza == ((SourceUserContext) obj).zza;
    }

    @KeepForSdk
    public long getUserSerial() {
        return this.zza;
    }

    public final int hashCode() {
        return Long.hashCode(this.zza);
    }

    public final String toString() {
        long j = this.zza;
        StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 19);
        sb.append("SourceUserContext(");
        sb.append(j);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, getUserSerial());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
