package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzmx implements Runnable {
    public final /* synthetic */ AtomicReference zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ zzr zzd;
    public final /* synthetic */ boolean zze;
    public final /* synthetic */ zznl zzf;

    public zzmx(zznl zznlVar, AtomicReference atomicReference, String str, String str2, String str3, zzr zzrVar, boolean z) {
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = zzrVar;
        this.zze = z;
        Objects.requireNonNull(zznlVar);
        this.zzf = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zznl zznlVar;
        zzgb zzgbVarZzZ;
        AtomicReference atomicReference2 = this.zza;
        synchronized (atomicReference2) {
            try {
                try {
                    zznlVar = this.zzf;
                    zzgbVarZzZ = zznlVar.zzZ();
                } catch (RemoteException e) {
                    this.zzf.zzu.zzaW().zzb().zzd("(legacy) Failed to get user properties; remote exception", null, this.zzb, e);
                    this.zza.set(Collections.EMPTY_LIST);
                    atomicReference = this.zza;
                }
                if (zzgbVarZzZ == null) {
                    zznlVar.zzu.zzaW().zzb().zzd("(legacy) Failed to get user properties; not connected to service", null, this.zzb, this.zzc);
                    atomicReference2.set(Collections.EMPTY_LIST);
                    atomicReference2.notify();
                    return;
                }
                if (TextUtils.isEmpty(null)) {
                    zzr zzrVar = this.zzd;
                    Preconditions.checkNotNull(zzrVar);
                    atomicReference2.set(zzgbVarZzZ.zzp(this.zzb, this.zzc, this.zze, zzrVar));
                } else {
                    atomicReference2.set(zzgbVarZzZ.zzq(null, this.zzb, this.zzc, this.zze));
                }
                zznlVar.zzV();
                atomicReference = this.zza;
                atomicReference.notify();
            } catch (Throwable th) {
                this.zza.notify();
                throw th;
            }
        }
    }
}
