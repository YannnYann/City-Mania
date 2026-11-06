###### Class com.google.android.gms.games.internal.zze (com.google.android.gms.games.internal.zze)
.class public final Lcom/google/android/gms/games/internal/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@22.1.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/games/internal/zzf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/games/internal/zzf;[B)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zze;->zza:Lcom/google/android/gms/games/internal/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zze;->zza:Lcom/google/android/gms/games/internal/zzf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/zzf;->zzg(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zze;->zza:Lcom/google/android/gms/games/internal/zzf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/zzf;->zzf(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zze;->zza:Lcom/google/android/gms/games/internal/zzf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/zzf;->zzf(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method
