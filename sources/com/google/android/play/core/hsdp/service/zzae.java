package com.google.android.play.core.hsdp.service;

import android.os.Bundle;
import android.util.Log;
import java.util.Objects;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzae extends zzaf {
    public final /* synthetic */ zzai zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzae(zzai zzaiVar) {
        super(zzaiVar, null);
        Objects.requireNonNull(zzaiVar);
        this.zza = zzaiVar;
    }

    @Override // com.google.android.play.core.hsdp.service.zzaf
    public final void zzd(final String str) {
        Runnable runnable = new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzad
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza.zzc.remove(str);
            }
        };
        zzai zzaiVar = this.zza;
        zzaiVar.zzs().post(new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzw
            @Override // java.lang.Runnable
            public final void run() {
                zzai.zzm(this.zza, str, i, runnable);
            }
        });
    }

    @Override // com.google.android.play.core.hsdp.service.zzaf
    public final void zze(String str) {
        zzai zzaiVar = this.zza;
        zzaiVar.zzs().post(new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzw
            @Override // java.lang.Runnable
            public final void run() {
                zzai.zzm(this.zza, str, i, runnable);
            }
        });
    }

    @Override // com.google.android.play.core.hsdp.service.zzaf
    public final void zzf(final String str, final int i, final String str2) {
        Runnable runnable = new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzab
            @Override // java.lang.Runnable
            public final void run() {
                ConcurrentMap concurrentMap = this.zza.zza.zzc;
                String str3 = str;
                zzay zzayVar = (zzay) concurrentMap.remove(str3);
                if (zzayVar == null) {
                    Log.w("HsdpClientImpl", "No active overlay for target package: " + str3 + ". Cannot report error.");
                    return;
                }
                String str4 = str2;
                int i2 = i;
                Bundle bundle = new Bundle();
                bundle.putString("targetPackage", str3);
                bundle.putInt("errorCode", i2);
                bundle.putString("errorMessage", str4);
                zzayVar.zza().onError(bundle);
            }
        };
        zzai zzaiVar = this.zza;
        zzaiVar.zzs().post(new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzw
            @Override // java.lang.Runnable
            public final void run() {
                zzai.zzm(this.zza, str, i, runnable);
            }
        });
    }

    @Override // com.google.android.play.core.hsdp.service.zzaf
    public final void zzg(final String str) {
        Runnable runnable = new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzac
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zza.zzc.remove(str);
            }
        };
        zzai zzaiVar = this.zza;
        zzaiVar.zzs().post(new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzw
            @Override // java.lang.Runnable
            public final void run() {
                zzai.zzm(this.zza, str, i, runnable);
            }
        });
    }

    @Override // com.google.android.play.core.hsdp.service.zzaf
    public final void zzh(String str) {
        zzai zzaiVar = this.zza;
        zzaiVar.zzs().post(new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzw
            @Override // java.lang.Runnable
            public final void run() {
                zzai.zzm(this.zza, str, i, runnable);
            }
        });
    }
}
