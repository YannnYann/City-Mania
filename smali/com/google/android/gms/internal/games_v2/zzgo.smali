###### Class com.google.android.gms.internal.games_v2.zzgo (com.google.android.gms.internal.games_v2.zzgo)
.class final Lcom/google/android/gms/internal/games_v2/zzgo;
.super Lcom/google/android/gms/internal/games_v2/zzgh;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/games_v2/zzgq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/games_v2/zzgq;I)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/games_v2/zzgh;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzgo;->zza:Lcom/google/android/gms/internal/games_v2/zzgq;

    return-void
.end method


# virtual methods
.method public final zza(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgo;->zza:Lcom/google/android/gms/internal/games_v2/zzgq;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
