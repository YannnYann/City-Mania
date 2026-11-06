package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzj implements Runnable {
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzcs zza;
    public final /* synthetic */ zzbh zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ AppMeasurementDynamiteService zzd;

    public zzj(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcs zzcsVar, zzbh zzbhVar, String str) {
        this.zza = zzcsVar;
        this.zzb = zzbhVar;
        this.zzc = str;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zzd = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zza.zzt().zzN(this.zza, this.zzb, this.zzc);
    }
}
