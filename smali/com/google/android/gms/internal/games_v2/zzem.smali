###### Class com.google.android.gms.internal.games_v2.zzem (com.google.android.gms.internal.games_v2.zzem)
.class final synthetic Lcom/google/android/gms/internal/games_v2/zzem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzem;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzem;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzem;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzem;->zza:Lcom/google/android/gms/internal/games_v2/zzem;

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
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/zzao;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/zzao;->zzh()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method
