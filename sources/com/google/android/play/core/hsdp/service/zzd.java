package com.google.android.play.core.hsdp.service;

import android.os.IBinder;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzd extends HsdpPrewarmRequest {
    public final String zza;
    public final String zzb;
    public final Map zzc;
    public final IBinder zzd;

    public /* synthetic */ zzd(String str, String str2, Map map, IBinder iBinder, zzc zzcVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = map;
        this.zzd = iBinder;
    }

    public final boolean equals(Object obj) {
        IBinder iBinder;
        if (obj == this) {
            return true;
        }
        if (obj instanceof HsdpPrewarmRequest) {
            HsdpPrewarmRequest hsdpPrewarmRequest = (HsdpPrewarmRequest) obj;
            if (this.zza.equals(hsdpPrewarmRequest.targetAppPackageName()) && this.zzb.equals(hsdpPrewarmRequest.referrer()) && this.zzc.equals(hsdpPrewarmRequest.extraQueryParams()) && ((iBinder = this.zzd) != null ? iBinder.equals(hsdpPrewarmRequest.windowToken()) : hsdpPrewarmRequest.windowToken() == null)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpPrewarmRequest
    public final Map<String, String> extraQueryParams() {
        return this.zzc;
    }

    public final int hashCode() {
        int iHashCode = ((((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb.hashCode()) * 1000003) ^ this.zzc.hashCode();
        IBinder iBinder = this.zzd;
        return (iHashCode * 1000003) ^ (iBinder == null ? 0 : iBinder.hashCode());
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpPrewarmRequest
    public final String referrer() {
        return this.zzb;
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpPrewarmRequest
    public final String targetAppPackageName() {
        return this.zza;
    }

    public final String toString() {
        IBinder iBinder = this.zzd;
        return "HsdpPrewarmRequest{targetAppPackageName=" + this.zza + ", referrer=" + this.zzb + ", extraQueryParams=" + this.zzc.toString() + ", windowToken=" + String.valueOf(iBinder) + "}";
    }

    @Override // com.google.android.play.core.hsdp.service.HsdpPrewarmRequest
    public final IBinder windowToken() {
        return this.zzd;
    }
}
