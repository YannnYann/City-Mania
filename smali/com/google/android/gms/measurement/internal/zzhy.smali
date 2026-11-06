###### Class com.google.android.gms.measurement.internal.zzhy (com.google.android.gms.measurement.internal.zzhy)
.class public final Lcom/google/android/gms/measurement/internal/zzhy;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzhz;

.field public final zzb:Ljava/lang/Object;

.field public final zzc:Ljava/util/concurrent/BlockingQueue;

.field public zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhz;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzd:Z

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 4
    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x1

    if-nez v0, :cond_14

    .line 1
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhz;->zzs()Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_d} :catch_f

    move v0, v1

    goto :goto_1

    :catch_f
    move-exception v1

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzc(Ljava/lang/InterruptedException;)V

    goto :goto_1

    .line 3
    :cond_14
    :try_start_14
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    :goto_1c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 4
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzhx;

    if-eqz v3, :cond_37

    iget-boolean v2, v3, Lcom/google/android/gms/measurement/internal/zzhx;->zza:Z

    if-eq v1, v2, :cond_2d

    const/16 v2, 0xa

    goto :goto_2e

    :cond_2d
    move v2, v0

    .line 5
    :goto_2e
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_1c

    :catchall_35
    move-exception v0

    goto :goto_71

    :cond_37
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Ljava/lang/Object;

    .line 7
    monitor-enter v3
    :try_end_3a
    .catchall {:try_start_14 .. :try_end_3a} :catchall_35

    .line 8
    :try_start_3a
    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_51

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhz;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhz;->zzt()Z
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_4b

    const-wide/16 v4, 0x7530

    .line 10
    :try_start_47
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4a} :catch_4d
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_51

    :catchall_4b
    move-exception v0

    goto :goto_6f

    :catch_4d
    move-exception v2

    .line 11
    :try_start_4e
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzc(Ljava/lang/InterruptedException;)V

    .line 12
    :cond_51
    :goto_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_4b

    :try_start_52
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhz;->zzr()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_35

    :try_start_59
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 13
    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6b

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()V

    .line 16
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_59 .. :try_end_65} :catchall_69

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()V

    return-void

    :catchall_69
    move-exception v0

    goto :goto_6d

    .line 14
    :cond_6b
    :try_start_6b
    monitor-exit v2

    goto :goto_1c

    :goto_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_69

    :try_start_6e
    throw v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_35

    .line 12
    :goto_6f
    :try_start_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_4b

    :try_start_70
    throw v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_35

    .line 17
    :goto_71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()V

    .line 18
    throw v0
.end method

.method public final zza()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public final zzb()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->zzr()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzd:Z

    if-nez v2, :cond_42

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->zzs()Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->zzr()Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->zzn()Lcom/google/android/gms/measurement/internal/zzhy;

    move-result-object v2

    const/4 v3, 0x0

    if-ne p0, v2, :cond_26

    .line 6
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzhz;->zzo(Lcom/google/android/gms/measurement/internal/zzhy;)V

    goto :goto_3f

    :catchall_24
    move-exception v0

    goto :goto_44

    .line 7
    :cond_26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->zzp()Lcom/google/android/gms/measurement/internal/zzhy;

    move-result-object v2

    if-ne p0, v2, :cond_30

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzhz;->zzq(Lcom/google/android/gms/measurement/internal/zzhy;)V

    goto :goto_3f

    :cond_30
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zzb()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    const-string v2, "Current scheduler thread is neither worker nor network"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    :goto_3f
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzd:Z

    .line 7
    :cond_42
    monitor-exit v1

    return-void

    :goto_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_24

    throw v0
.end method

.method public final zzc(Ljava/lang/InterruptedException;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Lcom/google/android/gms/measurement/internal/zzhz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzje;->zzu:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaW()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgu;->zze()Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
