###### Class com.google.android.play.core.hsdp.service.zzal (com.google.android.play.core.hsdp.service.zzal)
.class public final Lcom/google/android/play/core/hsdp/service/zzal;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic zza:Landroid/app/Activity;

.field public final synthetic zzb:Lcom/google/android/play/core/hsdp/service/zzat;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/hsdp/service/zzat;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzal;->zza:Landroid/app/Activity;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzal;->zzb:Lcom/google/android/play/core/hsdp/service/zzat;

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
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzal;->zza:Landroid/app/Activity;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzal;->zzb:Lcom/google/android/play/core/hsdp/service/zzat;

    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/zzat;->zza()V

    :cond_9
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
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzal;->zza:Landroid/app/Activity;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzal;->zzb:Lcom/google/android/play/core/hsdp/service/zzat;

    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/zzat;->zza()V

    :cond_9
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 0
    return-void
.end method
