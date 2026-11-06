package com.google.android.play.core.hsdp.protocol;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzk extends com.google.android.gms.internal.playcore_hsdp.zzb implements zzl {
    public zzk() {
        super("com.google.android.play.core.hsdp.protocol.IHsdpServicePrewarmListener");
    }

    @Override // com.google.android.gms.internal.playcore_hsdp.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            Bundle bundle = (Bundle) com.google.android.gms.internal.playcore_hsdp.zzc.zza(parcel, Bundle.CREATOR);
            com.google.android.gms.internal.playcore_hsdp.zzc.zzb(parcel);
            zzc(bundle);
        } else {
            if (i != 2) {
                return false;
            }
            Bundle bundle2 = (Bundle) com.google.android.gms.internal.playcore_hsdp.zzc.zza(parcel, Bundle.CREATOR);
            com.google.android.gms.internal.playcore_hsdp.zzc.zzb(parcel);
            zzb(bundle2);
        }
        return true;
    }
}
