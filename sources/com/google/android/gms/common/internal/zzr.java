package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.StrictMode;
import android.os.UserHandle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzr implements ServiceConnection, zzu {
    final /* synthetic */ zzt zza;
    private final Map zzb;
    private int zzc;
    private int zzd;
    private boolean zze;
    private IBinder zzf;
    private final zzo zzg;
    private ComponentName zzh;
    private zzp zzi;

    public zzr(zzt zztVar, zzo zzoVar) {
        java.util.Objects.requireNonNull(zztVar);
        this.zza = zztVar;
        this.zzc = 0;
        this.zzg = zzoVar;
        this.zzb = new HashMap();
        this.zzd = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzu, reason: merged with bridge method [inline-methods] */
    public final void zza(List list, int i, ComponentName componentName) {
        Object obj;
        Object value;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            synchronized (this.zza.zzg()) {
                try {
                    if (this.zzc != i) {
                        return;
                    }
                    obj = this.zzb.get(entry.getKey());
                    value = entry.getValue();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (obj == value) {
                ((ServiceConnection) entry.getValue()).onServiceDisconnected(componentName);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        int i;
        ArrayList arrayList;
        Object obj;
        Object value;
        zzt zztVar = this.zza;
        synchronized (zztVar.zzg()) {
            try {
                zztVar.zzf(this);
                this.zzf = iBinder;
                this.zzh = componentName;
                this.zzd = 1;
                i = this.zzc + 1;
                this.zzc = i;
                Map map = this.zzb;
                arrayList = new ArrayList(map.size());
                for (Map.Entry entry : map.entrySet()) {
                    arrayList.add(new AbstractMap.SimpleImmutableEntry((ServiceConnection) entry.getKey(), (ServiceConnection) entry.getValue()));
                }
            } finally {
            }
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Map.Entry entry2 = (Map.Entry) arrayList.get(i2);
            synchronized (this.zza.zzg()) {
                try {
                    if (this.zzc != i) {
                        return;
                    }
                    obj = this.zzb.get(entry2.getKey());
                    value = entry2.getValue();
                } finally {
                }
            }
            if (obj == value) {
                ((ServiceConnection) entry2.getValue()).onServiceConnected(componentName, iBinder);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        int i;
        ArrayList arrayList;
        zzt zztVar = this.zza;
        synchronized (zztVar.zzg()) {
            try {
                zztVar.zzf(this);
                this.zzf = null;
                this.zzh = componentName;
                this.zzd = 2;
                i = this.zzc + 1;
                this.zzc = i;
                Map map = this.zzb;
                arrayList = new ArrayList(map.size());
                for (Map.Entry entry : map.entrySet()) {
                    arrayList.add(new AbstractMap.SimpleImmutableEntry((ServiceConnection) entry.getKey(), (ServiceConnection) entry.getValue()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zza(arrayList, i, componentName);
    }

    public final /* synthetic */ ConnectionResult zzb(String str, Executor executor) throws Throwable {
        zzt zztVar;
        ConnectionTracker connectionTrackerZzj;
        Context contextZzh;
        zzo zzoVar;
        try {
            Intent intentZza = zzam.zza(this.zza.zzh(), this.zzg);
            this.zzd = 3;
            StrictMode.VmPolicy vmPolicyZza = com.google.android.gms.common.util.zze.zza();
            try {
                zztVar = this.zza;
                connectionTrackerZzj = zztVar.zzj();
                contextZzh = zztVar.zzh();
                zzoVar = this.zzg;
            } catch (Throwable th) {
                th = th;
            }
            try {
                boolean zZza = connectionTrackerZzj.zza(contextZzh, str, intentZza, this, 4225, executor);
                this.zze = zZza;
                if (!zZza) {
                    this.zzd = 2;
                    try {
                        zztVar.zzj().unbindService(zztVar.zzh(), this);
                    } catch (IllegalArgumentException unused) {
                    }
                    ConnectionResult connectionResult = new ConnectionResult(16);
                    StrictMode.setVmPolicy(vmPolicyZza);
                    return connectionResult;
                }
                this.zzi = new zzp(zzoVar, this);
                zztVar.zzi().sendMessageDelayed(zztVar.zzi().obtainMessage(1, this.zzi), zztVar.zzk());
                ConnectionResult connectionResult2 = ConnectionResult.RESULT_SUCCESS;
                StrictMode.setVmPolicy(vmPolicyZza);
                return connectionResult2;
            } catch (Throwable th2) {
                th = th2;
                Throwable th3 = th;
                StrictMode.setVmPolicy(vmPolicyZza);
                throw th3;
            }
        } catch (zzak e) {
            return e.zza;
        }
    }

    public final /* synthetic */ ConnectionResult zzc(String str, UserHandle userHandle) throws Throwable {
        zzt zztVar;
        ConnectionTracker connectionTrackerZzj;
        Context contextZzh;
        zzo zzoVar;
        try {
            Intent intentZza = zzam.zza(this.zza.zzh(), this.zzg);
            this.zzd = 3;
            StrictMode.VmPolicy vmPolicyZza = com.google.android.gms.common.util.zze.zza();
            try {
                zztVar = this.zza;
                connectionTrackerZzj = zztVar.zzj();
                contextZzh = zztVar.zzh();
                zzoVar = this.zzg;
            } catch (Throwable th) {
                th = th;
            }
            try {
                boolean zZzb = connectionTrackerZzj.zzb(contextZzh, str, intentZza, this, 4225, userHandle);
                this.zze = zZzb;
                if (!zZzb) {
                    this.zzd = 2;
                    try {
                        zztVar.zzj().unbindService(zztVar.zzh(), this);
                    } catch (IllegalArgumentException unused) {
                    }
                    ConnectionResult connectionResult = new ConnectionResult(16);
                    StrictMode.setVmPolicy(vmPolicyZza);
                    return connectionResult;
                }
                this.zzi = new zzp(zzoVar, this);
                zztVar.zzi().sendMessageDelayed(zztVar.zzi().obtainMessage(1, this.zzi), zztVar.zzk());
                ConnectionResult connectionResult2 = ConnectionResult.RESULT_SUCCESS;
                StrictMode.setVmPolicy(vmPolicyZza);
                return connectionResult2;
            } catch (Throwable th2) {
                th = th2;
                Throwable th3 = th;
                StrictMode.setVmPolicy(vmPolicyZza);
                throw th3;
            }
        } catch (zzak e) {
            return e.zza;
        }
    }

    public final /* synthetic */ void zzd(String str) {
        zzt zztVar = this.zza;
        synchronized (zztVar.zzg()) {
            zztVar.zzf(this);
        }
        try {
            zzt zztVar2 = this.zza;
            zztVar2.zzj().unbindService(zztVar2.zzh(), this);
        } finally {
            this.zze = false;
            this.zzd = 2;
        }
    }

    public final /* synthetic */ void zze(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.zzb.put(serviceConnection, new zzq(serviceConnection2));
    }

    public final /* synthetic */ void zzf(ServiceConnection serviceConnection, String str) {
        this.zzb.remove(serviceConnection);
    }

    public final /* synthetic */ boolean zzg() {
        return this.zze;
    }

    public final /* synthetic */ int zzh() {
        return this.zzd;
    }

    public final /* synthetic */ boolean zzi(ServiceConnection serviceConnection) {
        return this.zzb.containsKey(serviceConnection);
    }

    public final /* synthetic */ boolean zzj() {
        return this.zzb.isEmpty();
    }

    public final /* synthetic */ IBinder zzk() {
        return this.zzf;
    }

    public final /* synthetic */ ComponentName zzl() {
        return this.zzh;
    }

    public final /* synthetic */ Map zzm() {
        return this.zzb;
    }

    public final /* synthetic */ int zzn() {
        return this.zzc;
    }

    public final /* synthetic */ void zzo(int i) {
        this.zzc = i;
    }

    public final /* synthetic */ void zzp(int i) {
        this.zzd = 2;
    }

    public final /* synthetic */ void zzq(IBinder iBinder) {
        this.zzf = null;
    }

    public final /* synthetic */ void zzr(ComponentName componentName) {
        this.zzh = componentName;
    }

    public final /* synthetic */ zzp zzs() {
        return this.zzi;
    }

    public final /* synthetic */ void zzt(zzp zzpVar) {
        this.zzi = null;
    }
}
