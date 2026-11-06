package com.google.android.play.core.hsdp.service;

import android.os.Bundle;
import android.util.Log;
import com.google.android.play.core.hsdp.service.HsdpDeepLinkService;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaz implements HsdpDeepLinkService.HsdpDeepLinkServiceListener {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ Map zzc;
    public final /* synthetic */ HsdpShimActivity zzd;

    public zzaz(HsdpShimActivity hsdpShimActivity, String str, String str2, Map map) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = map;
        Objects.requireNonNull(hsdpShimActivity);
        this.zzd = hsdpShimActivity;
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onAffordanceEnded() {
        throw new UnsupportedOperationException("not supported when to call HSDP service from shim activity");
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onAffordanceStarted() {
        throw new UnsupportedOperationException("not supported when to call HSDP service from shim activity");
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onDeepLinkStarted() {
        throw new UnsupportedOperationException("not supported when to call HSDP service from shim activity");
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onDismissed(Bundle bundle) {
        if (Log.isLoggable("HsdpShimActivity", 4)) {
            Log.i("HsdpShimActivity", "HSDP service based UI dismissed. hasBeenShown=" + this.zzd.zzb);
        }
        boolean z = bundle.getBoolean("dldpRedirect", false);
        HsdpShimActivity hsdpShimActivity = this.zzd;
        if (!hsdpShimActivity.zzb && !z) {
            Log.i("HsdpShimActivity", "Ignore dismiss before shown (likely temporary reuse cleanup)");
            return;
        }
        Log.i("HsdpShimActivity", "Finish the shim activity.");
        hsdpShimActivity.zza = null;
        hsdpShimActivity.finish();
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onError(Bundle bundle) {
        Log.e("HsdpShimActivity", "HSDP service based UI error: " + String.valueOf(bundle) + ". Finish the shim activity.");
        String str = this.zza;
        String str2 = this.zzb;
        Map map = this.zzc;
        HsdpShimActivity hsdpShimActivity = this.zzd;
        hsdpShimActivity.startActivityForResult(zzq.zza(str, str2, map), 0);
        hsdpShimActivity.zza = null;
        hsdpShimActivity.zzb = false;
        hsdpShimActivity.finish();
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpDeepLinkService.HsdpDeepLinkServiceListener
    public final void onShown(Bundle bundle) {
        Log.i("HsdpShimActivity", "HSDP service based UI shown");
        this.zzd.zzb = true;
    }
}
