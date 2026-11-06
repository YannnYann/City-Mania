###### Class com.google.android.gms.games.internal.zzh (com.google.android.gms.games.internal.zzh)
.class public final Lcom/google/android/gms/games/internal/zzh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# instance fields
.field public zza:Z

.field public zzb:Z

.field public zzc:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzh;->zza:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzh;->zzb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzh;->zzc:Z

    return-void
.end method

.method public synthetic constructor <init>([B)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzh;->zza:Z

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzh;->zzb:Z

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzh;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/games/internal/zzh;
    .registers 2

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzh;->zza:Z

    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/games/internal/zzh;
    .registers 2

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzh;->zzb:Z

    return-object p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/games/internal/zzh;
    .registers 2

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzh;->zzc:Z

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/games/internal/zzi;
    .registers 3

    .line 0
    new-instance v0, Lcom/google/android/gms/games/internal/zzi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/internal/zzi;-><init>(Lcom/google/android/gms/games/internal/zzh;[B)V

    return-object v0
.end method

.method public final synthetic zze()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/zzh;->zza:Z

    return v0
.end method

.method public final synthetic zzf()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/zzh;->zzb:Z

    return v0
.end method

.method public final synthetic zzg()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/zzh;->zzc:Z

    return v0
.end method
