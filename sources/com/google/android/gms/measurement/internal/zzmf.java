package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzmf extends zzgg {
    public final /* synthetic */ AtomicReference zza;
    public final /* synthetic */ zznl zzb;

    public zzmf(zznl zznlVar, AtomicReference atomicReference) {
        this.zza = atomicReference;
        Objects.requireNonNull(zznlVar);
        this.zzb = zznlVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzgh
    public final void zze(zzoq zzoqVar) {
        AtomicReference atomicReference = this.zza;
        synchronized (atomicReference) {
            this.zzb.zzu.zzaW().zzk().zzb("[sgtm] Got upload batches from service. count", Integer.valueOf(zzoqVar.zza.size()));
            atomicReference.set(zzoqVar);
            atomicReference.notifyAll();
        }
    }
}
