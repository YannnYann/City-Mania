###### Class com.google.android.gms.games.AuthenticationResult (com.google.android.gms.games.AuthenticationResult)
.class public final Lcom/google/android/gms/games/AuthenticationResult;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# annotations
.annotation build Lcom/google/android/gms/internal/games_v2/zzad;
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/games/AuthenticationResult;

.field public static final zzb:Lcom/google/android/gms/games/AuthenticationResult;


# instance fields
.field public final zzc:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/google/android/gms/games/AuthenticationResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/AuthenticationResult;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/games/AuthenticationResult;->zza:Lcom/google/android/gms/games/AuthenticationResult;

    new-instance v0, Lcom/google/android/gms/games/AuthenticationResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/AuthenticationResult;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/games/AuthenticationResult;->zzb:Lcom/google/android/gms/games/AuthenticationResult;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/games/AuthenticationResult;->zzc:Z

    return-void
.end method


# virtual methods
.method public isAuthenticated()Z
    .registers 2
    .annotation build Lcom/google/android/gms/internal/games_v2/zzad;
    .end annotation

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/games/AuthenticationResult;->zzc:Z

    return v0
.end method
