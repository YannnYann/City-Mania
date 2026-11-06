###### Class com.google.android.play.core.hsdp.service.zzag (com.google.android.play.core.hsdp.service.zzag)
.class public abstract Lcom/google/android/play/core/hsdp/service/zzag;
.super Lcom/google/android/play/core/hsdp/protocol/zzk;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field public final synthetic zzb:Lcom/google/android/play/core/hsdp/service/zzai;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;Lcom/google/android/play/core/hsdp/service/zzah;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzag;->zzb:Lcom/google/android/play/core/hsdp/service/zzai;

    invoke-direct {p0}, Lcom/google/android/play/core/hsdp/protocol/zzk;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzag;->zzb:Lcom/google/android/play/core/hsdp/service/zzai;

    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/zzai;->zza()V

    return-void
.end method

.method public final zzc(Landroid/os/Bundle;)V
    .registers 6

    const/4 v0, 0x1

    .line 1
    const-string v1, "hsdpPrewarmStatusCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "HsdpClientImpl"

    if-nez v1, :cond_14

    const-string v1, "HsdpServicePrewarmListener.onStateChange: cannot find status code"

    .line 3
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v1, 0x3

    .line 4
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HsdpServicePrewarmListener.onStateChange: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const-string v1, "errorMessage"

    const-string v2, ""

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_44

    const/4 v1, 0x6

    if-eq v0, v1, :cond_41

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/google/android/play/core/hsdp/service/zzag;->zze(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzag;->zzd()V

    :cond_44
    return-void
.end method

.method public abstract zzd()V
.end method

.method public abstract zze(ILjava/lang/String;)V
.end method
