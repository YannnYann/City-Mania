###### Class com.google.android.gms.internal.games_v2.zzgx (com.google.android.gms.internal.games_v2.zzgx)
.class final Lcom/google/android/gms/internal/games_v2/zzgx;
.super Lcom/google/android/gms/internal/games_v2/zzgq;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzgy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/games_v2/zzgy;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzgx;->zza:Lcom/google/android/gms/internal/games_v2/zzgy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzgq;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgx;->zza:Lcom/google/android/gms/internal/games_v2/zzgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgy;->zzi()I

    move-result v1

    const-string v2, "index"

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/games_v2/zzgd;->zza(IILjava/lang/String;)I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgy;->zzh()[Ljava/lang/Object;

    move-result-object v1

    add-int/2addr p1, p1

    .line 2
    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgy;->zzh()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 3
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 4
    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgx;->zza:Lcom/google/android/gms/internal/games_v2/zzgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzgy;->zzi()I

    move-result v0

    return v0
.end method
