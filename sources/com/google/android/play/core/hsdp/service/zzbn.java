package com.google.android.play.core.hsdp.service;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbn implements zzbc {
    public final com.google.android.gms.internal.playcore_hsdp.zzg zza;
    public final Context zzb;
    public final String zzc;
    public boolean zzf;
    public final Intent zzg;
    public final zzba zzh;
    public ServiceConnection zzj;
    public IInterface zzk;
    public final List zzd = new ArrayList();
    public final List zze = new CopyOnWriteArrayList();
    public final IBinder.DeathRecipient zzi = new IBinder.DeathRecipient() { // from class: com.google.android.play.core.hsdp.service.zzbi
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            zzbn.zzl(this.zza);
        }
    };

    public zzbn(Context context, final String str, Intent intent, zzba zzbaVar) {
        this.zzb = context;
        this.zzc = str;
        this.zzg = intent;
        this.zzh = zzbaVar;
        this.zza = com.google.android.gms.internal.playcore_hsdp.zzj.zza(new com.google.android.gms.internal.playcore_hsdp.zzg() { // from class: com.google.android.play.core.hsdp.service.zzbh
            @Override // com.google.android.gms.internal.playcore_hsdp.zzg
            public final Object zza() {
                HandlerThread handlerThread = new HandlerThread(str, 10);
                handlerThread.start();
                return new Handler(handlerThread.getLooper());
            }
        });
    }

    public static /* synthetic */ void zzj(zzbn zzbnVar) {
        if (zzbnVar.zzk != null) {
            if (Log.isLoggable("ServiceConnMgrImpl", 4)) {
                Log.i("ServiceConnMgrImpl", "Unbind from service.");
            }
            Context context = zzbnVar.zzb;
            ServiceConnection serviceConnection = zzbnVar.zzj;
            serviceConnection.getClass();
            context.unbindService(serviceConnection);
            zzbnVar.zzf = false;
            zzbnVar.zzk = null;
            zzbnVar.zzj = null;
            List list = zzbnVar.zzd;
            synchronized (list) {
                list.clear();
            }
            Log.i("ServiceConnMgrImpl", "notifyOnDisconnected in unbind()");
            zzbnVar.zzs();
        }
    }

    public static /* synthetic */ void zzk(zzbn zzbnVar) {
        if (zzbnVar.zzk != null) {
            zzbnVar.zzk = null;
            Log.i("ServiceConnMgrImpl", "notifyOnDisconnected in reportBinderDeath()");
            zzbnVar.zzs();
        }
    }

    public static /* synthetic */ void zzl(final zzbn zzbnVar) {
        if (Log.isLoggable("ServiceConnMgrImpl", 4)) {
            Log.i("ServiceConnMgrImpl", "Binder has died: ".concat(zzbnVar.zzc));
        }
        List list = zzbnVar.zzd;
        synchronized (list) {
            list.clear();
        }
        zzbnVar.zzt(new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzbe
            @Override // java.lang.Runnable
            public final void run() {
                zzbn.zzk(this.zza);
            }
        });
    }

    public static /* synthetic */ void zzm(zzbn zzbnVar, Runnable runnable) {
        if (zzbnVar.zzk != null || zzbnVar.zzf) {
            if (!zzbnVar.zzf) {
                runnable.run();
                return;
            }
            if (Log.isLoggable("ServiceConnMgrImpl", 4)) {
                Log.i("ServiceConnMgrImpl", "Waiting to bind to the service.");
            }
            List list = zzbnVar.zzd;
            synchronized (list) {
                list.add(runnable);
            }
            return;
        }
        if (Log.isLoggable("ServiceConnMgrImpl", 4)) {
            Log.i("ServiceConnMgrImpl", "Initiate binding to the service.");
        }
        List list2 = zzbnVar.zzd;
        synchronized (list2) {
            list2.add(runnable);
        }
        zzbl zzblVar = new zzbl(zzbnVar, null);
        zzbnVar.zzj = zzblVar;
        zzbnVar.zzf = true;
        if (zzbnVar.zzb.bindService(zzbnVar.zzg, zzblVar, 65)) {
            return;
        }
        if (Log.isLoggable("ServiceConnMgrImpl", 4)) {
            Log.i("ServiceConnMgrImpl", "Failed to bind to the service.");
        }
        zzbnVar.zzf = false;
        List list3 = zzbnVar.zzd;
        synchronized (list3) {
            list3.clear();
        }
    }

    public static /* bridge */ /* synthetic */ void zzp(zzbn zzbnVar) {
        Iterator it = zzbnVar.zze.iterator();
        while (it.hasNext()) {
            ((zzbb) it.next()).zzq();
        }
    }

    @Override // com.google.android.play.core.hsdp.service.zzbc
    public final Handler zza() {
        return (Handler) this.zza.zza();
    }

    @Override // com.google.android.play.core.hsdp.service.zzbc
    public final IInterface zzb() {
        return this.zzk;
    }

    @Override // com.google.android.play.core.hsdp.service.zzbc
    public final void zzc(zzbb zzbbVar) {
        this.zze.add(zzbbVar);
    }

    @Override // com.google.android.play.core.hsdp.service.zzbc
    public final void zzd(final Runnable runnable) {
        zzt(new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzbf
            @Override // java.lang.Runnable
            public final void run() {
                zzbn.zzm(this.zza, runnable);
            }
        });
    }

    @Override // com.google.android.play.core.hsdp.service.zzbc
    public final void zze() {
        zzt(new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzbd
            @Override // java.lang.Runnable
            public final void run() {
                zzbn.zzj(this.zza);
            }
        });
    }

    public final void zzs() {
        Iterator it = this.zze.iterator();
        while (it.hasNext()) {
            ((zzbb) it.next()).zzr();
        }
    }

    public final void zzt(final Runnable runnable) {
        zza().post(new Runnable() { // from class: com.google.android.play.core.hsdp.service.zzbg
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    runnable.run();
                } catch (RuntimeException e) {
                    Log.e("ServiceConnMgrImpl", "error caused by ", e);
                }
            }
        });
    }
}
