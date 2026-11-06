package com.google.android.gms.games.internal.v2.appshortcuts;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzv extends com.google.android.gms.internal.games_v2.zza implements IInterface {
    public zzv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.games.internal.v2.appshortcuts.IAppShortcutsService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzd(zzx zzxVar, zzr zzrVar, List list, List list2) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzxVar);
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, zzrVar);
        parcelZza.writeTypedList(list);
        parcelZza.writeTypedList(list2);
        zzc(3, parcelZza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zze(zzx zzxVar, zzr zzrVar, zzi zziVar) throws RemoteException {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.games_v2.zzc.zza;
        parcelZza.writeStrongBinder(zzxVar);
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, zzrVar);
        com.google.android.gms.internal.games_v2.zzc.zzc(parcelZza, zziVar);
        zzc(4, parcelZza);
    }
}
