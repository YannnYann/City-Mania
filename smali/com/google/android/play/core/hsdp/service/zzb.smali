###### Class com.google.android.play.core.hsdp.service.zzb (com.google.android.play.core.hsdp.service.zzb)
.class public final Lcom/google/android/play/core/hsdp/service/zzb;
.super Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field public zza:Ljava/lang/String;

.field public zzb:Ljava/lang/String;

.field public zzc:Ljava/util/Map;

.field public zzd:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;
    .registers 7

    .line 1
    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzb;->zza:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzb;->zzb:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzb;->zzc:Ljava/util/Map;

    if-nez v3, :cond_d

    goto :goto_16

    .line 5
    :cond_d
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzd;

    iget-object v4, p0, Lcom/google/android/play/core/hsdp/service/zzb;->zzd:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/core/hsdp/service/zzd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/os/IBinder;Lcom/google/android/play/core/hsdp/service/zzc;)V

    return-object v0

    .line 1
    :cond_16
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzb;->zza:Ljava/lang/String;

    if-nez v1, :cond_24

    const-string v1, " targetAppPackageName"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzb;->zzb:Ljava/lang/String;

    if-nez v1, :cond_2d

    const-string v1, " referrer"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzb;->zzc:Ljava/util/Map;

    if-nez v1, :cond_36

    const-string v1, " extraQueryParams"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setExtraQueryParams(Ljava/util/Map;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzb;->zzc:Ljava/util/Map;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null extraQueryParams"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setReferrer(Ljava/lang/String;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzb;->zzb:Ljava/lang/String;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null referrer"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTargetAppPackageName(Ljava/lang/String;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzb;->zza:Ljava/lang/String;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null targetAppPackageName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setWindowToken(Landroid/os/IBinder;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzb;->zzd:Landroid/os/IBinder;

    return-object p0
.end method
