package com.google.android.gms.internal.games_v2;

import ads_mobile_sdk.tu2$$ExternalSyntheticBackportWithForwarding0;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zzac {
    private final AtomicReference zza = new AtomicReference();

    public abstract zzab zza();

    public final void zzb() {
        zzab zzabVar = (zzab) this.zza.get();
        if (zzabVar != null) {
            zzabVar.zzc();
        }
    }

    public final void zzc(String str, int i) {
        AtomicReference atomicReference = this.zza;
        zzab zzabVarZza = (zzab) atomicReference.get();
        if (zzabVarZza == null) {
            zzabVarZza = zza();
            if (!tu2$$ExternalSyntheticBackportWithForwarding0.m(atomicReference, null, zzabVarZza)) {
                zzabVarZza = (zzab) atomicReference.get();
            }
        }
        zzabVarZza.zzb(str, i);
    }
}
