package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
public abstract class zza extends zzc {
    public final int zza;
    public final Bundle zzb;
    final int zzc;
    final /* synthetic */ BaseGmsClient zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zza(BaseGmsClient baseGmsClient, int i, Bundle bundle, int i2) {
        super(baseGmsClient, Boolean.TRUE);
        java.util.Objects.requireNonNull(baseGmsClient);
        this.zzd = baseGmsClient;
        this.zza = i;
        this.zzb = bundle;
        this.zzc = i2;
    }

    public abstract boolean zza();

    public abstract void zzb(ConnectionResult connectionResult);

    @Override // com.google.android.gms.common.internal.zzc
    public final /* bridge */ /* synthetic */ void zzc(Object obj) {
        Bundle bundleZzd;
        int i = this.zza;
        if (i == 0) {
            if (zza()) {
                return;
            }
            this.zzd.zze(1, null, this.zzc);
            zzb(new ConnectionResult(8));
            return;
        }
        BaseGmsClient baseGmsClient = this.zzd;
        baseGmsClient.zze(1, null, this.zzc);
        Bundle bundle = this.zzb;
        PendingIntent pendingIntent = bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null;
        if (i == 1) {
            bundleZzd = baseGmsClient.zzd(i, baseGmsClient.getTargetPackageName());
        } else if (i == 21) {
            i = 21;
            bundleZzd = baseGmsClient.zzd(i, baseGmsClient.getTargetPackageName());
        } else {
            bundleZzd = null;
        }
        zzb(new ConnectionResult(i, pendingIntent, (String) null, bundleZzd));
    }
}
