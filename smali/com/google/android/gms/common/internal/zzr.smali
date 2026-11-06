###### Class com.google.android.gms.common.internal.zzr (com.google.android.gms.common.internal.zzr)
.class final Lcom/google/android/gms/common/internal/zzr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.12.0"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/zzu;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/zzt;

.field private final zzb:Ljava/util/Map;

.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:Landroid/os/IBinder;

.field private final zzg:Lcom/google/android/gms/common/internal/zzo;

.field private zzh:Landroid/content/ComponentName;

.field private zzi:Lcom/google/android/gms/common/internal/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzt;Lcom/google/android/gms/common/internal/zzo;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:Lcom/google/android/gms/common/internal/zzo;

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    return-void
.end method

.method private final zzu(Ljava/util/List;ILandroid/content/ComponentName;)V
    .registers 8

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzt;->zzg()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_17
    iget v2, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    if-eq v2, p2, :cond_1f

    .line 5
    monitor-exit v1

    return-void

    :catchall_1d
    move-exception p1

    goto :goto_3a

    :cond_1f
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 3
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_1d

    if-ne v2, v3, :cond_4

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-interface {v0, p3}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_4

    .line 3
    :goto_3a
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_1d

    throw p1

    :cond_3c
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzr;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzg()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/zzt;->zzf(Lcom/google/android/gms/common/internal/zzr;)V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzr;->zzf:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:Landroid/content/ComponentName;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    iget v2, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ServiceConnection;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ServiceConnection;

    invoke-direct {v5, v6, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :catchall_4a
    move-exception p1

    goto :goto_89

    .line 5
    :cond_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_52
    if-ge v3, v1, :cond_88

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zzt;->zzg()Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_61
    iget v6, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    if-eq v6, v2, :cond_69

    .line 10
    monitor-exit v5

    return-void

    :catchall_67
    move-exception p1

    goto :goto_86

    :cond_69
    iget-object v6, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    .line 7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 8
    monitor-exit v5
    :try_end_78
    .catchall {:try_start_61 .. :try_end_78} :catchall_67

    if-ne v6, v7, :cond_83

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ServiceConnection;

    invoke-interface {v4, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_83
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 8
    :goto_86
    :try_start_86
    monitor-exit v5
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_67

    throw p1

    :cond_88
    return-void

    .line 5
    :goto_89
    :try_start_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_4a

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzg()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/zzt;->zzf(Lcom/google/android/gms/common/internal/zzr;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzf:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:Landroid/content/ComponentName;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    iget v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ServiceConnection;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ServiceConnection;

    invoke-direct {v5, v6, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :catchall_4c
    move-exception p1

    goto :goto_53

    .line 5
    :cond_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_4c

    .line 6
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/common/internal/zzr;->zzu(Ljava/util/List;ILandroid/content/ComponentName;)V

    return-void

    .line 5
    :goto_53
    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_4c

    throw p1
.end method

.method public final synthetic zza(Ljava/util/List;ILandroid/content/ComponentName;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzr;->zzu(Ljava/util/List;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public final synthetic zzb(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:Lcom/google/android/gms/common/internal/zzo;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzam;->zza(Landroid/content/Context;Lcom/google/android/gms/common/internal/zzo;)Landroid/content/Intent;

    move-result-object v5
    :try_end_c
    .catch Lcom/google/android/gms/common/internal/zzak; {:try_start_0 .. :try_end_c} :catch_72

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/zze;->zza()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzj()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Landroid/content/Context;

    move-result-object v3

    iget-object v9, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:Lcom/google/android/gms/common/internal/zzo;
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_6b

    const/16 v7, 0x1081

    move-object v6, p0

    move-object v4, p1

    move-object v8, p2

    .line 3
    :try_start_24
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    move-result p1

    iput-boolean p1, v6, Lcom/google/android/gms/common/internal/zzr;->zze:Z

    if-eqz p1, :cond_52

    new-instance p1, Lcom/google/android/gms/common/internal/zzp;

    invoke-direct {p1, v9, p0}, Lcom/google/android/gms/common/internal/zzp;-><init>(Lcom/google/android/gms/common/internal/zzo;Lcom/google/android/gms/common/internal/zzr;)V

    iput-object p1, v6, Lcom/google/android/gms/common/internal/zzr;->zzi:Lcom/google/android/gms/common/internal/zzp;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzi()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, v6, Lcom/google/android/gms/common/internal/zzr;->zzi:Lcom/google/android/gms/common/internal/zzp;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzi()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzk()J

    move-result-wide v2

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_4b
    .catchall {:try_start_24 .. :try_end_4b} :catchall_4f

    .line 6
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-object p1

    :catchall_4f
    move-exception v0

    :goto_50
    move-object p1, v0

    goto :goto_6e

    :cond_52
    const/4 p1, 0x2

    :try_start_53
    iput p1, v6, Lcom/google/android/gms/common/internal/zzr;->zzd:I
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_4f

    :try_start_55
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzj()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Landroid/content/Context;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_55 .. :try_end_60} :catch_60
    .catchall {:try_start_55 .. :try_end_60} :catchall_4f

    :catch_60
    :try_start_60
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_4f

    .line 6
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_77

    :catchall_6b
    move-exception v0

    move-object v6, p0

    goto :goto_50

    :goto_6e
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 8
    throw p1

    :catch_72
    move-exception v0

    move-object v6, p0

    move-object p1, v0

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzak;->zza:Lcom/google/android/gms/common/ConnectionResult;

    :goto_77
    return-object p1
.end method

.method public final synthetic zzc(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:Lcom/google/android/gms/common/internal/zzo;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzam;->zza(Landroid/content/Context;Lcom/google/android/gms/common/internal/zzo;)Landroid/content/Intent;

    move-result-object v5
    :try_end_c
    .catch Lcom/google/android/gms/common/internal/zzak; {:try_start_0 .. :try_end_c} :catch_72

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/zze;->zza()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzj()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Landroid/content/Context;

    move-result-object v3

    iget-object v9, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:Lcom/google/android/gms/common/internal/zzo;
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_6b

    const/16 v7, 0x1081

    move-object v6, p0

    move-object v4, p1

    move-object v8, p2

    .line 3
    :try_start_24
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    iput-boolean p1, v6, Lcom/google/android/gms/common/internal/zzr;->zze:Z

    if-eqz p1, :cond_52

    new-instance p1, Lcom/google/android/gms/common/internal/zzp;

    invoke-direct {p1, v9, p0}, Lcom/google/android/gms/common/internal/zzp;-><init>(Lcom/google/android/gms/common/internal/zzo;Lcom/google/android/gms/common/internal/zzr;)V

    iput-object p1, v6, Lcom/google/android/gms/common/internal/zzr;->zzi:Lcom/google/android/gms/common/internal/zzp;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzi()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, v6, Lcom/google/android/gms/common/internal/zzr;->zzi:Lcom/google/android/gms/common/internal/zzp;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzi()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzk()J

    move-result-wide v2

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_4b
    .catchall {:try_start_24 .. :try_end_4b} :catchall_4f

    .line 6
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-object p1

    :catchall_4f
    move-exception v0

    :goto_50
    move-object p1, v0

    goto :goto_6e

    :cond_52
    const/4 p1, 0x2

    :try_start_53
    iput p1, v6, Lcom/google/android/gms/common/internal/zzr;->zzd:I
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_4f

    :try_start_55
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzj()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Landroid/content/Context;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_55 .. :try_end_60} :catch_60
    .catchall {:try_start_55 .. :try_end_60} :catchall_4f

    :catch_60
    :try_start_60
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_4f

    .line 6
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_77

    :catchall_6b
    move-exception v0

    move-object v6, p0

    goto :goto_50

    :goto_6e
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 8
    throw p1

    :catch_72
    move-exception v0

    move-object v6, p0

    move-object p1, v0

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzak;->zza:Lcom/google/android/gms/common/ConnectionResult;

    :goto_77
    return-object p1
.end method

.method public final synthetic zzd(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzt;->zzg()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/internal/zzt;->zzf(Lcom/google/android/gms/common/internal/zzr;)V

    .line 2
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_25

    const/4 p1, 0x2

    const/4 v0, 0x0

    :try_start_d
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzt;->zzj()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzt;->zzh()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {v2, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1f

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzr;->zze:Z

    iput p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    return-void

    :catchall_1f
    move-exception v1

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzr;->zze:Z

    iput p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    .line 4
    throw v1

    :catchall_25
    move-exception p1

    .line 2
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public final synthetic zze(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance p3, Lcom/google/android/gms/common/internal/zzq;

    invoke-direct {p3, p2}, Lcom/google/android/gms/common/internal/zzq;-><init>(Landroid/content/ServiceConnection;)V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic zzf(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic zzg()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzr;->zze:Z

    return v0
.end method

.method public final synthetic zzh()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    return v0
.end method

.method public final synthetic zzi(Landroid/content/ServiceConnection;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic zzj()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final synthetic zzk()Landroid/os/IBinder;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzf:Landroid/os/IBinder;

    return-object v0
.end method

.method public final synthetic zzl()Landroid/content/ComponentName;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final synthetic zzm()Ljava/util/Map;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    return-object v0
.end method

.method public final synthetic zzn()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    return v0
.end method

.method public final synthetic zzo(I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    return-void
.end method

.method public final synthetic zzp(I)V
    .registers 2

    .line 0
    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    return-void
.end method

.method public final synthetic zzq(Landroid/os/IBinder;)V
    .registers 2

    .line 0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzf:Landroid/os/IBinder;

    return-void
.end method

.method public final synthetic zzr(Landroid/content/ComponentName;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:Landroid/content/ComponentName;

    return-void
.end method

.method public final synthetic zzs()Lcom/google/android/gms/common/internal/zzp;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzi:Lcom/google/android/gms/common/internal/zzp;

    return-object v0
.end method

.method public final synthetic zzt(Lcom/google/android/gms/common/internal/zzp;)V
    .registers 2

    .line 0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzi:Lcom/google/android/gms/common/internal/zzp;

    return-void
.end method
