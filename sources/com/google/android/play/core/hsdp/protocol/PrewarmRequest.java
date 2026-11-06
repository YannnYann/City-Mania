package com.google.android.play.core.hsdp.protocol;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class PrewarmRequest implements Parcelable {
    public static final Parcelable.Creator<PrewarmRequest> CREATOR = new zzm();
    public final String zza;
    public final String zzb;
    public final IBinder zzc;
    public final Bundle zzd;

    public /* synthetic */ PrewarmRequest(Parcel parcel, zzn zznVar) {
        String string = parcel.readString();
        Objects.requireNonNull(string);
        this.zza = string;
        String string2 = parcel.readString();
        Objects.requireNonNull(string2);
        this.zzb = string2;
        if (parcel.readByte() != 0) {
            this.zzc = parcel.readStrongBinder();
        } else {
            this.zzc = null;
        }
        Bundle bundle = parcel.readBundle(PrewarmRequest.class.getClassLoader());
        this.zzd = bundle == null ? Bundle.EMPTY : bundle;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zza);
        parcel.writeString(this.zzb);
        IBinder iBinder = this.zzc;
        if (iBinder != null) {
            parcel.writeByte((byte) 1);
            parcel.writeStrongBinder(iBinder);
        } else {
            parcel.writeByte((byte) 0);
        }
        parcel.writeBundle(this.zzd);
    }

    public PrewarmRequest(String str, String str2, IBinder iBinder, Bundle bundle) {
        Objects.requireNonNull(str, "targetPackage cannot be null");
        this.zza = str;
        Objects.requireNonNull(str2, "url cannot be null");
        this.zzb = str2;
        this.zzc = iBinder;
        this.zzd = bundle != null ? new Bundle(bundle) : Bundle.EMPTY;
    }
}
