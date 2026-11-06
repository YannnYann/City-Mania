###### Class com.google.android.gms.internal.games_v2.zzci (com.google.android.gms.internal.games_v2.zzci)
.class final synthetic Lcom/google/android/gms/internal/games_v2/zzci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzci;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzci;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzci;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzci;->zza:Lcom/google/android/gms/internal/games_v2/zzci;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/games/internal/zzai;

    .line 1
    :try_start_4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/zzao;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/zzao;->zzw()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/games/GamesStatusUtils;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method
