package com.google.android.play.core.hsdp.service;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.play.core.hsdp.service.HsdpDeepLinkService;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzan extends zzas {
    public final /* synthetic */ Activity zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ Map zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzan(zzat zzatVar, HsdpDeepLinkService.HsdpDeepLinkServiceListener hsdpDeepLinkServiceListener, Activity activity, String str, String str2, Map map) {
        super(hsdpDeepLinkServiceListener);
        this.zza = activity;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = map;
        Objects.requireNonNull(zzatVar);
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onAffordanceEnded() {
        throw new UnsupportedOperationException("HPOA service should not be called in service based HSDP.");
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onAffordanceStarted() {
        throw new UnsupportedOperationException("HPOA service should not be called in service based HSDP.");
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onDeepLinkStarted() {
        throw new UnsupportedOperationException("HSDP Activity should not be started in service based HSDP.");
    }

    @Override // com.google.android.play.core.hsdp.service.zzas, com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onError(Bundle bundle) {
        final Activity activity = this.zza;
        final String str = this.zzb;
        final String str2 = this.zzc;
        final Map map = this.zzd;
        activity.runOnUiThread(new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzam
            @Override // java.lang.Runnable
            public final void run() {
                activity.startActivityForResult(zzq.zza(str, str2, map), 0);
            }
        });
        super.onError(bundle);
    }
}
