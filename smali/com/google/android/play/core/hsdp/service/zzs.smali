###### Class com.google.android.play.core.hsdp.service.zzs (com.google.android.play.core.hsdp.service.zzs)
.class public final Lcom/google/android/play/core/hsdp/service/zzs;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# static fields
.field public static zza:Lcom/google/android/play/core/hsdp/service/zzr;


# direct methods
.method public static declared-synchronized zza(Landroid/content/Intent;Landroid/content/Context;)Lcom/google/android/play/core/hsdp/service/zzr;
    .registers 4

    const-class v0, Lcom/google/android/play/core/hsdp/service/zzs;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/play/core/hsdp/service/zzs;->zza:Lcom/google/android/play/core/hsdp/service/zzr;

    if-nez v1, :cond_18

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzai;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/hsdp/service/zzai;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/play/core/hsdp/service/zzai;->zzp()V

    sput-object v1, Lcom/google/android/play/core/hsdp/service/zzs;->zza:Lcom/google/android/play/core/hsdp/service/zzr;

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1c

    :cond_18
    :goto_18
    sget-object p0, Lcom/google/android/play/core/hsdp/service/zzs;->zza:Lcom/google/android/play/core/hsdp/service/zzr;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_16

    monitor-exit v0

    return-object p0

    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_16

    throw p0
.end method
