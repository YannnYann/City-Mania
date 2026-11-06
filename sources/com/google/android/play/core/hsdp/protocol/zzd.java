package com.google.android.play.core.hsdp.protocol;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzd extends com.google.android.gms.internal.playcore_hsdp.zzb implements zze {
    public zzd() {
        super("com.google.android.play.core.hsdp.protocol.IHpoaServiceListener");
    }

    @Override // com.google.android.gms.internal.playcore_hsdp.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        Bundle bundle = (Bundle) com.google.android.gms.internal.playcore_hsdp.zzc.zza(parcel, Bundle.CREATOR);
        com.google.android.gms.internal.playcore_hsdp.zzc.zzb(parcel);
        zzb(bundle);
        return true;
    }
}
