###### Class com.google.android.gms.games.internal.zzf (com.google.android.gms.games.internal.zzf)
.class public final Lcom/google/android/gms/games/internal/zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# static fields
.field public static final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field public final zzc:Landroid/app/Application;

.field public final zzd:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public final zze:Ljava/lang/Object;

.field public final zzf:Ljava/util/Set;

.field public zzg:Ljava/lang/ref/WeakReference;

.field public zzh:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/zzf;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/games/internal/zze;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/internal/zze;-><init>(Lcom/google/android/gms/games/internal/zzf;[B)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->zzd:Landroid/app/Application$ActivityLifecycleCallbacks;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->zze:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->zzf:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzf;->zzh:Z

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf;->zzc:Landroid/app/Application;

    return-void
.end method

.method public static zza(Landroid/app/Application;)Lcom/google/android/gms/games/internal/zzf;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/games/internal/zzf;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzf;

    if-eqz v1, :cond_e

    return-object v1

    :cond_e
    new-instance v1, Lcom/google/android/gms/games/internal/zzf;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/games/internal/zzf;-><init>(Landroid/app/Application;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1}, Lads_mobile_sdk/tu2$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/games/internal/zzf;

    return-object p0
.end method


# virtual methods
.method public final zzb()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->zze:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/zzf;->zzh:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf;->zzc:Landroid/app/Application;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzf;->zzd:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 2
    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/games/internal/zzf;->zzh:Z

    goto :goto_14

    :catchall_12
    move-exception v1

    goto :goto_16

    .line 3
    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_12

    throw v1
.end method

.method public final zzc(Lcom/google/android/gms/games/internal/zzc;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->zze:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf;->zzf:Ljava/util/Set;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_25

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzf;->zzh(Lcom/google/android/gms/games/internal/zzc;)V

    return-void

    .line 6
    :cond_1a
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/games/internal/zzd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/zzd;-><init>(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/games/internal/zzc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_25
    move-exception p1

    .line 4
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public final zzd()Landroid/app/Activity;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->zze:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf;->zzg:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_f

    .line 2
    :cond_9
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    :goto_f
    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public final synthetic zze(Lcom/google/android/gms/games/internal/zzc;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzf;->zzh(Lcom/google/android/gms/games/internal/zzc;)V

    return-void
.end method

.method public final synthetic zzf(Landroid/app/Activity;)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->zze:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzf;->zzd()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_10

    .line 4
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    goto :goto_2f

    :cond_10
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/games/internal/zzf;->zzg:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf;->zzf:Ljava/util/Set;

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/games/internal/zzc;

    .line 7
    invoke-interface {v2, p1}, Lcom/google/android/gms/games/internal/zzc;->zza(Landroid/app/Activity;)V

    goto :goto_1d

    .line 8
    :cond_2d
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_e

    throw p1
.end method

.method public final synthetic zzg(Landroid/app/Activity;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->zze:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf;->zzg:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_b

    .line 4
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p1

    goto :goto_16

    .line 2
    :cond_b
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_14

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf;->zzg:Ljava/lang/ref/WeakReference;

    .line 3
    :cond_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_9

    throw p1
.end method

.method public final zzh(Lcom/google/android/gms/games/internal/zzc;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzf;->zzd()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-interface {p1, v0}, Lcom/google/android/gms/games/internal/zzc;->zza(Landroid/app/Activity;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzd (com.google.android.gms.games.internal.zzd)
.class public final synthetic Lcom/google/android/gms/games/internal/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/games/internal/zzf;

.field public final synthetic zzb:Lcom/google/android/gms/games/internal/zzc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/games/internal/zzc;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzd;->zza:Lcom/google/android/gms/games/internal/zzf;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzd;->zzb:Lcom/google/android/gms/games/internal/zzc;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzd;->zza:Lcom/google/android/gms/games/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzd;->zzb:Lcom/google/android/gms/games/internal/zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/zzf;->zze(Lcom/google/android/gms/games/internal/zzc;)V

    return-void
.end method
