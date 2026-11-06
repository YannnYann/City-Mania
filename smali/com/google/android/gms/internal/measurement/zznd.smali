###### Class com.google.android.gms.internal.measurement.zznd (com.google.android.gms.internal.measurement.zznd)
.class public final Lcom/google/android/gms/internal/measurement/zznd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@23.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zznd;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzmw;

.field private final zzc:Lcom/google/android/gms/internal/measurement/zzmq;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznd;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmw;->zzb()Lcom/google/android/gms/internal/measurement/zzmw;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmq;->zzi()Lcom/google/android/gms/internal/measurement/zzmq;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zznd;-><init>(Lcom/google/android/gms/internal/measurement/zzmw;Lcom/google/android/gms/internal/measurement/zzmq;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznd;->zza:Lcom/google/android/gms/internal/measurement/zznd;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzmw;Lcom/google/android/gms/internal/measurement/zzmq;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmw;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zznd;->zzb:Lcom/google/android/gms/internal/measurement/zzmw;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zznd;->zzc:Lcom/google/android/gms/internal/measurement/zzmq;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zznd;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznd;->zza:Lcom/google/android/gms/internal/measurement/zznd;

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/zzacv;Z)Lcom/google/android/gms/internal/measurement/zznd;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzr()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_66

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzr()I

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzD(I)I

    move-result v0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzadf;->zza()Lcom/google/android/gms/internal/measurement/zzadf;

    move-result-object v1

    .line 7
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/measurement/zzmq;->zzh(Lcom/google/android/gms/internal/measurement/zzacv;Lcom/google/android/gms/internal/measurement/zzadf;)Lcom/google/android/gms/internal/measurement/zzmq;

    move-result-object v1

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzE(I)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmu;->zza()Lcom/google/android/gms/internal/measurement/zzmu;

    move-result-object v0

    if-eqz p1, :cond_47

    .line 10
    :try_start_23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzp()I

    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzD(I)I

    move-result p1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zznb;->zza:Lcom/google/android/gms/internal/measurement/zznb;

    .line 12
    invoke-virtual {v0, p0, v2}, Lcom/google/android/gms/internal/measurement/zzmu;->zzc(Lcom/google/android/gms/internal/measurement/zzacv;Lcom/google/android/gms/internal/measurement/zzmt;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzF()I

    move-result v3

    if-nez v3, :cond_3f

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzacv;->zzE(I)V

    goto :goto_54

    :catchall_3d
    move-exception p0

    goto :goto_5d

    .line 12
    :cond_3f
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzaeh;

    const-string p1, "Unexpected bytes remaining after FlagsBlob parsing."

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacv;->zzo()[B

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/measurement/zznc;->zza:Lcom/google/android/gms/internal/measurement/zznc;

    .line 16
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzmu;->zzb([BLcom/google/android/gms/internal/measurement/zzmt;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzmw;
    :try_end_54
    .catchall {:try_start_23 .. :try_end_54} :catchall_3d

    .line 17
    :goto_54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmu;->close()V

    new-instance p0, Lcom/google/android/gms/internal/measurement/zznd;

    .line 18
    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/measurement/zznd;-><init>(Lcom/google/android/gms/internal/measurement/zzmw;Lcom/google/android/gms/internal/measurement/zzmq;)V

    return-object p0

    .line 9
    :goto_5d
    :try_start_5d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmu;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_65
    throw p0

    .line 1
    :cond_66
    new-instance p0, Lcom/google/android/gms/internal/measurement/zzaeh;

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x2c

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unsupported version: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Current version is: 1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaeh;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zzc()Lcom/google/android/gms/internal/measurement/zzmw;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznd;->zzc:Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmq;->zze()I

    move-result v1

    if-lez v1, :cond_b0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zznd;->zzb:Lcom/google/android/gms/internal/measurement/zzmw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmq;->zzf()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto/16 :goto_ab

    .line 4
    :cond_1a
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzmi;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmi;->zzq()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    if-eqz v4, :cond_a5

    if-eqz v5, :cond_94

    const/4 v4, 0x1

    if-eq v5, v4, :cond_84

    const/4 v4, 0x2

    if-eq v5, v4, :cond_74

    const/4 v4, 0x3

    if-eq v5, v4, :cond_68

    const/4 v4, 0x4

    if-ne v5, v4, :cond_54

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmi;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmi;->zzf()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzacr;->zzm()[B

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_22

    .line 13
    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmi;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not serialize Flag for override: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_68
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmi;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmi;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_22

    .line 9
    :cond_74
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmi;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmi;->zzd()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_22

    .line 10
    :cond_84
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmi;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmi;->zzc()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_22

    .line 11
    :cond_94
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmi;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzmi;->zzb()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto/16 :goto_22

    :cond_a5
    const/4 v0, 0x0

    .line 6
    throw v0

    .line 13
    :cond_a7
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->buildKeepingLast()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 14
    :goto_ab
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmw;->zza(Lcom/google/android/gms/internal/measurement/zzmw;Lcom/google/common/collect/ImmutableMap;)Lcom/google/android/gms/internal/measurement/zzmw;

    move-result-object v0

    return-object v0

    .line 6
    :cond_b0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznd;->zzb:Lcom/google/android/gms/internal/measurement/zzmw;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznd;->zzc:Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmq;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznd;->zzc:Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmq;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznd;->zzc:Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmq;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/measurement/zzacr;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznd;->zzc:Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmq;->zzb()Lcom/google/android/gms/internal/measurement/zzacr;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Ljava/util/Map;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznd;->zzc:Lcom/google/android/gms/internal/measurement/zzmq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmq;->zze()I

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmq;->zzf()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznd;->zzb:Lcom/google/android/gms/internal/measurement/zzmw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmw;->zze()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznd;->zzc:Lcom/google/android/gms/internal/measurement/zzmq;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmq;->zzi()Lcom/google/android/gms/internal/measurement/zzmq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzadu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
