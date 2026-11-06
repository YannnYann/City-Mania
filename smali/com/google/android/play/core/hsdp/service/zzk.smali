###### Class com.google.android.play.core.hsdp.service.zzk (com.google.android.play.core.hsdp.service.zzk)
.class public final Lcom/google/android/play/core/hsdp/service/zzk;
.super Lcom/google/android/play/core/hsdp/service/zzn;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Landroid/os/IBinder;

.field public final synthetic zzd:I

.field public final synthetic zze:I

.field public final synthetic zzf:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;

.field public final synthetic zzg:Ljava/util/Map;

.field public final synthetic zzh:Lcom/google/android/play/core/hsdp/service/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/hsdp/service/zzp;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;IILcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;)V
    .registers 9

    .line 1
    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzc:Landroid/os/IBinder;

    iput p5, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzd:I

    iput p6, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zze:I

    iput-object p7, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzf:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;

    iput-object p8, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzg:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzh:Lcom/google/android/play/core/hsdp/service/zzp;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/play/core/hsdp/service/zzn;-><init>(Lcom/google/android/play/core/hsdp/service/zzo;)V

    return-void
.end method


# virtual methods
.method public final zzc()V
    .registers 3

    .line 1
    const-string v0, "HpoaClientImpl"

    const-string v1, "HPOA UI attached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzf:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;

    .line 2
    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;->onAffordanceStarted()V

    return-void
.end method

.method public final zzd()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzh:Lcom/google/android/play/core/hsdp/service/zzp;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzg:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/play/core/hsdp/service/zzp;->zzd(Lcom/google/android/play/core/hsdp/service/zzp;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zze()V
    .registers 3

    .line 1
    const-string v0, "HpoaClientImpl"

    const-string v1, "HPOA UI detached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzf:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;

    .line 2
    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;->onAffordanceEnded()V

    return-void
.end method

.method public final zzf(I)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HPOA error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HpoaClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x243e

    const-string v2, "errorMessage"

    if-ne p1, v1, :cond_27

    const-string p1, "HPOA internal error"

    .line 3
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :cond_27
    const/16 v1, 0x243f

    if-ne p1, v1, :cond_31

    .line 8
    const-string p1, "HPOA authentication error"

    .line 4
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :cond_31
    const/16 v1, 0x2440

    if-ne p1, v1, :cond_3b

    const-string p1, "HPOA invalid parameter"

    .line 5
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    :cond_3b
    const-string p1, "HPOA unknown error"

    .line 6
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :goto_40
    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzf:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;->onError(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzh:Lcom/google/android/play/core/hsdp/service/zzp;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/zzp;->zza()V

    return-void
.end method

.method public final zzg()V
    .registers 7

    .line 1
    const-string v0, "HPOA service requests to be disconnected"

    const-string v1, "HpoaClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzh:Lcom/google/android/play/core/hsdp/service/zzp;

    iget-object v2, v0, Lcom/google/android/play/core/hsdp/service/zzp;->zza:Lcom/google/android/play/core/hsdp/service/zzbc;

    if-nez v2, :cond_13

    const-string v0, "HPOA service is not available"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zza:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    .line 3
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "appId"

    .line 4
    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "callerId"

    .line 5
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzj;

    invoke-direct {v1, v0, v4}, Lcom/google/android/play/core/hsdp/service/zzj;-><init>(Lcom/google/android/play/core/hsdp/service/zzp;Landroid/os/Bundle;)V

    .line 6
    invoke-interface {v2, v1}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzh()V
    .registers 3

    .line 1
    const-string v0, "HpoaClientImpl"

    const-string v1, "HPOA session ended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzh:Lcom/google/android/play/core/hsdp/service/zzp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/play/core/hsdp/service/zzp;->zza()V

    return-void
.end method

.method public final zzi()V
    .registers 10

    .line 1
    const-string v0, "HPOA session started"

    const-string v1, "HpoaClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzh:Lcom/google/android/play/core/hsdp/service/zzp;

    iget-object v2, v0, Lcom/google/android/play/core/hsdp/service/zzp;->zza:Lcom/google/android/play/core/hsdp/service/zzbc;

    if-nez v2, :cond_13

    const-string v0, "HPOA service is not available"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget v1, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zze:I

    iget v3, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzd:I

    iget-object v4, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzc:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzb:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zza:Ljava/lang/String;

    new-instance v7, Landroid/os/Bundle;

    .line 3
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "appId"

    .line 4
    invoke-virtual {v7, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "callerId"

    .line 5
    invoke-virtual {v7, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "windowToken"

    .line 6
    invoke-virtual {v7, v5, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v4, "clientWindowWidthPx"

    .line 7
    invoke-virtual {v7, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "clientWindowHeightPx"

    .line 8
    invoke-virtual {v7, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzi;

    invoke-direct {v1, v0, v7}, Lcom/google/android/play/core/hsdp/service/zzi;-><init>(Lcom/google/android/play/core/hsdp/service/zzp;Landroid/os/Bundle;)V

    .line 9
    invoke-interface {v2, v1}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzj()V
    .registers 3

    .line 1
    const-string v0, "HpoaClientImpl"

    const-string v1, "HPOA UI to be added"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final zzk()V
    .registers 3

    .line 1
    const-string v0, "HpoaClientImpl"

    const-string v1, "HPOA UI to be removed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzi (com.google.android.play.core.hsdp.service.zzi)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzi;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzp;

.field public final synthetic zzb:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzp;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzi;->zza:Lcom/google/android/play/core/hsdp/service/zzp;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzi;->zzb:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzi;->zza:Lcom/google/android/play/core/hsdp/service/zzp;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzi;->zzb:Landroid/os/Bundle;

    :try_start_4
    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzp;->zza:Lcom/google/android/play/core/hsdp/service/zzbc;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/protocol/zzc;

    if-nez v0, :cond_11

    return-void

    .line 2
    :cond_11
    invoke-interface {v0, v1}, Lcom/google/android/play/core/hsdp/protocol/zzc;->zze(Landroid/os/Bundle;)V

    return-void

    :catch_15
    move-exception v0

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    .line 3
    throw v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_15

    :goto_19
    const-string v1, "HpoaClientImpl"

    const-string v2, "Failed to call hpoaService.show"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzj (com.google.android.play.core.hsdp.service.zzj)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzj;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzp;

.field public final synthetic zzb:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzp;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzj;->zza:Lcom/google/android/play/core/hsdp/service/zzp;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzj;->zzb:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzj;->zza:Lcom/google/android/play/core/hsdp/service/zzp;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzj;->zzb:Landroid/os/Bundle;

    :try_start_4
    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzp;->zza:Lcom/google/android/play/core/hsdp/service/zzbc;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/protocol/zzc;

    if-nez v0, :cond_11

    return-void

    .line 2
    :cond_11
    invoke-interface {v0, v1}, Lcom/google/android/play/core/hsdp/protocol/zzc;->zzc(Landroid/os/Bundle;)V

    return-void

    :catch_15
    move-exception v0

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    .line 3
    throw v0
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_15

    :goto_19
    const-string v1, "HpoaClientImpl"

    const-string v2, "Failed to call hpoaService.endSession"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
