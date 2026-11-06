package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.ironsource.C3522b4;
import com.ironsource.G5;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzki implements Runnable {
    public final /* synthetic */ Bundle zza;
    public final /* synthetic */ zzlj zzb;

    public zzki(zzlj zzljVar, Bundle bundle) {
        this.zza = bundle;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.zzb;
        zzljVar.zzg();
        zzljVar.zzb();
        Bundle bundle = this.zza;
        Preconditions.checkNotNull(bundle);
        String string = bundle.getString("name");
        String string2 = bundle.getString(G5.p);
        Preconditions.checkNotEmpty(string);
        Preconditions.checkNotEmpty(string2);
        Preconditions.checkNotNull(bundle.get(C3522b4.i.X));
        if (!zzljVar.zzu.zzB()) {
            zzljVar.zzu.zzaW().zzk().zza("Conditional property not set since app measurement is disabled");
            return;
        }
        zzpl zzplVar = new zzpl(string, bundle.getLong("triggered_timestamp"), bundle.get(C3522b4.i.X), string2);
        try {
            zzic zzicVar = zzljVar.zzu;
            zzbh zzbhVarZzaf = zzicVar.zzk().zzaf(bundle.getString("app_id"), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, 0L, true, true);
            zzljVar.zzu.zzt().zzp(new zzah(bundle.getString("app_id"), string2, zzplVar, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), zzicVar.zzk().zzaf(bundle.getString("app_id"), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, 0L, true, true), bundle.getLong("trigger_timeout"), zzbhVarZzaf, bundle.getLong("time_to_live"), zzicVar.zzk().zzaf(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, 0L, true, true)));
        } catch (IllegalArgumentException unused) {
        }
    }
}
