###### Class com.google.android.gms.games.internal.zzaq (com.google.android.gms.games.internal.zzaq)
.class public final Lcom/google/android/gms/games/internal/zzaq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# static fields
.field public static final zza:Lcom/google/android/gms/games/internal/zzaq;


# instance fields
.field public volatile zzb:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/games/internal/zzaq;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/zzaq;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/zzaq;->zza:Lcom/google/android/gms/games/internal/zzaq;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zzb:Z

    return-void
.end method

.method public static zza()Lcom/google/android/gms/games/internal/zzaq;
    .registers 1

    .line 0
    sget-object v0, Lcom/google/android/gms/games/internal/zzaq;->zza:Lcom/google/android/gms/games/internal/zzaq;

    return-object v0
.end method


# virtual methods
.method public final zzb()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zzb:Z

    return v0
.end method

.method public final zzc()V
    .registers 2

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzaq;->zzb:Z

    return-void
.end method
