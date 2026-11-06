package com.google.android.gms.stats;

import android.os.PowerManager;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-stats@@17.0.1 */
/* JADX INFO: loaded from: classes3.dex */
@ShowFirstParty
@KeepForSdk
public class WakeLock {
    public static final long zzb = TimeUnit.DAYS.toMillis(366);
    public static volatile ScheduledExecutorService zzc = null;
    public static final Object zzd = new Object();
    public static volatile zzd zze = new zzb();
    public com.google.android.gms.internal.stats.zzb zza;
    public final Object zzf;
    public final PowerManager.WakeLock zzg;
    public int zzh;
    public Future<?> zzi;
    public long zzj;
    public final Set<zze> zzk;
    public boolean zzl;
    public int zzm;
    public final String zzp;
    public final Map<String, zzc> zzs;

    public static /* synthetic */ void zza(WakeLock wakeLock) {
        synchronized (wakeLock.zzf) {
            try {
                if (wakeLock.isHeld()) {
                    Log.e("WakeLock", String.valueOf(wakeLock.zzp).concat(" ** IS FORCE-RELEASED ON TIMEOUT **"));
                    wakeLock.zzc();
                    if (wakeLock.isHeld()) {
                        wakeLock.zzh = 1;
                        wakeLock.zzd(0);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @KeepForSdk
    public boolean isHeld() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzh > 0;
        }
        return z;
    }

    public final void zzc() {
        if (this.zzk.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.zzk);
        this.zzk.clear();
        if (arrayList.size() <= 0) {
            return;
        }
        throw null;
    }

    public final void zzd(int i) {
        synchronized (this.zzf) {
            try {
                if (isHeld()) {
                    if (this.zzl) {
                        int i2 = this.zzh - 1;
                        this.zzh = i2;
                        if (i2 > 0) {
                            return;
                        }
                    } else {
                        this.zzh = 0;
                    }
                    zzc();
                    Iterator<zzc> it = this.zzs.values().iterator();
                    while (it.hasNext()) {
                        it.next().zza = 0;
                    }
                    this.zzs.clear();
                    Future<?> future = this.zzi;
                    if (future != null) {
                        future.cancel(false);
                        this.zzi = null;
                        this.zzj = 0L;
                    }
                    this.zzm = 0;
                    if (this.zzg.isHeld()) {
                        try {
                            try {
                                this.zzg.release();
                                if (this.zza != null) {
                                    this.zza = null;
                                }
                            } catch (RuntimeException e) {
                                if (!e.getClass().equals(RuntimeException.class)) {
                                    throw e;
                                }
                                Log.e("WakeLock", String.valueOf(this.zzp).concat(" failed to release!"), e);
                                if (this.zza != null) {
                                    this.zza = null;
                                }
                            }
                        } catch (Throwable th) {
                            if (this.zza != null) {
                                this.zza = null;
                            }
                            throw th;
                        }
                    } else {
                        Log.e("WakeLock", String.valueOf(this.zzp).concat(" should be held!"));
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
