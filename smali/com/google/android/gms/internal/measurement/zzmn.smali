###### Class com.google.android.gms.internal.measurement.zzmn (com.google.android.gms.internal.measurement.zzmn)
.class public final Lcom/google/android/gms/internal/measurement/zzmn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzkk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzkk;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmn;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    return-void
.end method

.method private static zzf(Lcom/google/android/gms/tasks/Task;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzml;->zza:Lcom/google/android/gms/internal/measurement/zzml;

    .line 2
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 3
    const-class v2, Lcom/google/android/gms/common/api/ApiException;

    invoke-static {p0, v2, v0, v1}, Lcom/google/common/util/concurrent/Futures;->catchingAsync(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const-string p2, ""

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmn;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Lcom/google/android/gms/internal/measurement/zzmn;)V

    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzmn;->zzf(Lcom/google/android/gms/tasks/Task;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmn;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzc(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzmn;->zzf(Lcom/google/android/gms/tasks/Task;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzme;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmn;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzd(Lcom/google/android/gms/internal/measurement/zzme;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzmn;->zzf(Lcom/google/android/gms/tasks/Task;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmn;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkk;->zze()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzmn;->zzf(Lcom/google/android/gms/tasks/Task;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/measurement/zzpm;)Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmn;->zza:Lcom/google/android/gms/internal/measurement/zzkk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkk;->zzf(Lcom/google/android/gms/internal/measurement/zzpm;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzmn;->zzf(Lcom/google/android/gms/tasks/Task;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzmm (com.google.android.gms.internal.measurement.zzmm)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzmm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzmn;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 15

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjh;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmg;->zzh()Lcom/google/android/gms/internal/measurement/zzmf;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzjh;->zza:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzmf;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzmf;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzjh;->zzc:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzmf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzmf;

    iget-boolean v2, p1, Lcom/google/android/gms/internal/measurement/zzjh;->zzf:Z

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzmf;->zzf(Z)Lcom/google/android/gms/internal/measurement/zzmf;

    iget-wide v2, p1, Lcom/google/android/gms/internal/measurement/zzjh;->zzg:J

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzmf;->zzg(J)Lcom/google/android/gms/internal/measurement/zzmf;

    .line 7
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzjh;->zzb:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    array-length v4, v2

    .line 8
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzacr;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzmf;->zzb(Lcom/google/android/gms/internal/measurement/zzacr;)Lcom/google/android/gms/internal/measurement/zzmf;

    .line 10
    :cond_2c
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzjh;->zzd:[Lcom/google/android/gms/internal/measurement/zzjf;

    array-length v2, p1

    move v4, v3

    :goto_30
    if-ge v4, v2, :cond_ff

    aget-object v5, p1, v4

    .line 11
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzjf;->zzb:[Lcom/google/android/gms/internal/measurement/zzjo;

    array-length v7, v6

    move v8, v3

    :goto_38
    if-ge v8, v7, :cond_ed

    aget-object v9, v6, v8

    .line 12
    iget v10, v9, Lcom/google/android/gms/internal/measurement/zzjo;->zzg:I

    if-eq v10, v0, :cond_d1

    const/4 v11, 0x2

    if-eq v10, v11, :cond_ba

    const/4 v11, 0x3

    if-eq v10, v11, :cond_a3

    const/4 v11, 0x4

    if-eq v10, v11, :cond_8c

    const/4 v11, 0x5

    if-ne v10, v11, :cond_6b

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->zzh()Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v10

    iget-object v11, v9, Lcom/google/android/gms/internal/measurement/zzjo;->zza:Ljava/lang/String;

    .line 14
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzmh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzmh;

    .line 15
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjo;->zze()[B

    move-result-object v9

    sget-object v11, Lcom/google/android/gms/internal/measurement/zzacr;->zza:Lcom/google/android/gms/internal/measurement/zzacr;

    .line 16
    array-length v11, v9

    invoke-static {v9, v3, v11}, Lcom/google/android/gms/internal/measurement/zzacr;->zzj([BII)Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v9

    .line 15
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/measurement/zzmh;->zzf(Lcom/google/android/gms/internal/measurement/zzacr;)Lcom/google/android/gms/internal/measurement/zzmh;

    .line 17
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbd()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzmi;

    goto/16 :goto_e7

    .line 25
    :cond_6b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x18

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unrecognized flag type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_8c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->zzh()Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v10

    iget-object v11, v9, Lcom/google/android/gms/internal/measurement/zzjo;->zza:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzmh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzmh;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjo;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/measurement/zzmh;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzmh;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbd()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzmi;

    goto :goto_e7

    .line 19
    :cond_a3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->zzh()Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v10

    iget-object v11, v9, Lcom/google/android/gms/internal/measurement/zzjo;->zza:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzmh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzmh;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjo;->zzc()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzmh;->zzd(D)Lcom/google/android/gms/internal/measurement/zzmh;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbd()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzmi;

    goto :goto_e7

    .line 20
    :cond_ba
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->zzh()Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v10

    iget-object v11, v9, Lcom/google/android/gms/internal/measurement/zzjo;->zza:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzmh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzmh;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjo;->zzb()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/measurement/zzmh;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzmh;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbd()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzmi;

    goto :goto_e7

    .line 21
    :cond_d1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmi;->zzh()Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v10

    iget-object v11, v9, Lcom/google/android/gms/internal/measurement/zzjo;->zza:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzmh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzmh;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjo;->zza()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzmh;->zzb(J)Lcom/google/android/gms/internal/measurement/zzmh;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbd()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzmi;

    .line 22
    :goto_e7
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/measurement/zzmf;->zzd(Lcom/google/android/gms/internal/measurement/zzmi;)Lcom/google/android/gms/internal/measurement/zzmf;

    add-int/2addr v8, v0

    goto/16 :goto_38

    .line 23
    :cond_ed
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzjf;->zzc:[Ljava/lang/String;

    if-eqz v5, :cond_fc

    move v6, v3

    :goto_f2
    array-length v7, v5

    if-ge v6, v7, :cond_fc

    .line 24
    aget-object v7, v5, v6

    .line 25
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/measurement/zzmf;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzmf;

    add-int/2addr v6, v0

    goto :goto_f2

    :cond_fc
    add-int/2addr v4, v0

    goto/16 :goto_30

    .line 27
    :cond_ff
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbd()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmg;

    return-object p1
.end method
