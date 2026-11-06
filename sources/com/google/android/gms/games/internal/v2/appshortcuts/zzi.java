package com.google.android.gms.games.internal.v2.appshortcuts;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.PersistableBundle;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@SafeParcelable.Class(creator = "GamesAppShortcutCreator")
public final class zzi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzi> CREATOR = new zzj();

    @SafeParcelable.Field(getter = "getId", id = 1)
    public final String zza;

    @SafeParcelable.Field(getter = "getExtras", id = 2)
    public final PersistableBundle zzb;

    @SafeParcelable.Field(getter = "isPinned", id = 3)
    public final Boolean zzc;

    @SafeParcelable.Field(getter = "isEnabled", id = 4)
    public final Boolean zzd;

    @SafeParcelable.Constructor
    public zzi(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) PersistableBundle persistableBundle, @SafeParcelable.Param(id = 3) Boolean bool, @SafeParcelable.Param(id = 4) Boolean bool2) {
        this.zza = str;
        this.zzb = persistableBundle;
        this.zzc = bool;
        this.zzd = bool2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, str, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        SafeParcelWriter.writeBooleanObject(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeBooleanObject(parcel, 4, this.zzd, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final String zza() {
        return this.zza;
    }
}
