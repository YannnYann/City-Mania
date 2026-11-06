###### Class com.google.android.play.core.hsdp.service.zzar (com.google.android.play.core.hsdp.service.zzar)
.class public final Lcom/google/android/play/core/hsdp/service/zzar;
.super Lcom/google/android/play/core/hsdp/service/zzas;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field public final synthetic zza:Landroid/app/Activity;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Ljava/util/Map;

.field public final synthetic zze:Lcom/google/android/play/core/hsdp/service/zzat;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/hsdp/service/zzat;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7

    .line 1
    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzar;->zza:Landroid/app/Activity;

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzar;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/hsdp/service/zzar;->zzc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/play/core/hsdp/service/zzar;->zzd:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzar;->zze:Lcom/google/android/play/core/hsdp/service/zzat;

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

.method public final onDismissed(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzaq;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/hsdp/service/zzaq;-><init>(Lcom/google/android/play/core/hsdp/service/zzar;)V

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzar;->zza:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/play/core/hsdp/service/zzas;->onDismissed(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onError(Landroid/os/Bundle;)V
    .registers 8

    .line 1
    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzar;->zza:Landroid/app/Activity;

    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzao;

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzar;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/play/core/hsdp/service/zzar;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/play/core/hsdp/service/zzar;->zzd:Ljava/util/Map;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/core/hsdp/service/zzao;-><init>(Lcom/google/android/play/core/hsdp/service/zzar;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/play/core/hsdp/service/zzas;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onShown(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzap;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/hsdp/service/zzap;-><init>(Lcom/google/android/play/core/hsdp/service/zzar;)V

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzar;->zza:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/play/core/hsdp/service/zzas;->onShown(Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzao (com.google.android.play.core.hsdp.service.zzao)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzao;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzar;

.field public final synthetic zzb:Landroid/app/Activity;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Ljava/lang/String;

.field public final synthetic zze:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzar;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzao;->zza:Lcom/google/android/play/core/hsdp/service/zzar;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzao;->zzb:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzao;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzao;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/hsdp/service/zzao;->zze:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzao;->zza:Lcom/google/android/play/core/hsdp/service/zzar;

    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzar;->zze:Lcom/google/android/play/core/hsdp/service/zzat;

    invoke-virtual {v0}, Lcom/google/android/play/core/hsdp/service/zzat;->zza()V

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzao;->zzc:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzao;->zzd:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzao;->zzb:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzao;->zze:Ljava/util/Map;

    .line 2
    invoke-static {v0, v1, v3}, Lcom/google/android/play/core/hsdp/service/zzq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzap (com.google.android.play.core.hsdp.service.zzap)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzap;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzar;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzap;->zza:Lcom/google/android/play/core/hsdp/service/zzar;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzap;->zza:Lcom/google/android/play/core/hsdp/service/zzar;

    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzar;->zze:Lcom/google/android/play/core/hsdp/service/zzat;

    invoke-virtual {v0}, Lcom/google/android/play/core/hsdp/service/zzat;->zza()V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzaq (com.google.android.play.core.hsdp.service.zzaq)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzaq;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzar;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzaq;->zza:Lcom/google/android/play/core/hsdp/service/zzar;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzaq;->zza:Lcom/google/android/play/core/hsdp/service/zzar;

    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzar;->zze:Lcom/google/android/play/core/hsdp/service/zzat;

    invoke-virtual {v0}, Lcom/google/android/play/core/hsdp/service/zzat;->zza()V

    return-void
.end method
