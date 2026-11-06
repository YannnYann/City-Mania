package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-sdk@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzm implements Runnable {
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzcs zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ AppMeasurementDynamiteService zzd;

    public zzm(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcs zzcsVar, String str, String str2) {
        this.zza = zzcsVar;
        this.zzb = str;
        this.zzc = str2;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zzd = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zza.zzt().zzs(this.zza, this.zzb, this.zzc);
    }
}
