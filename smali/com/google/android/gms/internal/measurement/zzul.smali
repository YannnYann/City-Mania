###### Class com.google.android.gms.internal.measurement.zzul (com.google.android.gms.internal.measurement.zzul)
.class final Lcom/google/android/gms/internal/measurement/zzul;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzut;

.field private zzb:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzut;[B)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzul;->zza:Lcom/google/android/gms/internal/measurement/zzut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzul;->zza:Lcom/google/android/gms/internal/measurement/zzut;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzut;->zze()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Initialize "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzi()Lcom/google/android/gms/internal/measurement/zzwb;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzxd;->zza:Lcom/google/android/gms/internal/measurement/zzxd;

    .line 2
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzxd;)Lcom/google/android/gms/internal/measurement/zzwi;

    move-result-object v1

    :try_start_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzh()Ljava/lang/Object;

    move-result-object v2

    .line 3
    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_5f

    :try_start_1f
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzul;->zzb:Ljava/util/List;

    if-nez v3, :cond_31

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzj()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/zzul;->zzb:Ljava/util/List;

    .line 4
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzut;->zzk(Ljava/util/List;)V

    goto :goto_31

    :catchall_2f
    move-exception v0

    goto :goto_81

    .line 5
    :cond_31
    :goto_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_2f

    :try_start_32
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzul;->zzb:Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzus;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzul;->zza:Lcom/google/android/gms/internal/measurement/zzut;

    const/4 v4, 0x0

    .line 7
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzus;-><init>(Lcom/google/android/gms/internal/measurement/zzut;[B)V

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzul;->zzb:Ljava/util/List;

    .line 8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/AsyncFunction;
    :try_end_57
    .catchall {:try_start_32 .. :try_end_57} :catchall_5f

    .line 9
    :try_start_57
    invoke-interface {v4, v2}, Lcom/google/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5e} :catch_61
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5f

    goto :goto_4b

    :catchall_5f
    move-exception v0

    goto :goto_83

    :catch_61
    move-exception v2

    .line 10
    :try_start_62
    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_69
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->whenAllSucceed(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/Futures$FutureCombiner;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzuk;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/measurement/zzuk;-><init>(Lcom/google/android/gms/internal/measurement/zzul;)V

    .line 12
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 13
    invoke-virtual {v0, v2, v3}, Lcom/google/common/util/concurrent/Futures$FutureCombiner;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzwi;->zza(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_7d
    .catchall {:try_start_62 .. :try_end_7d} :catchall_5f

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzwi;->close()V

    return-object v0

    .line 5
    :goto_81
    :try_start_81
    monitor-exit v2
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_2f

    :try_start_82
    throw v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_5f

    .line 1
    :goto_83
    :try_start_83
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzwi;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_8b

    :catchall_87
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8b
    throw v0
.end method

.method public final synthetic zza()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzul;->zza:Lcom/google/android/gms/internal/measurement/zzut;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzut;->zzh()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzul;->zzb:Ljava/util/List;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v1
.end method

###### Class com.google.android.gms.internal.measurement.zzuk (com.google.android.gms.internal.measurement.zzuk)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzuk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzul;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzul;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuk;->zza:Lcom/google/android/gms/internal/measurement/zzul;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzuk;->zza:Lcom/google/android/gms/internal/measurement/zzul;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzul;->zza()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
