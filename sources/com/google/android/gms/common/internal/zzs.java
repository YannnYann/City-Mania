package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.12.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzs implements Handler.Callback {
    final /* synthetic */ zzt zza;

    public /* synthetic */ zzs(zzt zztVar, byte[] bArr) {
        java.util.Objects.requireNonNull(zztVar);
        this.zza = zztVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        zzr zzrVar;
        int iZzn;
        ArrayList arrayList;
        ComponentName componentNameZzl;
        int i = message.what;
        if (i == 0) {
            zzt zztVar = this.zza;
            synchronized (zztVar.zzg()) {
                try {
                    zzo zzoVar = (zzo) message.obj;
                    zzr zzrVar2 = (zzr) zztVar.zzg().get(zzoVar);
                    if (zzrVar2 != null && zzrVar2.zzj()) {
                        if (zzrVar2.zzg()) {
                            zzrVar2.zzd("GmsClientSupervisor");
                        }
                        zztVar.zzg().remove(zzoVar);
                    }
                } finally {
                }
            }
            return true;
        }
        if (i != 1) {
            return false;
        }
        zzt zztVar2 = this.zza;
        synchronized (zztVar2.zzg()) {
            try {
                zzp zzpVar = (zzp) message.obj;
                zzo zzoVar2 = zzpVar.zza;
                zzrVar = (zzr) zztVar2.zzg().get(zzoVar2);
                iZzn = -1;
                arrayList = null;
                if (zzrVar != null && zzrVar == zzpVar.zzb && zzrVar.zzh() == 3) {
                    String string = zzoVar2.toString();
                    StringBuilder sb = new StringBuilder(string.length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(string);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    componentNameZzl = zzrVar.zzl();
                    if (componentNameZzl == null) {
                        componentNameZzl = zzoVar2.zzc();
                    }
                    if (componentNameZzl == null) {
                        String strZzb = zzoVar2.zzb();
                        Preconditions.checkNotNull(strZzb);
                        componentNameZzl = new ComponentName(strZzb, "unknown");
                    }
                    zztVar2.zzf(zzrVar);
                    zzrVar.zzq(null);
                    zzrVar.zzr(componentNameZzl);
                    zzrVar.zzp(2);
                    zzrVar.zzo(zzrVar.zzn() + 1);
                    iZzn = zzrVar.zzn();
                    arrayList = new ArrayList(zzrVar.zzm().size());
                    for (Map.Entry entry : zzrVar.zzm().entrySet()) {
                        arrayList.add(new AbstractMap.SimpleImmutableEntry((ServiceConnection) entry.getKey(), (ServiceConnection) entry.getValue()));
                    }
                } else {
                    componentNameZzl = null;
                    zzrVar = null;
                }
            } finally {
            }
        }
        if (zzrVar != null) {
            zzrVar.zza(arrayList, iZzn, componentNameZzl);
        }
        return true;
    }
}
