###### Class com.google.android.play.core.hsdp.service.zzan (com.google.android.play.core.hsdp.service.zzan)
.class public final Lcom/google/android/play/core/hsdp/service/zzan;
.super Lcom/google/android/play/core/hsdp/service/zzas;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field public final synthetic zza:Landroid/app/Activity;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/hsdp/service/zzat;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7

    .line 1
    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zza:Landroid/app/Activity;

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zzc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zzd:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/hsdp/service/zzas;-><init>(Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;)V

    return-void
.end method


# virtual methods
.method public final onAffordanceEnded()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "HPOA service should not be called in service based HSDP."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onAffordanceStarted()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "HPOA service should not be called in service based HSDP."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onDeepLinkStarted()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "HSDP Activity should not be started in service based HSDP."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onError(Landroid/os/Bundle;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zza:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzam;

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zzd:Ljava/util/Map;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/play/core/hsdp/service/zzam;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/play/core/hsdp/service/zzas;->onError(Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzam (com.google.android.play.core.hsdp.service.zzam)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzam;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/app/Activity;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zza:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zzd:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zzb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zza:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zzd:Ljava/util/Map;

    invoke-static {v0, v1, v3}, Lcom/google/android/play/core/hsdp/service/zzq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
