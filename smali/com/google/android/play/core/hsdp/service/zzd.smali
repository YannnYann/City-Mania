###### Class com.google.android.play.core.hsdp.service.zzd (com.google.android.play.core.hsdp.service.zzd)
.class public final Lcom/google/android/play/core/hsdp/service/zzd;
.super Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/util/Map;

.field public final zzd:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/os/IBinder;Lcom/google/android/play/core/hsdp/service/zzc;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzc:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzd:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    check-cast p1, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->targetAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->referrer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzc:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->extraQueryParams()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzd:Landroid/os/IBinder;

    if-nez v1, :cond_3a

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->windowToken()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_46

    goto :goto_45

    :cond_3a
    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;->windowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto :goto_46

    :cond_45
    :goto_45
    return v0

    :cond_46
    :goto_46
    return v2
.end method

.method public final extraQueryParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzc:Ljava/util/Map;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzb:Ljava/lang/String;

    mul-int/2addr v0, v1

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzc:Ljava/util/Map;

    mul-int/2addr v0, v1

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzd:Landroid/os/IBinder;

    if-nez v2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    .line 4
    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final referrer()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final targetAppPackageName()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzd:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzc:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HsdpPrewarmRequest{targetAppPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", referrer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", extraQueryParams="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", windowToken="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final windowToken()Landroid/os/IBinder;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzd;->zzd:Landroid/os/IBinder;

    return-object v0
.end method
