package com.google.android.gms.games.internal.v2.appshortcuts;

import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.games_v2.zzgb;
import com.google.android.gms.internal.games_v2.zzgn;
import com.google.android.gms.internal.games_v2.zzgq;
import com.google.android.gms.internal.games_v2.zzhg;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zze extends zzf {
    public final Context zza;

    public zze(Context context) {
        super(null);
        this.zza = context.getApplicationContext();
    }

    public static /* synthetic */ zzg zzc(zzgq zzgqVar, zzgq zzgqVar2, Task task) {
        return task.isSuccessful() ? (zzg) task.getResult() : zze(zzgqVar, zzgqVar2);
    }

    public static zzg zze(zzgq zzgqVar, zzgq zzgqVar2) {
        return new zzg(zzf(zzgqVar), zzgq.zzg(), zzf(zzgqVar2), zzgq.zzg());
    }

    public static zzgq zzf(zzgq zzgqVar) {
        zzgn zzgnVar = new zzgn();
        int size = zzgqVar.size();
        for (int i = 0; i < size; i++) {
            String strZza = ((zzi) zzgqVar.get(i)).zza();
            if (strZza != null) {
                zzgnVar.zzb(strZza);
            }
        }
        return zzgnVar.zzc();
    }

    public static zzgq zzg(List list) {
        zzgn zzgnVar = new zzgn();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ShortcutInfo shortcutInfoM = zze$$ExternalSyntheticApiModelOutline4.m(it.next());
            if (!shortcutInfoM.isImmutable() && shortcutInfoM.getId().startsWith("PLAY_GAMES_SERVICES_")) {
                zzgnVar.zzb(new zzi(shortcutInfoM.getId(), shortcutInfoM.getExtras(), Boolean.valueOf(shortcutInfoM.isPinned()), Boolean.valueOf(shortcutInfoM.isEnabled())));
            }
        }
        return zzgnVar.zzc();
    }

    @Override // com.google.android.gms.games.internal.v2.appshortcuts.zzf
    public final void zza() {
        zzgb.zza();
        new Thread(new Runnable() { // from class: com.google.android.gms.games.internal.v2.appshortcuts.zzd
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzb();
            }
        }, "initialize-shortcuts").start();
    }

    public final /* synthetic */ void zzb() {
        Task taskForResult;
        Context context = this.zza;
        final ShortcutManager shortcutManagerM = zze$$ExternalSyntheticApiModelOutline1.m(context.getSystemService(zze$$ExternalSyntheticApiModelOutline0.m()));
        if (shortcutManagerM == null) {
            return;
        }
        final zzr zzrVarZza = zzt.zza(context, PlayGamesAppShortcutsActivity.class);
        final zzgq zzgqVarZzg = zzg(shortcutManagerM.getDynamicShortcuts());
        final zzgq zzgqVarZzg2 = zzg(shortcutManagerM.getPinnedShortcuts());
        if (zzrVarZza == null || zzrVarZza.zza() <= 0) {
            taskForResult = Tasks.forResult(zze(zzgqVarZzg, zzgqVarZzg2));
        } else {
            final zzq zzqVar = new zzq(context);
            taskForResult = zzqVar.doRead(TaskApiCall.builder().setMethodKey(6744).setFeatures(com.google.android.gms.games.zzd.zzg).setAutoResolveMissingFeatures(false).run(new RemoteCall() { // from class: com.google.android.gms.games.internal.v2.appshortcuts.zzp
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final /* synthetic */ void accept(Object obj, Object obj2) throws RemoteException {
                    ((zzv) ((zzu) obj).getService()).zzd(new zzl(zzqVar, (TaskCompletionSource) obj2), zzrVarZza, zzgqVarZzg, zzgqVarZzg2);
                }
            }).build()).continueWith(zzhg.zza(), new Continuation() { // from class: com.google.android.gms.games.internal.v2.appshortcuts.zzc
                @Override // com.google.android.gms.tasks.Continuation
                public final /* synthetic */ Object then(Task task) {
                    return zze.zzc(zzgqVarZzg, zzgqVarZzg2, task);
                }
            });
        }
        taskForResult.addOnSuccessListener(zzhg.zza(), new OnSuccessListener() { // from class: com.google.android.gms.games.internal.v2.appshortcuts.zzb
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final /* synthetic */ void onSuccess(Object obj) {
                zzg zzgVar = (zzg) obj;
                List listZza = zzgVar.zza();
                ShortcutManager shortcutManager = shortcutManagerM;
                if (listZza != null && !listZza.isEmpty()) {
                    shortcutManager.removeDynamicShortcuts(listZza);
                }
                List listZzb = zzgVar.zzb();
                if (listZzb != null && !listZzb.isEmpty()) {
                    shortcutManager.addDynamicShortcuts(listZzb);
                }
                List listZzc = zzgVar.zzc();
                if (listZzc != null && !listZzc.isEmpty()) {
                    shortcutManager.disableShortcuts(listZzc);
                }
                List listZzd = zzgVar.zzd();
                if (listZzd == null || listZzd.isEmpty()) {
                    return;
                }
                shortcutManager.enableShortcuts(listZzd);
            }
        });
    }
}
