package com.android.billingclient.api;

import android.content.Context;
import android.content.IntentFilter;

/* JADX INFO: compiled from: com.android.billingclient:billing@@8.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzs {
    public final Context zza;
    public final PurchasesUpdatedListener zzb;
    public final zzb zzc;
    public final UserChoiceBillingListener zzd;
    public final zzch zze;
    public final zzr zzf = new zzr(this, true);
    public final zzr zzg = new zzr(this, false);
    public boolean zzh;

    public zzs(Context context, PurchasesUpdatedListener purchasesUpdatedListener, zzco zzcoVar, zzb zzbVar, UserChoiceBillingListener userChoiceBillingListener, zzch zzchVar) {
        this.zza = context;
        this.zzb = purchasesUpdatedListener;
        this.zzc = zzbVar;
        this.zzd = userChoiceBillingListener;
        this.zze = zzchVar;
    }

    public final PurchasesUpdatedListener zzd() {
        return this.zzb;
    }

    public final void zzf() {
        zzr zzrVar = this.zzf;
        Context context = this.zza;
        zzrVar.zzc(context);
        this.zzg.zzc(context);
    }

    public final void zzg(boolean z) {
        IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
        IntentFilter intentFilter2 = new IntentFilter("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intentFilter2.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
        this.zzh = z;
        zzr zzrVar = this.zzg;
        Context context = this.zza;
        zzrVar.zza(context, intentFilter2);
        if (this.zzh) {
            this.zzf.zzb(context, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST");
        } else {
            this.zzf.zza(context, intentFilter);
        }
    }
}
