package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import io.bidmachine.Framework;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.play:review@@2.0.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzf extends com.google.android.play.core.review.internal.zzj {
    public final /* synthetic */ TaskCompletionSource zza;
    public final /* synthetic */ zzi zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(zzi zziVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.zza = taskCompletionSource2;
        this.zzb = zziVar;
    }

    @Override // com.google.android.play.core.review.internal.zzj
    public final void zza() {
        try {
            com.google.android.play.core.review.internal.zzf zzfVar = (com.google.android.play.core.review.internal.zzf) this.zzb.zza.zze();
            String str = this.zzb.zzc;
            Bundle bundle = new Bundle();
            Map mapZza = zzj.zza();
            bundle.putInt("playcore_version_code", ((Integer) mapZza.get("java")).intValue());
            if (mapZza.containsKey("native")) {
                bundle.putInt("playcore_native_version", ((Integer) mapZza.get("native")).intValue());
            }
            if (mapZza.containsKey(Framework.UNITY)) {
                bundle.putInt("playcore_unity_version", ((Integer) mapZza.get(Framework.UNITY)).intValue());
            }
            zzi zziVar = this.zzb;
            zzfVar.zzc(str, bundle, new zzh(zziVar, this.zza, zziVar.zzc));
        } catch (RemoteException e) {
            zzi.zzb.zzb(e, "error requesting in-app review for %s", this.zzb.zzc);
            this.zza.trySetException(new RuntimeException(e));
        }
    }
}
