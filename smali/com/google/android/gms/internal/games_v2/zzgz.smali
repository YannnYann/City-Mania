###### Class com.google.android.gms.internal.games_v2.zzgz (com.google.android.gms.internal.games_v2.zzgz)
.class final Lcom/google/android/gms/internal/games_v2/zzgz;
.super Lcom/google/android/gms/internal/games_v2/zzgu;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/games_v2/zzgt;

.field private final transient zzb:Lcom/google/android/gms/internal/games_v2/zzgq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/games_v2/zzgt;Lcom/google/android/gms/internal/games_v2/zzgq;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzgu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzgz;->zza:Lcom/google/android/gms/internal/games_v2/zzgt;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzgz;->zzb:Lcom/google/android/gms/internal/games_v2/zzgq;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgz;->zza:Lcom/google/android/gms/internal/games_v2/zzgt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzgt;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgz;->zzb:Lcom/google/android/gms/internal/games_v2/zzgq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgq;->zzk(I)Lcom/google/android/gms/internal/games_v2/zzhe;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgz;->zza:Lcom/google/android/gms/internal/games_v2/zzgt;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/games_v2/zzhd;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgz;->zzb:Lcom/google/android/gms/internal/games_v2/zzgq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgq;->zzk(I)Lcom/google/android/gms/internal/games_v2/zzhe;

    move-result-object v0

    return-object v0
.end method

.method public final zze([Ljava/lang/Object;I)I
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzgz;->zzb:Lcom/google/android/gms/internal/games_v2/zzgq;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/games_v2/zzgm;->zze([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method
