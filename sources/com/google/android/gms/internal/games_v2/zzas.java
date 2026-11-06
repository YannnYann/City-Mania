package com.google.android.gms.internal.games_v2;

import ads_mobile_sdk.tu2$$ExternalSyntheticBackportWithForwarding0;
import android.app.Application;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzas {
    private static final AtomicReference zza = new AtomicReference();
    private final zzar zzb;
    private final zzaw zzc;

    public zzas(Application application, zzaw zzawVar) {
        this.zzb = new zzar(this, application, null);
        this.zzc = zzawVar;
    }

    public static zzas zza(Application application) {
        AtomicReference atomicReference = zza;
        zzas zzasVar = (zzas) atomicReference.get();
        if (zzasVar != null) {
            return zzasVar;
        }
        tu2$$ExternalSyntheticBackportWithForwarding0.m(atomicReference, null, new zzas(application, zzay.zza(application)));
        return (zzas) Preconditions.checkNotNull((zzas) atomicReference.get());
    }

    public final void zzb() {
        zzfy.zza("AutomaticGamesAuthenticator", "startWatching()");
        this.zzb.zza();
    }

    public final /* synthetic */ zzaw zzc() {
        return this.zzc;
    }
}
