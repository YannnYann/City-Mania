package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzky implements Application.ActivityLifecycleCallbacks, zzkw {
    public final /* synthetic */ zzlj zza;

    public zzky(zzlj zzljVar) {
        Objects.requireNonNull(zzljVar);
        this.zza = zzljVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) throws Throwable {
        zza(com.google.android.gms.internal.measurement.zzdd.zza(activity), bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zzb(com.google.android.gms.internal.measurement.zzdd.zza(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zzc(com.google.android.gms.internal.measurement.zzdd.zza(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zzd(com.google.android.gms.internal.measurement.zzdd.zza(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zze(com.google.android.gms.internal.measurement.zzdd.zza(activity), bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0069  */
    @Override // com.google.android.gms.measurement.internal.zzkw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(com.google.android.gms.internal.measurement.zzdd r8, android.os.Bundle r9) throws java.lang.Throwable {
        /*
            r7 = this;
            com.google.android.gms.measurement.internal.zzlj r0 = r7.zza     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            com.google.android.gms.measurement.internal.zzic r1 = r0.zzu     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            com.google.android.gms.measurement.internal.zzgu r2 = r1.zzaW()     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            com.google.android.gms.measurement.internal.zzgs r2 = r2.zzk()     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            java.lang.String r3 = "onActivityCreated"
            r2.zza(r3)     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            android.content.Intent r2 = r8.zzc     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            if (r2 == 0) goto L4b
            android.net.Uri r3 = r2.getData()     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            if (r3 == 0) goto L2b
            boolean r4 = r3.isHierarchical()     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            if (r4 != 0) goto L22
            goto L2b
        L22:
            r4 = r3
            goto L43
        L24:
            r0 = move-exception
            r2 = r7
            goto L9d
        L28:
            r0 = move-exception
            r2 = r7
            goto L87
        L2b:
            android.os.Bundle r3 = r2.getExtras()     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            r4 = 0
            if (r3 == 0) goto L43
            java.lang.String r5 = "com.android.vending.referral_url"
            java.lang.String r3 = r3.getString(r5)     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            boolean r5 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            if (r5 != 0) goto L43
            android.net.Uri r3 = android.net.Uri.parse(r3)     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            goto L22
        L43:
            if (r4 == 0) goto L4b
            boolean r3 = r4.isHierarchical()     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            if (r3 != 0) goto L4d
        L4b:
            r2 = r7
            goto L7d
        L4d:
            com.google.android.gms.measurement.internal.zzpp r0 = r1.zzk()     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            boolean r0 = r0.zzj(r2)     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            if (r0 == 0) goto L5b
            java.lang.String r0 = "gs"
        L59:
            r5 = r0
            goto L5e
        L5b:
            java.lang.String r0 = "auto"
            goto L59
        L5e:
            java.lang.String r0 = "referrer"
            java.lang.String r6 = r4.getQueryParameter(r0)     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            if (r9 != 0) goto L69
            r0 = 1
        L67:
            r3 = r0
            goto L6b
        L69:
            r0 = 0
            goto L67
        L6b:
            com.google.android.gms.measurement.internal.zzhz r0 = r1.zzaX()     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            com.google.android.gms.measurement.internal.zzkx r1 = new com.google.android.gms.measurement.internal.zzkx     // Catch: java.lang.Throwable -> L24 java.lang.RuntimeException -> L28
            r2 = r7
            r1.<init>(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L79 java.lang.RuntimeException -> L7b
            r0.zzj(r1)     // Catch: java.lang.Throwable -> L79 java.lang.RuntimeException -> L7b
            goto L98
        L79:
            r0 = move-exception
            goto L9d
        L7b:
            r0 = move-exception
            goto L87
        L7d:
            com.google.android.gms.measurement.internal.zzic r0 = r0.zzu
        L7f:
            com.google.android.gms.measurement.internal.zzmb r0 = r0.zzs()
            r0.zzn(r8, r9)
            return
        L87:
            com.google.android.gms.measurement.internal.zzlj r1 = r2.zza     // Catch: java.lang.Throwable -> L79
            com.google.android.gms.measurement.internal.zzic r1 = r1.zzu     // Catch: java.lang.Throwable -> L79
            com.google.android.gms.measurement.internal.zzgu r1 = r1.zzaW()     // Catch: java.lang.Throwable -> L79
            com.google.android.gms.measurement.internal.zzgs r1 = r1.zzb()     // Catch: java.lang.Throwable -> L79
            java.lang.String r3 = "Throwable caught in onActivityCreated"
            r1.zzb(r3, r0)     // Catch: java.lang.Throwable -> L79
        L98:
            com.google.android.gms.measurement.internal.zzlj r0 = r2.zza
            com.google.android.gms.measurement.internal.zzic r0 = r0.zzu
            goto L7f
        L9d:
            com.google.android.gms.measurement.internal.zzlj r1 = r2.zza
            com.google.android.gms.measurement.internal.zzic r1 = r1.zzu
            com.google.android.gms.measurement.internal.zzmb r1 = r1.zzs()
            r1.zzn(r8, r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzky.zza(com.google.android.gms.internal.measurement.zzdd, android.os.Bundle):void");
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    public final void zzb(com.google.android.gms.internal.measurement.zzdd zzddVar) {
        this.zza.zzu.zzs().zzt(zzddVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    public final void zzc(com.google.android.gms.internal.measurement.zzdd zzddVar) {
        zzic zzicVar = this.zza.zzu;
        zzicVar.zzs().zzq(zzddVar);
        zzoc zzocVarZzh = zzicVar.zzh();
        zzic zzicVar2 = zzocVarZzh.zzu;
        zzicVar2.zzaX().zzj(new zznv(zzocVarZzh, zzicVar2.zzba().elapsedRealtime()));
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    public final void zzd(com.google.android.gms.internal.measurement.zzdd zzddVar) {
        zzic zzicVar = this.zza.zzu;
        zzoc zzocVarZzh = zzicVar.zzh();
        zzic zzicVar2 = zzocVarZzh.zzu;
        zzicVar2.zzaX().zzj(new zznu(zzocVarZzh, zzicVar2.zzba().elapsedRealtime()));
        zzicVar.zzs().zzp(zzddVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    public final void zze(com.google.android.gms.internal.measurement.zzdd zzddVar, Bundle bundle) {
        this.zza.zzu.zzs().zzs(zzddVar, bundle);
    }
}
