###### Class com.google.android.gms.games.internal.zzw (com.google.android.gms.games.internal.zzw)
.class public final Lcom/google/android/gms/games/internal/zzw;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# instance fields
.field public final zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzw;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzs(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p2, p0, Lcom/google/android/gms/games/internal/zzw;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    sget p3, Lcom/google/android/gms/games/internal/zzai;->$r8$clinit:I

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :cond_12
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzw;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/games/gamessignin/AuthResponse;

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/games/gamessignin/AuthScope;->zza(Ljava/util/List;)Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object p3

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/games/gamessignin/AuthResponse;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method
