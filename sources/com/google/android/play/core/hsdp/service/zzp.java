package com.google.android.play.core.hsdp.service;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.internal.playcore_hsdp.zzf;
import com.google.android.play.core.hsdp.service.HsdpDeepLinkService;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzp implements zze {
    public final zzbc zza;
    public final Activity zzb;

    public zzp(Intent intent, Activity activity) {
        this.zzb = activity;
        if (zzf.zza(activity)) {
            this.zza = new zzbn(activity.getApplicationContext(), "HpoaService", intent, new zzba() { // from class: com.google.android.play.core.hsdp.service.zzg
                @Override // com.google.android.play.core.hsdp.service.zzba
                public final Object zza(IBinder iBinder) {
                    return com.google.android.play.core.hsdp.protocol.zzb.zzb(iBinder);
                }
            });
        } else {
            this.zza = null;
        }
    }

    public static /* bridge */ /* synthetic */ void zzd(zzp zzpVar, String str, String str2, Map map) {
        Activity activity = zzpVar.zzb;
        Intent intentZzb = zzq.zzb(str, str2, activity.getPackageName(), map);
        intentZzb.addFlags(536870912);
        if (activity.getPackageManager().resolveActivity(intentZzb, 65536) != null) {
            activity.startActivityForResult(intentZzb, 0);
        } else {
            activity.startActivity(zzq.zza(str, str2, map));
        }
    }

    public final void zza() {
        zzbc zzbcVar = this.zza;
        if (zzbcVar != null) {
            zzbcVar.zze();
        }
    }

    @Override // com.google.android.play.core.hsdp.service.zze
    public final void zzb(String str, int i, int i2, HsdpDeepLinkService.HsdpDeepLinkServiceListener hsdpDeepLinkServiceListener, Map map) {
        Activity activity = this.zzb;
        String packageName = activity.getPackageName();
        IBinder windowToken = activity.getWindow().getDecorView().getWindowToken();
        if (windowToken == null) {
            throw new IllegalStateException("Window token is null, cannot open HPOA service.");
        }
        final zzk zzkVar = new zzk(this, str, packageName, windowToken, i, i2, hsdpDeepLinkServiceListener, map);
        zzbc zzbcVar = this.zza;
        if (zzbcVar == null) {
            Log.e("HpoaClientImpl", "HPOA service is not available");
            return;
        }
        final Bundle bundle = new Bundle();
        bundle.putString("appId", str);
        bundle.putString("callerId", packageName);
        bundle.putBinder("windowToken", windowToken);
        zzbcVar.zzd(new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzh
            @Override // java.lang.Runnable
            public final void run() {
                Bundle bundle2 = bundle;
                zzp zzpVar = this.zza;
                com.google.android.play.core.hsdp.protocol.zzd zzdVar = zzkVar;
                try {
                    zzbc zzbcVar2 = zzpVar.zza;
                    if (zzbcVar2 == null) {
                        throw null;
                    }
                    com.google.android.play.core.hsdp.protocol.zzc zzcVar = (com.google.android.play.core.hsdp.protocol.zzc) zzbcVar2.zzb();
                    if (zzcVar == null) {
                        return;
                    }
                    zzcVar.zzf(bundle2, zzdVar);
                } catch (RemoteException e) {
                    Log.e("HpoaClientImpl", "Failed to call hpoaService.startSession", e);
                }
            }
        });
    }
}
