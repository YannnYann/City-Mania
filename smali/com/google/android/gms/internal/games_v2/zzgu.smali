###### Class com.google.android.gms.internal.games_v2.zzgu (com.google.android.gms.internal.games_v2.zzgu)
.class public abstract Lcom/google/android/gms/internal/games_v2/zzgu;
.super Lcom/google/android/gms/internal/games_v2/zzgm;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private transient zza:Lcom/google/android/gms/internal/games_v2/zzgq;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzgm;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-eq p1, p0, :cond_20

    if-ne p1, p0, :cond_6

    return v0

    .line 1
    :cond_6
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 2
    check-cast p1, Ljava/util/Set;

    .line 3
    :try_start_d
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1f

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1b} :catch_1f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_1b} :catch_1f

    if-nez p1, :cond_1e

    return v2

    :cond_1e
    return v0

    :catch_1f
    :cond_1f
    return v2

    :cond_20
    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/games_v2/zzhc;->zza(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzgu;->zza()Lcom/google/android/gms/internal/games_v2/zzhd;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza()Lcom/google/android/gms/internal/games_v2/zzhd;
.end method

.method public final zzf()Lcom/google/android/gms/internal/games_v2/zzgq;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgu;->zza:Lcom/google/android/gms/internal/games_v2/zzgq;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzgu;->zzg()Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgu;->zza:Lcom/google/android/gms/internal/games_v2/zzgq;

    :cond_a
    return-object v0
.end method

.method public zzg()Lcom/google/android/gms/internal/games_v2/zzgq;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzgm;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgq;->zzj([Ljava/lang/Object;I)Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object v0

    return-object v0
.end method
