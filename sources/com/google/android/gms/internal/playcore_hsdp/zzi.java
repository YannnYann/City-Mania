package com.google.android.gms.internal.playcore_hsdp;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
final class zzi implements zzg {
    private final zzk zza = new zzk();
    private volatile zzg zzb;
    private Object zzc;

    public zzi(zzg zzgVar) {
        this.zzb = zzgVar;
    }

    public final String toString() {
        Object obj = this.zzb;
        if (obj == null) {
            obj = "<supplier that returned " + String.valueOf(this.zzc) + ">";
        }
        return "Suppliers.memoize(" + obj.toString() + ")";
    }

    @Override // com.google.android.gms.internal.playcore_hsdp.zzg
    public final Object zza() {
        if (this.zzb != null) {
            synchronized (this.zza) {
                try {
                    if (this.zzb != null) {
                        Object objZza = this.zzb.zza();
                        this.zzc = objZza;
                        this.zzb = null;
                        return objZza;
                    }
                } finally {
                }
            }
        }
        return this.zzc;
    }
}
