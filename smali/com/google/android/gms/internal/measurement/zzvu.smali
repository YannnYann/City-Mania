###### Class com.google.android.gms.internal.measurement.zzvu (com.google.android.gms.internal.measurement.zzvu)
.class public final Lcom/google/android/gms/internal/measurement/zzvu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field private static final zza:Ljava/util/WeakHashMap;

.field private static final zzb:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvu;->zza:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzvu;->zzb:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static zza(Ljava/lang/Throwable;)V
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvu;->zzb:Ljava/util/WeakHashMap;

    monitor-enter v0

    move-object v1, p0

    :goto_4
    if-eqz v1, :cond_14

    .line 2
    :try_start_6
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_4

    :catchall_11
    move-exception p0

    goto/16 :goto_e1

    :cond_14
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v3

    .line 4
    :goto_1b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_11

    if-eqz v1, :cond_27

    goto/16 :goto_de

    :cond_27
    const-string v0, "Trace uncaught exception is disabled."

    .line 6
    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzvu;->zza:Ljava/util/WeakHashMap;

    .line 7
    monitor-enter v1

    move-object v0, p0

    :goto_30
    if-eqz v0, :cond_40

    .line 8
    :try_start_32
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_30

    :catchall_3d
    move-exception p0

    goto/16 :goto_df

    :cond_40
    if-nez v0, :cond_45

    .line 13
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_55

    .line 10
    :cond_45
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzww;

    .line 11
    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_32 .. :try_end_4f} :catchall_3d

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzxc;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzxc;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/measurement/zzww;)V

    move-object v0, v1

    :goto_55
    if-nez v0, :cond_de

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzvy;->zzd()Lcom/google/android/gms/internal/measurement/zzwq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzwq;->zzb:Lcom/google/android/gms/internal/measurement/zzws;

    if-eqz v0, :cond_de

    new-instance v1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_64
    if-eqz v0, :cond_6e

    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzws;->zzb()Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object v0

    goto :goto_64

    :cond_6e
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzvo;-><init>()V

    .line 17
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzws;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzws;->zzc()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzwv;->zzc(Ljava/util/UUID;)Lcom/google/android/gms/internal/measurement/zzwv;

    .line 18
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzws;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzws;->zzk()J

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzwv;->zzd(J)Lcom/google/android/gms/internal/measurement/zzwv;

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 21
    invoke-static {v1}, Lcom/google/common/collect/Lists;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzws;

    .line 22
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzws;->zze()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 23
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzws;->zzh()Lcom/google/android/gms/internal/measurement/zzwl;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_a6

    :cond_c1
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzvu;->zza:Ljava/util/WeakHashMap;

    .line 24
    monitor-enter v1

    .line 25
    :try_start_c4
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzwv;->zza(Lcom/google/common/collect/ImmutableList;)Lcom/google/android/gms/internal/measurement/zzwv;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzwv;->zzb(Lcom/google/common/collect/ImmutableList;)Lcom/google/android/gms/internal/measurement/zzwv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzwv;->zze()Lcom/google/android/gms/internal/measurement/zzww;

    move-result-object v0

    .line 26
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    monitor-exit v1

    return-void

    :catchall_db
    move-exception p0

    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_c4 .. :try_end_dd} :catchall_db

    throw p0

    :cond_de
    :goto_de
    return-void

    .line 12
    :goto_df
    :try_start_df
    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_3d

    throw p0

    .line 5
    :goto_e1
    :try_start_e1
    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_11

    throw p0
.end method
