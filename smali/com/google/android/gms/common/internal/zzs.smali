###### Class com.google.android.gms.common.internal.zzs (com.google.android.gms.common.internal.zzs)
.class final Lcom/google/android/gms/common/internal/zzs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.12.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/zzt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/internal/zzt;[B)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzs;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 12

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "Timeout waiting for ServiceConnection callback "

    const/4 v2, 0x1

    if-eqz v0, :cond_cf

    if-eq v0, v2, :cond_b

    const/4 p1, 0x0

    return p1

    .line 23
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzg()Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 2
    :try_start_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzp;

    .line 3
    iget-object v4, p1, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzg()Ljava/util/HashMap;

    move-result-object v5

    .line 4
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/internal/zzr;

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_c4

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzp;->zzb:Lcom/google/android/gms/common/internal/zzr;

    if-ne v5, p1, :cond_c4

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zzr;->zzh()I

    move-result p1

    const/4 v8, 0x3

    if-ne p1, v8, :cond_c4

    const-string p1, "GmsClientSupervisor"

    .line 6
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zzr;->zzl()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_61

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzo;->zzc()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_61

    :catchall_5f
    move-exception p1

    goto :goto_cd

    :cond_61
    :goto_61
    if-nez p1, :cond_71

    new-instance p1, Landroid/content/ComponentName;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzo;->zzb()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "unknown"

    invoke-direct {p1, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_71
    invoke-virtual {v0, v5}, Lcom/google/android/gms/common/internal/zzt;->zzf(Lcom/google/android/gms/common/internal/zzr;)V

    .line 9
    invoke-virtual {v5, v7}, Lcom/google/android/gms/common/internal/zzr;->zzq(Landroid/os/IBinder;)V

    .line 10
    invoke-virtual {v5, p1}, Lcom/google/android/gms/common/internal/zzr;->zzr(Landroid/content/ComponentName;)V

    const/4 v0, 0x2

    .line 11
    invoke-virtual {v5, v0}, Lcom/google/android/gms/common/internal/zzr;->zzp(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zzr;->zzn()I

    move-result v0

    add-int/2addr v0, v2

    .line 12
    invoke-virtual {v5, v0}, Lcom/google/android/gms/common/internal/zzr;->zzo(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zzr;->zzn()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zzr;->zzm()Ljava/util/Map;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zzr;->zzm()Ljava/util/Map;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ServiceConnection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-direct {v4, v8, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    :cond_c4
    move-object p1, v7

    move-object v5, p1

    .line 16
    :cond_c6
    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_12 .. :try_end_c7} :catchall_5f

    if-eqz v5, :cond_cc

    .line 17
    invoke-virtual {v5, v7, v6, p1}, Lcom/google/android/gms/common/internal/zzr;->zza(Ljava/util/List;ILandroid/content/ComponentName;)V

    :cond_cc
    return v2

    .line 16
    :goto_cd
    :try_start_cd
    monitor-exit v3
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_5f

    throw p1

    .line 1
    :cond_cf
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzg()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 18
    :try_start_d6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzg()Ljava/util/HashMap;

    move-result-object v3

    .line 19
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/zzr;

    if-eqz v3, :cond_101

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzr;->zzj()Z

    move-result v4

    if-eqz v4, :cond_101

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzr;->zzg()Z

    move-result v4

    if-eqz v4, :cond_fa

    const-string v4, "GmsClientSupervisor"

    .line 21
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/internal/zzr;->zzd(Ljava/lang/String;)V

    goto :goto_fa

    :catchall_f8
    move-exception p1

    goto :goto_103

    :cond_fa
    :goto_fa
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzg()Ljava/util/HashMap;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_101
    monitor-exit v1

    return v2

    :goto_103
    monitor-exit v1
    :try_end_104
    .catchall {:try_start_d6 .. :try_end_104} :catchall_f8

    throw p1
.end method
