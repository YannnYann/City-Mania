###### Class com.google.android.gms.internal.measurement.zzqi (com.google.android.gms.internal.measurement.zzqi)
.class public final Lcom/google/android/gms/internal/measurement/zzqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzqm;


# static fields
.field private static zza:Z


# instance fields
.field private final zzb:Lcom/google/common/base/Supplier;

.field private final zzc:I

.field private final zzd:Lcom/google/common/base/Supplier;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Supplier;I)V
    .registers 4

    .line 1
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzqh;->zza:Lcom/google/android/gms/internal/measurement/zzqh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqi;->zzb:Lcom/google/common/base/Supplier;

    const/4 p1, 0x5

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzqi;->zzc:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzqi;->zzd:Lcom/google/common/base/Supplier;

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 10

    .line 1
    const-class v1, Lcom/google/android/gms/internal/measurement/zzqi;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzqi;->zza:Z

    if-nez v0, :cond_2d

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzqg;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/measurement/zzqg;-><init>(Lcom/google/android/gms/internal/measurement/zzqi;)V

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzqi;->zzc:I

    int-to-long v6, v0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqi;->zzb:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzqf;

    move-object v3, p0

    .line 2
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/zzqf;-><init>(Lcom/google/android/gms/internal/measurement/zzqi;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 3
    invoke-interface {v5, v2, v6, v7, v8}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzpx;->zza(Lcom/google/common/util/concurrent/ListenableFuture;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzqi;->zza:Z

    goto :goto_2d

    :catchall_2b
    move-exception v0

    goto :goto_2f

    .line 4
    :cond_2d
    :goto_2d
    monitor-exit v1

    return-void

    :goto_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2b

    throw v0
.end method

.method public final synthetic zzb()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqi;->zzd:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "PhenotypeProcessReaper"

    const-string v1, "Killing process to refresh experiment configuration"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_20
    return-void
.end method

###### Class com.google.android.gms.internal.measurement.zzqg (com.google.android.gms.internal.measurement.zzqg)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzqg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzqi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzqi;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzqg;->zza:Lcom/google/android/gms/internal/measurement/zzqi;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzqg;->zza:Lcom/google/android/gms/internal/measurement/zzqi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzqi;->zzb()V

    return-void
.end method
