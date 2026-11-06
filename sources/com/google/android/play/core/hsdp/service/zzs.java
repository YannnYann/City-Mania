package com.google.android.play.core.hsdp.service;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzs {
    public static zzr zza;

    public static synchronized zzr zza(Intent intent, Context context) {
        try {
            if (zza == null) {
                zzai zzaiVar = new zzai(intent, context.getApplicationContext());
                zzaiVar.zzp();
                zza = zzaiVar;
            }
        } catch (Throwable th) {
            throw th;
        }
        return zza;
    }
}
