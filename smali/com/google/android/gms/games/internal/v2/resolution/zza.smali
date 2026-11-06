###### Class com.google.android.gms.games.internal.v2.resolution.zza (com.google.android.gms.games.internal.v2.resolution.zza)
.class public final Lcom/google/android/gms/games/internal/v2/resolution/zza;
.super Landroid/os/ResultReceiver;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"


# instance fields
.field public final zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzgc;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzgc;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/v2/resolution/zza;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    if-nez p2, :cond_11

    .line 2
    new-instance p2, Landroid/content/Intent;

    .line 3
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    goto :goto_20

    .line 7
    :cond_11
    const-string v0, "resultData"

    .line 4
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    if-nez p2, :cond_20

    new-instance p2, Landroid/content/Intent;

    .line 5
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    :cond_20
    :goto_20
    if-eqz p1, :cond_27

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/games/internal/v2/resolution/zzc;->zza(Landroid/content/Intent;)Lcom/google/android/gms/games/internal/v2/resolution/zzc;

    move-result-object p1

    goto :goto_2b

    .line 7
    :cond_27
    invoke-static {p2}, Lcom/google/android/gms/games/internal/v2/resolution/zzc;->zzb(Landroid/content/Intent;)Lcom/google/android/gms/games/internal/v2/resolution/zzc;

    move-result-object p1

    .line 6
    :goto_2b
    iget-object p2, p0, Lcom/google/android/gms/games/internal/v2/resolution/zza;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza()Lcom/google/android/gms/tasks/Task;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/v2/resolution/zza;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
