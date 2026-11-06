package com.google.android.gms.games.internal.v2.appshortcuts;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@SafeParcelable.Class(creator = "ExpectedShortcutsStateCreator")
public final class zzg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzg> CREATOR = new zzh();

    @SafeParcelable.Field(getter = "getRemovedShortcutIds", id = 1)
    public final List zza;

    @SafeParcelable.Field(getter = "getAddedShortcuts", id = 2)
    public final List zzb;

    @SafeParcelable.Field(getter = "getDisabledShortcutIds", id = 3)
    public final List zzc;

    @SafeParcelable.Field(getter = "getEnabledShortcutIds", id = 4)
    public final List zzd;

    @SafeParcelable.Constructor
    public zzg(@SafeParcelable.Param(id = 1) List list, @SafeParcelable.Param(id = 2) List list2, @SafeParcelable.Param(id = 3) List list3, @SafeParcelable.Param(id = 4) List list4) {
        this.zza = list;
        this.zzb = list2;
        this.zzc = list3;
        this.zzd = list4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        List list = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringList(parcel, 1, list, false);
        SafeParcelWriter.writeTypedList(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeStringList(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeStringList(parcel, 4, this.zzd, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final List zza() {
        return this.zza;
    }

    public final List zzb() {
        return this.zzb;
    }

    public final List zzc() {
        return this.zzc;
    }

    public final List zzd() {
        return this.zzd;
    }
}
