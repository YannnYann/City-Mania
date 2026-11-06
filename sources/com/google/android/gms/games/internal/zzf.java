package com.google.android.gms.games.internal;

import ads_mobile_sdk.tu2$$ExternalSyntheticBackportWithForwarding0;
import android.app.Activity;
import android.app.Application;
import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskExecutors;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzf {
    public static final AtomicReference zzb = new AtomicReference();
    public final Application zzc;
    public WeakReference zzg;
    public final Application.ActivityLifecycleCallbacks zzd = new zze(this, null);
    public final Object zze = new Object();
    public final Set zzf = Collections.newSetFromMap(new WeakHashMap());
    public boolean zzh = false;

    public zzf(Application application) {
        this.zzc = application;
    }

    public static zzf zza(Application application) {
        Preconditions.checkNotNull(application);
        AtomicReference atomicReference = zzb;
        zzf zzfVar = (zzf) atomicReference.get();
        if (zzfVar != null) {
            return zzfVar;
        }
        tu2$$ExternalSyntheticBackportWithForwarding0.m(atomicReference, null, new zzf(application));
        return (zzf) atomicReference.get();
    }

    public final void zzb() {
        synchronized (this.zze) {
            try {
                if (!this.zzh) {
                    this.zzc.registerActivityLifecycleCallbacks(this.zzd);
                    this.zzh = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzc(final zzc zzcVar) {
        Preconditions.checkNotNull(zzcVar);
        synchronized (this.zze) {
            this.zzf.add(zzcVar);
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            zze(zzcVar);
        } else {
            TaskExecutors.MAIN_THREAD.execute(new Runnable() { // from class: com.google.android.gms.games.internal.zzd
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    this.zza.zze(zzcVar);
                }
            });
        }
    }

    public final Activity zzd() {
        Activity activity;
        synchronized (this.zze) {
            WeakReference weakReference = this.zzg;
            activity = weakReference == null ? null : (Activity) weakReference.get();
        }
        return activity;
    }

    public final /* synthetic */ void zzf(Activity activity) {
        Preconditions.checkNotNull(activity);
        synchronized (this.zze) {
            try {
                if (zzd() == activity) {
                    return;
                }
                this.zzg = new WeakReference(activity);
                Iterator it = this.zzf.iterator();
                while (it.hasNext()) {
                    ((zzc) it.next()).zza(activity);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void zzg(Activity activity) {
        synchronized (this.zze) {
            try {
                WeakReference weakReference = this.zzg;
                if (weakReference == null) {
                    return;
                }
                if (weakReference.get() == activity) {
                    this.zzg = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final void zze(zzc zzcVar) {
        Activity activityZzd = zzd();
        if (activityZzd == null) {
            return;
        }
        zzcVar.zza(activityZzd);
    }
}
