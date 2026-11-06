package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzpc {
    public com.google.android.gms.internal.measurement.zzid zza;
    public List zzb;
    public List zzc;
    public long zzd;
    public final /* synthetic */ zzpg zze;

    public /* synthetic */ zzpc(zzpg zzpgVar, byte[] bArr) {
        Objects.requireNonNull(zzpgVar);
        this.zze = zzpgVar;
    }

    public static final long zzb(com.google.android.gms.internal.measurement.zzhs zzhsVar) {
        return ((zzhsVar.zzf() / 1000) / 60) / 60;
    }

    public final boolean zza(long j, com.google.android.gms.internal.measurement.zzhs zzhsVar) {
        Preconditions.checkNotNull(zzhsVar);
        if (this.zzc == null) {
            this.zzc = new ArrayList();
        }
        if (this.zzb == null) {
            this.zzb = new ArrayList();
        }
        if (!this.zzc.isEmpty() && zzb((com.google.android.gms.internal.measurement.zzhs) this.zzc.get(0)) != zzb(zzhsVar)) {
            return false;
        }
        long jZzcq = this.zzd + ((long) zzhsVar.zzcq());
        zzpg zzpgVar = this.zze;
        if (!zzpgVar.zzd().zzp(null, zzfy.zzaY)) {
            zzpgVar.zzd();
            if (jZzcq >= zzal.zzG()) {
                return false;
            }
        } else if (!this.zzc.isEmpty()) {
            zzpgVar.zzd();
            if (jZzcq >= zzal.zzG()) {
                return false;
            }
        }
        this.zzd = jZzcq;
        this.zzc.add(zzhsVar);
        this.zzb.add(Long.valueOf(j));
        com.google.android.gms.internal.measurement.zzid zzidVar = this.zza;
        return this.zzc.size() < Math.max(1, zzpgVar.zzd().zzm(zzidVar != null ? zzidVar.zzA() : null, zzfy.zzj));
    }
}
