###### Class com.google.android.gms.common.internal.zzt (com.google.android.gms.common.internal.zzt)
.class final Lcom/google/android/gms/common/internal/zzt;
.super Lcom/google/android/gms/common/internal/GmsClientSupervisor;
.source "com.google.android.gms:play-services-basement@@18.12.0"


# instance fields
.field private final zzb:Ljava/util/HashMap;

.field private final zzc:Landroid/content/Context;

.field private volatile zzd:Landroid/os/Handler;

.field private final zze:Lcom/google/android/gms/common/internal/zzs;

.field private final zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

.field private final zzg:J

.field private final zzh:J

.field private volatile zzi:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzt;->zzb:Ljava/util/HashMap;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/internal/zzs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/zzs;-><init>(Lcom/google/android/gms/common/internal/zzt;[B)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzt;->zze:Lcom/google/android/gms/common/internal/zzs;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzt;->zzc:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/common/zzh;

    .line 4
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/common/zzh;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzt;->zzd:Landroid/os/Handler;

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzt;->zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/google/android/gms/common/internal/zzt;->zzg:J

    const-wide/32 p1, 0x493e0

    iput-wide p1, p0, Lcom/google/android/gms/common/internal/zzt;->zzh:J

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzt;->zzi:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/internal/zzo;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 11

    .line 1
    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzt;->zzb:Ljava/util/HashMap;

    const-string v1, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    monitor-enter v0

    .line 2
    :try_start_a
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/zzr;

    if-nez p4, :cond_18

    iget-object p4, p0, Lcom/google/android/gms/common/internal/zzt;->zzi:Ljava/util/concurrent/Executor;

    goto :goto_18

    :catchall_15
    move-exception p1

    goto/16 :goto_ab

    :cond_18
    :goto_18
    const/16 v3, 0x21

    if-nez v2, :cond_3b

    new-instance v2, Lcom/google/android/gms/common/internal/zzr;

    .line 3
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/internal/zzr;-><init>(Lcom/google/android/gms/common/internal/zzt;Lcom/google/android/gms/common/internal/zzo;)V

    .line 4
    invoke-virtual {v2, p2, p2, p3}, Lcom/google/android/gms/common/internal/zzr;->zze(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzo;->zze()Landroid/os/UserHandle;

    move-result-object p2

    if-eqz p2, :cond_33

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_33

    .line 5
    invoke-virtual {v2, p3, p2}, Lcom/google/android/gms/common/internal/zzr;->zzc(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p2

    goto :goto_37

    .line 6
    :cond_33
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/common/internal/zzr;->zzb(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p2

    .line 7
    :goto_37
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 6
    :cond_3b
    iget-object v4, p0, Lcom/google/android/gms/common/internal/zzt;->zzd:Landroid/os/Handler;

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v4, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 9
    invoke-virtual {v2, p2}, Lcom/google/android/gms/common/internal/zzr;->zzi(Landroid/content/ServiceConnection;)Z

    move-result v4

    if-nez v4, :cond_8c

    .line 11
    invoke-virtual {v2, p2, p2, p3}, Lcom/google/android/gms/common/internal/zzr;->zze(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzr;->zzh()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v4, :cond_6c

    const/4 p2, 0x2

    if-eq v1, p2, :cond_57

    :goto_55
    move-object p2, v5

    goto :goto_78

    .line 14
    :cond_57
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzo;->zze()Landroid/os/UserHandle;

    move-result-object p1

    if-eqz p1, :cond_67

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_67

    .line 12
    invoke-virtual {v2, p3, p1}, Lcom/google/android/gms/common/internal/zzr;->zzc(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    :goto_65
    move-object p2, p1

    goto :goto_78

    .line 13
    :cond_67
    invoke-virtual {v2, p3, p4}, Lcom/google/android/gms/common/internal/zzr;->zzb(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    goto :goto_65

    .line 11
    :cond_6c
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzr;->zzl()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzr;->zzk()Landroid/os/IBinder;

    move-result-object p3

    .line 14
    invoke-interface {p2, p1, p3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_55

    .line 7
    :goto_78
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzr;->zzg()Z

    move-result p1

    if-eqz p1, :cond_82

    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    .line 15
    monitor-exit v0

    return-object p1

    :cond_82
    if-nez p2, :cond_8a

    new-instance p2, Lcom/google/android/gms/common/ConnectionResult;

    const/4 p1, -0x1

    .line 16
    invoke-direct {p2, p1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    :cond_8a
    monitor-exit v0

    return-object p2

    .line 9
    :cond_8c
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x51

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 17
    :goto_ab
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_a .. :try_end_ac} :catchall_15

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/common/internal/zzo;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 8

    .line 1
    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzt;->zzb:Ljava/util/HashMap;

    const-string v1, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    const-string v2, "Nonexistent connection status for service config: "

    monitor-enter v0

    .line 2
    :try_start_c
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/zzr;

    if-eqz v3, :cond_55

    .line 4
    invoke-virtual {v3, p2}, Lcom/google/android/gms/common/internal/zzr;->zzi(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 6
    invoke-virtual {v3, p2, p3}, Lcom/google/android/gms/common/internal/zzr;->zzf(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzr;->zzj()Z

    move-result p2

    if-eqz p2, :cond_34

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzt;->zzd:Landroid/os/Handler;

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzt;->zzd:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/google/android/gms/common/internal/zzt;->zzg:J

    .line 9
    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_34

    :catchall_32
    move-exception p1

    goto :goto_74

    .line 10
    :cond_34
    :goto_34
    monitor-exit v0

    return-void

    .line 4
    :cond_36
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2
    :cond_55
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :goto_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_c .. :try_end_75} :catchall_32

    throw p1
.end method

.method public final zzd(Landroid/os/Looper;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzt;->zzb:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/google/android/gms/internal/common/zzh;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzt;->zze:Lcom/google/android/gms/common/internal/zzs;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/common/zzh;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzt;->zzd:Landroid/os/Handler;

    .line 2
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public final zze(Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzt;->zzb:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzt;->zzi:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final synthetic zzf(Lcom/google/android/gms/common/internal/zzr;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzr;->zzs()Lcom/google/android/gms/common/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzt;->zzd:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzr;->zzs()Lcom/google/android/gms/common/internal/zzp;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/zzr;->zzt(Lcom/google/android/gms/common/internal/zzp;)V

    :cond_14
    return-void
.end method

.method public final synthetic zzg()Ljava/util/HashMap;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzt;->zzb:Ljava/util/HashMap;

    return-object v0
.end method

.method public final synthetic zzh()Landroid/content/Context;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzt;->zzc:Landroid/content/Context;

    return-object v0
.end method

.method public final synthetic zzi()Landroid/os/Handler;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzt;->zzd:Landroid/os/Handler;

    return-object v0
.end method

.method public final synthetic zzj()Lcom/google/android/gms/common/stats/ConnectionTracker;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzt;->zzf:Lcom/google/android/gms/common/stats/ConnectionTracker;

    return-object v0
.end method

.method public final synthetic zzk()J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/common/internal/zzt;->zzh:J

    return-wide v0
.end method
