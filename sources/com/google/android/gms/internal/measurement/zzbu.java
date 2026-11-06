package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
@ShowFirstParty
public final class zzbu {
    private static volatile zzbu zza;
    private final List zzb = new CopyOnWriteArrayList();

    private zzbu() {
    }

    public static zzbu zza() {
        if (zza == null) {
            synchronized (zzbu.class) {
                try {
                    if (zza == null) {
                        zza = new zzbu();
                    }
                } finally {
                }
            }
        }
        return zza;
    }

    public final void zzb(zzbt zzbtVar) {
        this.zzb.add(0, zzbtVar);
    }
}
