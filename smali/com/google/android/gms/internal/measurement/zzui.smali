###### Class com.google.android.gms.internal.measurement.zzui (com.google.android.gms.internal.measurement.zzui)
.class public final Lcom/google/android/gms/internal/measurement/zzui;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzuv;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzc:Lcom/google/android/gms/internal/measurement/zztv;

.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Lcom/google/android/gms/internal/measurement/zzru;

.field private final zzf:Lcom/google/common/base/Optional;

.field private final zzg:Lcom/google/android/gms/internal/measurement/zzwb;

.field private final zzh:Ljava/lang/Object;

.field private final zzi:Lcom/google/common/util/concurrent/ExecutionSequencer;

.field private zzj:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/measurement/zztv;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/measurement/zzru;Lcom/google/common/base/Optional;Lcom/google/android/gms/internal/measurement/zzwb;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzh:Ljava/lang/Object;

    invoke-static {}, Lcom/google/common/util/concurrent/ExecutionSequencer;->create()Lcom/google/common/util/concurrent/ExecutionSequencer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzi:Lcom/google/common/util/concurrent/ExecutionSequencer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzui;->zza:Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzc:Lcom/google/android/gms/internal/measurement/zztv;

    .line 3
    invoke-static {p4}, Lcom/google/common/util/concurrent/MoreExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzd:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzui;->zze:Lcom/google/android/gms/internal/measurement/zzru;

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzf:Lcom/google/common/base/Optional;

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzg:Lcom/google/android/gms/internal/measurement/zzwb;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzuw;
    .registers 1

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zztx;->zzc()Lcom/google/android/gms/internal/measurement/zzuw;

    move-result-object v0

    return-object v0
.end method

.method private final zzm(Landroid/net/Uri;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "Read "

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzg:Lcom/google/android/gms/internal/measurement/zzwb;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzui;->zza:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzxd;->zza:Lcom/google/android/gms/internal/measurement/zzxd;

    .line 2
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzxd;)Lcom/google/android/gms/internal/measurement/zzwi;

    move-result-object v0
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_25} :catch_58
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_25} :catch_56

    :try_start_25
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzui;->zze:Lcom/google/android/gms/internal/measurement/zzru;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzst;->zzb()Lcom/google/android/gms/internal/measurement/zzst;

    move-result-object v2

    .line 3
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/measurement/zzru;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_50

    :try_start_31
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzc:Lcom/google/android/gms/internal/measurement/zztv;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzve;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzve;->zzb()Lcom/google/android/gms/internal/measurement/zzafc;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzafc;->zzcj()Lcom/google/android/gms/internal/measurement/zzafj;

    move-result-object v3

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzve;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzve;->zzc()Lcom/google/android/gms/internal/measurement/zzadf;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/zzafj;->zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/measurement/zzadf;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzafc;
    :try_end_4a
    .catchall {:try_start_31 .. :try_end_4a} :catchall_5a

    if-eqz v1, :cond_52

    .line 5
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_52

    :catchall_50
    move-exception v1

    goto :goto_66

    :cond_52
    :goto_52
    :try_start_52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzwi;->close()V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_55} :catch_58
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    return-object v2

    :catch_56
    move-exception v0

    goto :goto_7f

    :catch_58
    move-exception v0

    goto :goto_6f

    :catchall_5a
    move-exception v2

    if-eqz v1, :cond_65

    .line 1
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception v1

    :try_start_62
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_65
    :goto_65
    throw v2
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_50

    :goto_66
    :try_start_66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzwi;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6e

    :catchall_6a
    move-exception v0

    :try_start_6b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6e
    throw v1
    :try_end_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_6f} :catch_58
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6f} :catch_56

    .line 5
    :goto_6f
    :try_start_6f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzui;->zze:Lcom/google/android/gms/internal/measurement/zzru;

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzru;->zzc(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzc:Lcom/google/android/gms/internal/measurement/zztv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zztv;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_7e
    throw v0
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7f} :catch_56

    :goto_7f
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzui;->zze:Lcom/google/android/gms/internal/measurement/zzru;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzui;->zza:Ljava/lang/String;

    .line 8
    invoke-static {v1, p1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzux;->zza(Lcom/google/android/gms/internal/measurement/zzru;Landroid/net/Uri;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private final zzn(Landroid/net/Uri;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, ".tmp"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zza(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Write "

    :try_start_8
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzg:Lcom/google/android/gms/internal/measurement/zzwb;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzui;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzxd;->zza:Lcom/google/android/gms/internal/measurement/zzxd;

    .line 3
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/measurement/zzwb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzxd;)Lcom/google/android/gms/internal/measurement/zzwi;

    move-result-object v1
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2b} :catch_60

    :try_start_2b
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzse;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzse;-><init>()V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_53

    :try_start_30
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzui;->zze:Lcom/google/android/gms/internal/measurement/zzru;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzsw;->zzb()Lcom/google/android/gms/internal/measurement/zzsw;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/zzro;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzsw;->zzc([Lcom/google/android/gms/internal/measurement/zzro;)Lcom/google/android/gms/internal/measurement/zzsw;

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/measurement/zzru;->zza(Landroid/net/Uri;Lcom/google/android/gms/internal/measurement/zzrt;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_45} :catch_55
    .catchall {:try_start_30 .. :try_end_45} :catchall_53

    .line 5
    :try_start_45
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzafc;

    .line 6
    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/measurement/zzafc;->zzce(Ljava/io/OutputStream;)V

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzse;->zzc()V
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_62

    if-eqz v3, :cond_57

    .line 9
    :try_start_4f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_55
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception p1

    goto :goto_77

    :catch_55
    move-exception p2

    goto :goto_6e

    .line 11
    :cond_57
    :goto_57
    :try_start_57
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzwi;->close()V

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzui;->zze:Lcom/google/android/gms/internal/measurement/zzru;

    .line 12
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzru;->zzd(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5f} :catch_60

    return-void

    :catch_60
    move-exception p1

    goto :goto_80

    :catchall_62
    move-exception p2

    if-eqz v3, :cond_6d

    .line 8
    :try_start_65
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception v2

    :try_start_6a
    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6d
    :goto_6d
    throw p2
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6e} :catch_55
    .catchall {:try_start_6a .. :try_end_6e} :catchall_53

    .line 2
    :goto_6e
    :try_start_6e
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzui;->zze:Lcom/google/android/gms/internal/measurement/zzru;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzui;->zza:Ljava/lang/String;

    .line 10
    invoke-static {v2, p1, p2, v3}, Lcom/google/android/gms/internal/measurement/zzux;->zza(Lcom/google/android/gms/internal/measurement/zzru;Landroid/net/Uri;Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_53

    .line 2
    :goto_77
    :try_start_77
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzwi;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_7f

    :catchall_7b
    move-exception p2

    :try_start_7c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7f
    throw p1
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_80} :catch_60

    .line 12
    :goto_80
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzui;->zze:Lcom/google/android/gms/internal/measurement/zzru;

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzru;->zzc(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 14
    :try_start_88
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzru;->zzb(Landroid/net/Uri;)V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_90

    :catch_8c
    move-exception p2

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 16
    :cond_90
    :goto_90
    throw p1
.end method


# virtual methods
.method public final zzb(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/measurement/zzuu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 7

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzh:Ljava/lang/Object;

    monitor-enter p3

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_13

    if-eqz v0, :cond_18

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_12} :catch_15
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    goto :goto_18

    :catchall_13
    move-exception p1

    goto :goto_4a

    :catch_15
    const/4 v0, 0x0

    .line 8
    :try_start_16
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzi:Lcom/google/common/util/concurrent/ExecutionSequencer;

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzub;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzub;-><init>(Lcom/google/android/gms/internal/measurement/zzui;)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzxa;->zzb(Lcom/google/common/util/concurrent/AsyncCallable;)Lcom/google/common/util/concurrent/AsyncCallable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzd:Ljava/util/concurrent/Executor;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/ExecutionSequencer;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 7
    monitor-exit p3
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_13

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzi:Lcom/google/common/util/concurrent/ExecutionSequencer;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zztz;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zztz;-><init>(Lcom/google/android/gms/internal/measurement/zzui;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)V

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzxa;->zzb(Lcom/google/common/util/concurrent/AsyncCallable;)Lcom/google/common/util/concurrent/AsyncCallable;

    move-result-object p1

    .line 10
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 11
    invoke-virtual {p3, p1, p2}, Lcom/google/common/util/concurrent/ExecutionSequencer;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 8
    :goto_4a
    :try_start_4a
    monitor-exit p3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_13

    throw p1
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic zzd()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzug;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzug;-><init>(Lcom/google/android/gms/internal/measurement/zzui;)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzd:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 3
    invoke-static {v2, v0, v1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zze(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzh:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    monitor-exit p1

    return-object v0

    :catchall_7
    move-exception v0

    .line 2
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final synthetic zzf()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2
    :try_start_8
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzui;->zzm(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzty;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/measurement/zzty;-><init>(Lcom/google/android/gms/internal/measurement/zzui;[B)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzf:Lcom/google/common/base/Optional;

    .line 3
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_25

    .line 4
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_50

    :cond_25
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/zzsg;

    if-nez v3, :cond_4c

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/measurement/zzsg;

    if-eqz v3, :cond_32

    goto :goto_4c

    .line 6
    :cond_32
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zztf;

    .line 7
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zztf;->zza(Ljava/io/IOException;Lcom/google/android/gms/internal/measurement/zztg;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzue;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzue;-><init>(Lcom/google/android/gms/internal/measurement/zzui;)V

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzd:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_50

    .line 11
    :cond_4c
    :goto_4c
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    :goto_50
    return-object v0
.end method

.method public final synthetic zzg(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 6
    invoke-static {p3}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 2
    :cond_13
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzud;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/measurement/zzud;-><init>(Lcom/google/android/gms/internal/measurement/zzui;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzd:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p2, p1, p3}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzh:Ljava/lang/Object;

    monitor-enter p2

    .line 5
    :try_start_25
    monitor-exit p2

    return-object p1

    :catchall_27
    move-exception p1

    monitor-exit p2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public final synthetic zzh(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzui;->zzn(Landroid/net/Uri;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzh:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 3
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_16

    .line 4
    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :catchall_16
    move-exception p1

    .line 3
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public final synthetic zzi(Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzui;->zzm(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzj(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/zzui;->zzn(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzk(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 1
    const-string v0, ".bak"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzuz;->zza(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzui;->zze:Lcom/google/android/gms/internal/measurement/zzru;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzru;->zzc(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zzru;->zzd(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_14

    :catch_12
    move-exception p1

    goto :goto_19

    .line 5
    :cond_14
    :goto_14
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 4
    :goto_19
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzl(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzuf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzuf;-><init>(Lcom/google/android/gms/internal/measurement/zzui;)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzui;->zzd:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zztz (com.google.android.gms.internal.measurement.zztz)
.class final synthetic Lcom/google/android/gms/internal/measurement/zztz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzui;

.field private final synthetic zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final synthetic zzc:Lcom/google/common/util/concurrent/AsyncFunction;

.field private final synthetic zzd:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzui;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zztz;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zztz;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zztz;->zzc:Lcom/google/common/util/concurrent/AsyncFunction;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zztz;->zzd:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final synthetic call()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzua;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zztz;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzua;-><init>(Lcom/google/android/gms/internal/measurement/zzui;)V

    .line 2
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zztz;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 3
    invoke-static {v3, v0, v2}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zztz;->zzc:Lcom/google/common/util/concurrent/AsyncFunction;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zztz;->zzd:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v0, v2, v3}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzuc;

    invoke-direct {v3, v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzuc;-><init>(Lcom/google/android/gms/internal/measurement/zzui;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzxa;->zzc(Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 8
    invoke-static {v2, v0, v1}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.measurement.zzua (com.google.android.gms.internal.measurement.zzua)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzua;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzui;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzui;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzua;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzua;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzui;->zze(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzuc (com.google.android.gms.internal.measurement.zzuc)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzuc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzui;

.field private final synthetic zzb:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final synthetic zzc:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzui;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuc;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzuc;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzuc;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzuc;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzuc;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzuc;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzui;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzub (com.google.android.gms.internal.measurement.zzub)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzub;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzui;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzui;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzub;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    return-void
.end method


# virtual methods
.method public final synthetic call()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzub;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzui;->zzf()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.measurement.zzud (com.google.android.gms.internal.measurement.zzud)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzud;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzui;

.field private final synthetic zzb:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzui;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzud;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzud;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzud;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzud;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzui;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzue (com.google.android.gms.internal.measurement.zzue)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzue;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzui;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzui;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzue;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzue;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzui;->zzi(Ljava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzuf (com.google.android.gms.internal.measurement.zzuf)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzuf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzui;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzui;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuf;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzuf;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzui;->zzj(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzug (com.google.android.gms.internal.measurement.zzug)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzug;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzui;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzui;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzug;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzug;->zza:Lcom/google/android/gms/internal/measurement/zzui;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzui;->zzk(Landroid/net/Uri;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
