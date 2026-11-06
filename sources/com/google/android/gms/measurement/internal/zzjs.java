package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzjs {
    public final Context zza;
    public Boolean zzb;
    public long zzc;
    public com.google.android.gms.internal.measurement.zzdb zzd;
    public boolean zze;
    public final Long zzf;
    public final Long zzg;
    public String zzh;

    public zzjs(Context context, com.google.android.gms.internal.measurement.zzdb zzdbVar, Long l, Long l2) {
        this.zze = true;
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.checkNotNull(applicationContext);
        this.zza = applicationContext;
        this.zzf = l;
        this.zzg = l2;
        if (zzdbVar != null) {
            this.zzd = zzdbVar;
            this.zze = zzdbVar.zzc;
            this.zzc = zzdbVar.zzb;
            this.zzh = zzdbVar.zze;
            Bundle bundle = zzdbVar.zzd;
            if (bundle != null) {
                this.zzb = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
