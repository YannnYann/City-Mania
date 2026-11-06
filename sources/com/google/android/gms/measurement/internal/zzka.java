package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzka implements Runnable {
    public final /* synthetic */ long zza;
    public final /* synthetic */ zzlj zzb;

    public zzka(zzlj zzljVar, long j) {
        this.zza = j;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzic zzicVar = this.zzb.zzu;
        zzhe zzheVar = zzicVar.zzd().zzf;
        long j = this.zza;
        zzheVar.zzb(j);
        zzicVar.zzaW().zzj().zzb("Session timeout duration set", Long.valueOf(j));
    }
}
