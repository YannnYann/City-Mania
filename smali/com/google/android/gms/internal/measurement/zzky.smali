###### Class com.google.android.gms.internal.measurement.zzky (com.google.android.gms.internal.measurement.zzky)
.class public final Lcom/google/android/gms/internal/measurement/zzky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field public static final synthetic zza:I

.field private static zzb:Landroid/os/UserManager;

.field private static volatile zzc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzky;->zza()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzky;->zzc:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static zzb(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzky;->zza()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzky;->zzi(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static zzc(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzky;->zza()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzky;->zzi(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static zzd(Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkx;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzky;->zze(Landroid/content/Context;Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static zze(Landroid/content/Context;Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnprotectedReceiver"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzky;->zzc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/Futures;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    .line 3
    :cond_b
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v3

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkv;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzkv;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.USER_UNLOCKED"

    .line 6
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzky;->zzc(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3f

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_3f

    .line 8
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/measurement/zzky;->zzh(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 9
    invoke-static {v4, v5}, Lcom/google/common/util/concurrent/Futures;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/common/util/concurrent/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-object v3

    :cond_3f
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzkw;

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzkw;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 10
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 11
    invoke-virtual {v3, p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v3
.end method

.method public static synthetic zzf(Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzky;->zzj(Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static synthetic zzg(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzky;->zzh(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private static zzh(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    const-string p1, "DirectBootUtils"

    const-string v0, "Failed to unregister receiver"

    .line 2
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static zzi(Landroid/content/Context;)Z
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 6
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzky;->zzc:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-class v0, Lcom/google/android/gms/internal/measurement/zzky;

    monitor-enter v0

    :try_start_9
    sget-boolean v2, Lcom/google/android/gms/internal/measurement/zzky;->zzc:Z

    if-eqz v2, :cond_11

    monitor-exit v0

    return v1

    :catchall_f
    move-exception p0

    goto :goto_54

    :cond_11
    move v2, v1

    :goto_12
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-gt v2, v3, :cond_4a

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzky;->zzb:Landroid/os/UserManager;

    if-nez v3, :cond_25

    const-class v3, Landroid/os/UserManager;

    .line 1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzky;->zzb:Landroid/os/UserManager;

    :cond_25
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzky;->zzb:Landroid/os/UserManager;
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_f

    if-nez v3, :cond_2b

    move v5, v1

    goto :goto_4e

    .line 2
    :cond_2b
    :try_start_2b
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 3
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_39
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_39} :catch_3d
    .catchall {:try_start_2b .. :try_end_39} :catchall_f

    if-nez p0, :cond_4a

    :cond_3b
    move v5, v1

    goto :goto_4a

    :catch_3d
    move-exception v3

    .line 5
    :try_start_3e
    const-string v5, "DirectBootUtils"

    const-string v6, "Failed to check if user is unlocked."

    .line 4
    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v4, Lcom/google/android/gms/internal/measurement/zzky;->zzb:Landroid/os/UserManager;

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_4a
    :goto_4a
    if-eqz v5, :cond_4e

    .line 3
    sput-object v4, Lcom/google/android/gms/internal/measurement/zzky;->zzb:Landroid/os/UserManager;

    :cond_4e
    :goto_4e
    if-eqz v5, :cond_52

    .line 1
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzky;->zzc:Z

    .line 5
    :cond_52
    monitor-exit v0

    return v5

    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_f

    throw p0
.end method

.method private static synthetic zzj(Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 2
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/zzky;->zzh(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_11
    return-void
.end method

###### Class com.google.android.gms.internal.measurement.zzkw (com.google.android.gms.internal.measurement.zzkw)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzkw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/common/util/concurrent/SettableFuture;

.field private final synthetic zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic zzc:Landroid/content/Context;

.field private final synthetic zzd:Landroid/content/BroadcastReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zza:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzd:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zza:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzc:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzkw;->zzd:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzky;->zzf(Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

###### Class com.google.android.gms.internal.measurement.zzkx (com.google.android.gms.internal.measurement.zzkx)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzkx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field private final synthetic zza:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzkx;->zza:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final synthetic call()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    sget v0, Lcom/google/android/gms/internal/measurement/zzky;->zza:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkx;->zza:Ljava/util/concurrent/Callable;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
