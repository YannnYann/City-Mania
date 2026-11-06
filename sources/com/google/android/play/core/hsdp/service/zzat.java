package com.google.android.play.core.hsdp.service;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.google.android.play.core.hsdp.service.HsdpDeepLinkService;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzat implements HsdpDeepLinkService {
    public final zzax zza;
    public final Context zzb;
    public final com.google.android.gms.internal.playcore_hsdp.zzg zzc;
    public final com.google.android.gms.internal.playcore_hsdp.zzg zzd;
    public final boolean zze;
    public final boolean zzf;
    public final boolean zzg;
    public Application.ActivityLifecycleCallbacks zzh;

    public zzat(Context context, com.google.android.gms.internal.playcore_hsdp.zzg zzgVar, com.google.android.gms.internal.playcore_hsdp.zzg zzgVar2, boolean z, boolean z2, boolean z3) {
        boolean z4 = false;
        if (z3 && (context instanceof Activity)) {
            z4 = true;
        }
        zzax zzaxVar = context instanceof Activity ? new zzax((Activity) context) : null;
        this.zzh = null;
        this.zzb = context;
        this.zzc = zzgVar;
        this.zzd = zzgVar2;
        this.zze = z;
        this.zzf = z2;
        this.zzg = z4;
        this.zza = zzaxVar;
    }

    public static void zzc(String str, HsdpDeepLinkService.HsdpDeepLinkServiceListener hsdpDeepLinkServiceListener, Map map, zze zzeVar, Activity activity) {
        zzeVar.zzb(str, zza.zzc(activity), zza.zzb(activity), hsdpDeepLinkServiceListener, map);
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService
    public final void endSession(String str) {
        ((zzr) this.zzd.zza()).zzc(str);
        zza();
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService
    public final void prewarm(List<HsdpPrewarmRequest> list, HsdpDeepLinkService.HsdpPrewarmListener hsdpPrewarmListener) {
        ((zzr) this.zzd.zza()).zzd(list, hsdpPrewarmListener);
    }

    public final void zza() {
        if (this.zzg) {
            Context context = this.zzb;
            zzax zzaxVar = this.zza;
            Activity activity = (Activity) context;
            if (zzaxVar == null) {
                throw new IllegalStateException("hsdpLoadingPanel cannot be null when loading panel is enabled.");
            }
            zzaxVar.zzb();
            if (this.zzh != null) {
                activity.getApplication().unregisterActivityLifecycleCallbacks(this.zzh);
                this.zzh = null;
            }
        }
    }

    public final void zzb() throws PackageManager.NameNotFoundException {
        if (this.zzg) {
            Context context = this.zzb;
            zzax zzaxVar = this.zza;
            Activity activity = (Activity) context;
            if (zzaxVar == null) {
                throw new IllegalStateException("hsdpLoadingPanel cannot be null when enabling loading panel.");
            }
            if (zzaxVar.zza == null) {
                if (this.zzh != null) {
                    activity.getApplication().unregisterActivityLifecycleCallbacks(this.zzh);
                }
                this.zzh = new zzal(this, activity);
                activity.getApplication().registerActivityLifecycleCallbacks(this.zzh);
                zzaxVar.zzc();
            }
        }
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService
    public final void open(String str, String str2, HsdpDeepLinkService.HsdpDeepLinkServiceListener hsdpDeepLinkServiceListener, Map<String, String> map, boolean z) throws PackageManager.NameNotFoundException {
        HsdpDeepLinkService.HsdpDeepLinkServiceListener zzarVar;
        Context context = this.zzb;
        Intent intentZzb = zzq.zzb(str, str2, context.getPackageName(), map);
        if (this.zzf) {
            Uri data = intentZzb.getData();
            if (data == null) {
                Bundle bundle = new Bundle();
                bundle.putString("errorMessage", "Deeplink URL is null.");
                hsdpDeepLinkServiceListener.onError(bundle);
                return;
            }
            String string = data.toString();
            if (!(context instanceof Activity)) {
                Intent intent = new Intent(context, (Class<?>) HsdpShimActivity.class);
                intent.putExtra("target_package_name", str);
                intent.putExtra("referrer", str2);
                intent.putExtra("auto_trigger", z);
                intent.putExtra("deeplink_url", string);
                if (map != null) {
                    Bundle bundle2 = new Bundle();
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        bundle2.putString(entry.getKey(), entry.getValue());
                    }
                    intent.putExtra("extra_query_params_bundle", bundle2);
                }
                intent.addFlags(262144);
                intent.addFlags(268435456);
                Log.i("HsdpDeepLinkServiceImpl", "Starting HSDP Shim Activity.");
                context.startActivity(intent);
                return;
            }
            com.google.android.gms.internal.playcore_hsdp.zzg zzgVar = this.zzd;
            Activity activity = (Activity) context;
            if (!((zzr) zzgVar.zza()).zzf()) {
                zzb();
            }
            zzr zzrVar = (zzr) zzgVar.zza();
            IBinder windowToken = activity.getWindow().getDecorView().getWindowToken();
            int iZzc = zza.zzc(activity);
            int iZzb = zza.zzb(activity);
            if (!this.zzg) {
                zzarVar = new zzan(this, hsdpDeepLinkServiceListener, activity, str, str2, map);
            } else {
                zzarVar = new zzar(this, hsdpDeepLinkServiceListener, activity, str, str2, map);
            }
            zzrVar.zze(str, string, windowToken, iZzc, iZzb, z, zzarVar);
            return;
        }
        Activity activity2 = (Activity) context;
        if (this.zza == null) {
            throw new IllegalStateException("hsdpLoadingPanel cannot be null when using activity-based HSDP.");
        }
        intentZzb.addFlags(536870912);
        intentZzb.addFlags(262144);
        if (activity2.getPackageManager().resolveActivity(intentZzb, 65536) != null) {
            zzb();
            Log.i("HsdpDeepLinkServiceImpl", "HSDP Activity found.");
            activity2.startActivityForResult(intentZzb, 0);
            hsdpDeepLinkServiceListener.onDeepLinkStarted();
            zzc(str, hsdpDeepLinkServiceListener, map, (zze) this.zzc.zza(), activity2);
            return;
        }
        if (this.zze) {
            Log.i("HsdpDeepLinkServiceImpl", "HSDP Activity not found. Ignoring error and still showing HPOA affordance.");
            zzc(str, hsdpDeepLinkServiceListener, map, (zze) this.zzc.zza(), activity2);
        } else {
            activity2.startActivityForResult(zzq.zza(str, str2, map), 0);
        }
    }
}
