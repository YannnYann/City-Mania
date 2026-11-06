###### Class com.google.android.gms.games.internal.zzj (com.google.android.gms.games.internal.zzj)
.class public final Lcom/google/android/gms/games/internal/zzj;
.super Lcom/google/android/gms/internal/games_v2/zzac;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/games/internal/zzai;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/zzai;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzj;->zza:Lcom/google/android/gms/games/internal/zzai;

    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzac;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/games_v2/zzab;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzu;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzj;->zza:Lcom/google/android/gms/games/internal/zzai;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/zzu;-><init>(Lcom/google/android/gms/games/internal/zzai;)V

    return-object v0
.end method
