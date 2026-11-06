###### Class com.google.android.play.core.hsdp.service.zzai (com.google.android.play.core.hsdp.service.zzai)
.class public final Lcom/google/android/play/core/hsdp/service/zzai;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Lcom/google/android/play/core/hsdp/service/zzr;
.implements Lcom/google/android/play/core/hsdp/service/zzbb;


# instance fields
.field public final zza:Landroid/content/Context;

.field public final zzb:Lcom/google/android/play/core/hsdp/service/zzbc;

.field public final zzc:Ljava/util/concurrent/ConcurrentMap;

.field public zzd:Lcom/google/android/play/core/hsdp/service/zzaf;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzc:Ljava/util/concurrent/ConcurrentMap;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zza:Landroid/content/Context;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/playcore_hsdp/zzf;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzbn;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzv;

    invoke-direct {v1}, Lcom/google/android/play/core/hsdp/service/zzv;-><init>()V

    const-string v2, "HsdpService"

    invoke-direct {v0, p2, v2, p1, v1}, Lcom/google/android/play/core/hsdp/service/zzbn;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/hsdp/service/zzba;)V

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzb:Lcom/google/android/play/core/hsdp/service/zzbc;

    return-void

    .line 2
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "HSDP service is not available."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static bridge synthetic zzh(Lcom/google/android/play/core/hsdp/service/zzai;)Ljava/util/concurrent/ConcurrentMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzc:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method public static synthetic zzi(Lcom/google/android/play/core/hsdp/service/zzai;)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/service/zzay;

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/hsdp/service/zzay;->zzd(I)Z

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_1e
    const-string p0, "HsdpClientImpl"

    const-string v0, "HSDP overlays: empty"

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/play/core/hsdp/service/zzai;->zzw(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/play/core/hsdp/service/zzai;Landroid/os/Bundle;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/hsdp/service/zzai;->zzu(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/util/List;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/play/core/hsdp/service/zzai;->zzv(Ljava/util/List;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V

    return-void
.end method

.method public static synthetic zzm(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V
    .registers 4

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/play/core/hsdp/service/zzay;

    if-eqz p0, :cond_15

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/play/core/hsdp/service/zzay;->zzd(I)Z

    move-result p0

    if-eqz p0, :cond_15

    if-eqz p3, :cond_15

    .line 3
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_15
    return-void
.end method

.method public static bridge synthetic zzo(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzai;->zzs()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzw;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/play/core/hsdp/service/zzw;-><init>(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzb:Lcom/google/android/play/core/hsdp/service/zzbc;

    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/zzbc;->zze()V

    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/service/zzay;

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No active overlay for target package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Please call show() first."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HsdpClientImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zza:Landroid/content/Context;

    const-string v2, "callingPackage"

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "targetPackage"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sdkVersion"

    const-string v1, "2.0.0"

    .line 6
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "requestTimestampMs"

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 8
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzb:Lcom/google/android/play/core/hsdp/service/zzbc;

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzx;

    invoke-direct {v1, p0, v0}, Lcom/google/android/play/core/hsdp/service/zzx;-><init>(Lcom/google/android/play/core/hsdp/service/zzai;Landroid/os/Bundle;)V

    .line 9
    invoke-interface {p1, v1}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzd(Ljava/util/List;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzy;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/play/core/hsdp/service/zzy;-><init>(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/util/List;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V

    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzb:Lcom/google/android/play/core/hsdp/service/zzbc;

    invoke-interface {p1, v0}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;IIZLcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;)V
    .registers 10

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzay;

    invoke-direct {v0, p1, p7}, Lcom/google/android/play/core/hsdp/service/zzay;-><init>(Ljava/lang/String;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;)V

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/service/zzay;

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {v0, p7}, Lcom/google/android/play/core/hsdp/service/zzay;->zzb(Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;)V

    :cond_12
    new-instance p7, Landroid/os/Bundle;

    .line 3
    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "windowToken"

    .line 4
    invoke-virtual {p7, v0, p3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string p3, "clientWindowWidthPx"

    .line 5
    invoke-virtual {p7, p3, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "clientWindowHeightPx"

    .line 6
    invoke-virtual {p7, p3, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "sdkVersion"

    const-string p4, "2.0.0"

    .line 7
    invoke-virtual {p7, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "requestTimestampMs"

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    .line 9
    invoke-virtual {p7, p3, p4, p5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "autoTrigger"

    .line 10
    invoke-virtual {p7, p3, p6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzb:Lcom/google/android/play/core/hsdp/service/zzbc;

    new-instance p4, Lcom/google/android/play/core/hsdp/service/zzu;

    invoke-direct {p4, p0, p1, p2, p7}, Lcom/google/android/play/core/hsdp/service/zzu;-><init>(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    invoke-interface {p3, p4}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzf()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzb:Lcom/google/android/play/core/hsdp/service/zzbc;

    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/protocol/zzh;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/hsdp/service/zzay;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/zzay;->zzc()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public final zzp()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzae;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/hsdp/service/zzae;-><init>(Lcom/google/android/play/core/hsdp/service/zzai;)V

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzd:Lcom/google/android/play/core/hsdp/service/zzaf;

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzb:Lcom/google/android/play/core/hsdp/service/zzbc;

    .line 2
    invoke-interface {v0, p0}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzc(Lcom/google/android/play/core/hsdp/service/zzbb;)V

    return-void
.end method

.method public final zzq()V
    .registers 3

    .line 1
    const-string v0, "HsdpClientImpl"

    const-string v1, "HSDP bound service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final zzr()V
    .registers 3

    .line 1
    const-string v0, "HsdpClientImpl"

    const-string v1, "HSDP bound service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzai;->zzs()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzz;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/hsdp/service/zzz;-><init>(Lcom/google/android/play/core/hsdp/service/zzai;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzs()Landroid/os/Handler;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzb:Lcom/google/android/play/core/hsdp/service/zzbc;

    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/zzbc;->zza()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzu(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    const-string v0, "HsdpClientImpl"

    :try_start_2
    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzb:Lcom/google/android/play/core/hsdp/service/zzbc;

    invoke-interface {v1}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzb()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/hsdp/protocol/zzh;

    if-nez v1, :cond_d

    return-void

    :cond_d
    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzd:Lcom/google/android/play/core/hsdp/service/zzaf;

    .line 2
    invoke-interface {v1, p1, v2}, Lcom/google/android/play/core/hsdp/protocol/zzh;->zzd(Landroid/os/Bundle;Lcom/google/android/play/core/hsdp/protocol/zzj;)V
    :try_end_12
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_12} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    goto :goto_17

    :catch_15
    move-exception p1

    goto :goto_1d

    .line 4
    :goto_17
    const-string v1, "Failed to call hsdpService.endSession"

    .line 3
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 2
    :goto_1d
    const-string v1, "hsdpService is dead"

    .line 4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic zzv(Ljava/util/List;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V
    .registers 13

    .line 1
    const-string v0, "HsdpClientImpl"

    :try_start_2
    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzb:Lcom/google/android/play/core/hsdp/service/zzbc;

    invoke-interface {v1}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzb()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/hsdp/protocol/zzh;

    if-nez v1, :cond_d

    return-void

    :cond_d
    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zza:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;

    new-instance v5, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->targetAppPackageName()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {v4}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->targetAppPackageName()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual {v4}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->referrer()Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-virtual {v4}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->extraQueryParams()Ljava/util/Map;

    move-result-object v9

    .line 9
    invoke-static {v7, v8, v9}, Lcom/google/android/play/core/hsdp/service/zzq;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v7

    .line 10
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {v4}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->windowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v4, v8}, Lcom/google/android/play/core/hsdp/protocol/PrewarmRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 12
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :catch_4e
    move-exception p1

    goto :goto_5b

    :catch_50
    move-exception p1

    goto :goto_61

    :cond_52
    new-instance p1, Lcom/google/android/play/core/hsdp/service/zzaa;

    .line 13
    invoke-direct {p1, p0, p2}, Lcom/google/android/play/core/hsdp/service/zzaa;-><init>(Lcom/google/android/play/core/hsdp/service/zzai;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V

    .line 14
    invoke-interface {v1, v2, v3, p1}, Lcom/google/android/play/core/hsdp/protocol/zzh;->zze(Ljava/lang/String;Ljava/util/List;Lcom/google/android/play/core/hsdp/protocol/zzl;)V
    :try_end_5a
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_5a} :catch_50
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5a} :catch_4e

    return-void

    .line 16
    :goto_5b
    const-string p2, "Failed to call hsdpService.prewarm"

    .line 15
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 14
    :goto_61
    const-string p2, "hsdpService is dead"

    .line 16
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic zzw(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 12

    .line 1
    const-string v1, "HsdpClientImpl"

    :try_start_2
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzb:Lcom/google/android/play/core/hsdp/service/zzbc;

    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzb()Landroid/os/IInterface;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/play/core/hsdp/protocol/zzh;

    if-nez v2, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zza:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/google/android/play/core/hsdp/service/zzai;->zzd:Lcom/google/android/play/core/hsdp/service/zzaf;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 3
    invoke-interface/range {v2 .. v7}, Lcom/google/android/play/core/hsdp/protocol/zzh;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/hsdp/protocol/zzj;)V
    :try_end_1c
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_1c} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception v0

    move-object p1, v0

    goto :goto_23

    :catch_20
    move-exception v0

    move-object p1, v0

    goto :goto_29

    .line 5
    :goto_23
    const-string p2, "Failed to call hsdpService.show"

    .line 4
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 3
    :goto_29
    const-string p2, "hsdpService is dead"

    .line 5
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzu (com.google.android.play.core.hsdp.service.zzu)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzu;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzai;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzu;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzu;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzu;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzu;->zzd:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzu;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzu;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzu;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzu;->zzd:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/play/core/hsdp/service/zzai;->zzj(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzv (com.google.android.play.core.hsdp.service.zzv)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzv;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Lcom/google/android/play/core/hsdp/service/zzba;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/google/android/play/core/hsdp/protocol/zzg;->zzb(Landroid/os/IBinder;)Lcom/google/android/play/core/hsdp/protocol/zzh;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.play.core.hsdp.service.zzw (com.google.android.play.core.hsdp.service.zzw)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzw;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzai;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:I

.field public final synthetic zzd:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzb:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzc:I

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzd:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzb:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzc:I

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzd:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/play/core/hsdp/service/zzai;->zzm(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzx (com.google.android.play.core.hsdp.service.zzx)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzx;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzai;

.field public final synthetic zzb:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzx;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzx;->zzb:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzx;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzx;->zzb:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/google/android/play/core/hsdp/service/zzai;->zzk(Lcom/google/android/play/core/hsdp/service/zzai;Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzy (com.google.android.play.core.hsdp.service.zzy)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzy;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzai;

.field public final synthetic zzb:Ljava/util/List;

.field public final synthetic zzc:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/util/List;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzy;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzy;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzy;->zzc:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzy;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzy;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzy;->zzc:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;

    invoke-static {v0, v1, v2}, Lcom/google/android/play/core/hsdp/service/zzai;->zzl(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/util/List;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzz (com.google.android.play.core.hsdp.service.zzz)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzz;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzai;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzz;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzz;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzai;->zzi(Lcom/google/android/play/core/hsdp/service/zzai;)V

    return-void
.end method
