package com.google.android.gms.games.playergameevent;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.internal.zzg;
import com.ironsource.C3647i2;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@SafeParcelable.Class(creator = "PlayerGameEventCreator")
public final class PlayerGameEvent extends zzg {
    public static final Parcelable.Creator<PlayerGameEvent> CREATOR = new zzb();

    @SafeParcelable.Field(defaultValue = C3647i2.f, getter = "getEventElapsedTimeMillis", id = 1)
    public final long zza;

    @SafeParcelable.Field(getter = "getEventName", id = 2)
    public final String zzb;

    @SafeParcelable.Field(getter = "getEventProperties", id = 3)
    public final Bundle zzc;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
    public static class Builder {
    }

    @SafeParcelable.Constructor
    public PlayerGameEvent(@SafeParcelable.Param(id = 1) long j, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) Bundle bundle) {
        this.zza = j;
        this.zzb = str;
        this.zzc = bundle == null ? new Bundle() : bundle;
    }

    public String getEventName() {
        return this.zzb;
    }

    public Bundle getEventProperties() {
        return this.zzc;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        long j = this.zza;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, j);
        SafeParcelWriter.writeString(parcel, 2, getEventName(), false);
        SafeParcelWriter.writeBundle(parcel, 3, getEventProperties(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
