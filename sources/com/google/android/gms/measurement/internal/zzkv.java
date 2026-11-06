package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzkv implements Runnable {
    public final /* synthetic */ zzjl zza;
    public final /* synthetic */ long zzb;
    public final /* synthetic */ boolean zzc;
    public final /* synthetic */ zzlj zzd;

    public zzkv(zzlj zzljVar, zzjl zzjlVar, long j, boolean z) {
        this.zza = zzjlVar;
        this.zzb = j;
        this.zzc = z;
        Objects.requireNonNull(zzljVar);
        this.zzd = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.zzd;
        zzjl zzjlVar = this.zza;
        zzljVar.zzz(zzjlVar);
        zzljVar.zzaj(zzjlVar, this.zzb, false, this.zzc);
    }
}
