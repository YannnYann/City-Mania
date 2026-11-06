###### Class com.google.android.gms.internal.measurement.zzwi (com.google.android.gms.internal.measurement.zzwi)
.class public final Lcom/google/android/gms/internal/measurement/zzwi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/gms/internal/measurement/zzwt;


# instance fields
.field private zza:Lcom/google/android/gms/internal/measurement/zzws;

.field private final zzb:Z

.field private zzc:Z

.field private zzd:Z

.field private zze:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzws;Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zze:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zza:Lcom/google/android/gms/internal/measurement/zzws;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzrn;->zza(Ljava/lang/Thread;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zzb:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zze:Z

    return-void
.end method

.method private final zzb()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zzc:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zzb:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zzd:Z

    if-nez v0, :cond_12

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzrn;->zza(Ljava/lang/Thread;)Z

    :cond_12
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zza:Lcom/google/android/gms/internal/measurement/zzws;

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zza:Lcom/google/android/gms/internal/measurement/zzws;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zzd:Z

    if-eqz v1, :cond_a

    goto :goto_11

    .line 6
    :cond_a
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zzc:Z

    if-nez v1, :cond_26

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzwi;->zzb()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_24

    :goto_11
    if-eqz v0, :cond_16

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzwt;->close()V

    :cond_16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zze:Z

    if-eqz v0, :cond_23

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzwg;->zza:Lcom/google/android/gms/internal/measurement/zzwg;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->zzd()Lcom/google/android/gms/internal/measurement/zzwq;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzvy;->zzc(Lcom/google/android/gms/internal/measurement/zzwq;Lcom/google/android/gms/internal/measurement/zzws;)Lcom/google/android/gms/internal/measurement/zzws;

    :cond_23
    return-void

    :catchall_24
    move-exception v1

    goto :goto_2e

    :cond_26
    :try_start_26
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Span was already closed!"

    .line 1
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_24

    :goto_2e
    if-eqz v0, :cond_38

    .line 3
    :try_start_30
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzwt;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    throw v1
.end method

.method public final run()V
    .registers 3

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zzc:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zzd:Z

    if-nez v0, :cond_9

    goto :goto_d

    .line 1
    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzwi;->zzb()V

    return-void

    .line 2
    :cond_d
    :goto_d
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzwh;->zza:Lcom/google/android/gms/internal/measurement/zzwh;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzrn;->zzb()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zza(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zzc:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zzd:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzwi;->zzd:Z

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1

    .line 1
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Signal is already attached to future"

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Span was already closed. Did you attach it to a future after calling Tracer.endSpan()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
