package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zznb implements Runnable {
    public final /* synthetic */ zznf zza;

    public zznb(zznf zznfVar) {
        Objects.requireNonNull(zznfVar);
        this.zza = zznfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.zza.zza;
        zzic zzicVar = zznlVar.zzu;
        Context contextZzaZ = zzicVar.zzaZ();
        zzicVar.zzaV();
        zznlVar.zzW(new ComponentName(contextZzaZ, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
