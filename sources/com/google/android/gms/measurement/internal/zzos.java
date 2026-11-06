package com.google.android.gms.measurement.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzos extends zzol {
    public boolean zza;

    public zzos(zzpg zzpgVar) {
        super(zzpgVar);
        this.zzg.zzaf();
    }

    public final boolean zzax() {
        return this.zza;
    }

    public final void zzay() {
        if (!zzax()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzaz() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzbc();
        this.zzg.zzag();
        this.zza = true;
    }

    public abstract boolean zzbc();
}
