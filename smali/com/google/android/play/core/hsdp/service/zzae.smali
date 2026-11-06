###### Class com.google.android.play.core.hsdp.service.zzae (com.google.android.play.core.hsdp.service.zzae)
.class public final Lcom/google/android/play/core/hsdp/service/zzae;
.super Lcom/google/android/play/core/hsdp/service/zzaf;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzai;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/hsdp/service/zzaf;-><init>(Lcom/google/android/play/core/hsdp/service/zzai;Lcom/google/android/play/core/hsdp/service/zzah;)V

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzad;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/hsdp/service/zzad;-><init>(Lcom/google/android/play/core/hsdp/service/zzae;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    const/4 v2, 0x5

    invoke-static {v1, p1, v2, v0}, Lcom/google/android/play/core/hsdp/service/zzai;->zzo(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/play/core/hsdp/service/zzai;->zzo(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public final zzf(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzab;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/play/core/hsdp/service/zzab;-><init>(Lcom/google/android/play/core/hsdp/service/zzae;Ljava/lang/String;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    const/4 p3, 0x4

    invoke-static {p2, p1, p3, v0}, Lcom/google/android/play/core/hsdp/service/zzai;->zzo(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public final zzg(Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzac;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/hsdp/service/zzac;-><init>(Lcom/google/android/play/core/hsdp/service/zzae;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    const/4 v2, 0x4

    invoke-static {v1, p1, v2, v0}, Lcom/google/android/play/core/hsdp/service/zzai;->zzo(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method public final zzh(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/play/core/hsdp/service/zzai;->zzo(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzab (com.google.android.play.core.hsdp.service.zzab)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzab;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzae;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:I

.field public final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzae;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zza:Lcom/google/android/play/core/hsdp/service/zzae;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zzb:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zzc:I

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zza:Lcom/google/android/play/core/hsdp/service/zzae;

    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzai;->zzh(Lcom/google/android/play/core/hsdp/service/zzai;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zzb:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/service/zzay;

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No active overlay for target package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Cannot report error."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HsdpClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zzd:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zzc:I

    new-instance v4, Landroid/os/Bundle;

    .line 3
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "targetPackage"

    .line 4
    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "errorCode"

    .line 5
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "errorMessage"

    .line 6
    invoke-virtual {v4, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/hsdp/service/zzay;->zza()Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;

    move-result-object v0

    .line 7
    invoke-interface {v0, v4}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;->onError(Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzac (com.google.android.play.core.hsdp.service.zzac)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzac;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzae;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzae;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzac;->zza:Lcom/google/android/play/core/hsdp/service/zzae;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzac;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzac;->zza:Lcom/google/android/play/core/hsdp/service/zzae;

    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzai;->zzh(Lcom/google/android/play/core/hsdp/service/zzai;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzac;->zzb:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzad (com.google.android.play.core.hsdp.service.zzad)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzad;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzae;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzae;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzad;->zza:Lcom/google/android/play/core/hsdp/service/zzae;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzad;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzad;->zza:Lcom/google/android/play/core/hsdp/service/zzae;

    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzai;->zzh(Lcom/google/android/play/core/hsdp/service/zzai;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzad;->zzb:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.google.android.play.core.hsdp.service.zzw (com.google.android.play.core.hsdp.service.zzw)
.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzw;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzai;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:I

.field public final synthetic zzd:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzb:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzc:I

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzd:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzb:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzc:I

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzd:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/play/core/hsdp/service/zzai;->zzm(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method
