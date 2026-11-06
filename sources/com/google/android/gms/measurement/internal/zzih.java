package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzih implements Runnable {
    public final /* synthetic */ zzah zza;
    public final /* synthetic */ zzr zzb;
    public final /* synthetic */ zzjd zzc;

    public zzih(zzjd zzjdVar, zzah zzahVar, zzr zzrVar) {
        this.zza = zzahVar;
        this.zzb = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzc = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjd zzjdVar = this.zzc;
        zzjdVar.zzL().zzaa();
        zzah zzahVar = this.zza;
        if (zzahVar.zzc.zza() == null) {
            zzjdVar.zzL().zzan(zzahVar, this.zzb);
        } else {
            zzjdVar.zzL().zzal(zzahVar, this.zzb);
        }
    }
}
