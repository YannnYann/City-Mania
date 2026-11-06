###### Class com.google.android.gms.internal.measurement.zzyf (com.google.android.gms.internal.measurement.zzyf)
.class public abstract Lcom/google/android/gms/internal/measurement/zzyf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# instance fields
.field private final zza:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public abstract zza()Ljava/lang/Object;
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzyd;Lcom/google/android/gms/internal/measurement/zzzj;)Ljava/lang/Object;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    return-object v1

    .line 2
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzyf;->zza()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_40

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzzj;->zza()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-ge v2, v0, :cond_3f

    .line 5
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzxx;->zzf:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzb(I)Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 6
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzzj;->zzc(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/zzyj;

    if-nez v5, :cond_30

    goto :goto_3c

    :cond_30
    if-nez v3, :cond_37

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzye;

    .line 7
    invoke-direct {v3, p0, p1}, Lcom/google/android/gms/internal/measurement/zzye;-><init>(Lcom/google/android/gms/internal/measurement/zzyf;Lcom/google/android/gms/internal/measurement/zzyd;)V

    .line 8
    :cond_37
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzyj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzyj;->zza()V

    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_3f
    return-object v1

    :cond_40
    return-object v0
.end method

.method public final synthetic zzc()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzyf;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
