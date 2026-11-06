###### Class com.google.android.play.core.hsdp.service.HsdpPrewarmRequest (com.google.android.play.core.hsdp.service.HsdpPrewarmRequest)
.class public abstract Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzb;

    invoke-direct {v0}, Lcom/google/android/play/core/hsdp/service/zzb;-><init>()V

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/hsdp/service/zzb;->setExtraQueryParams(Ljava/util/Map;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;

    return-object v0
.end method


# virtual methods
.method public abstract extraQueryParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract referrer()Ljava/lang/String;
.end method

.method public abstract targetAppPackageName()Ljava/lang/String;
.end method

.method public abstract windowToken()Landroid/os/IBinder;
.end method

###### Class com.google.android.play.core.hsdp.service.HsdpPrewarmRequest.Builder (com.google.android.play.core.hsdp.service.HsdpPrewarmRequest$Builder)
.class public abstract Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest;
.end method

.method public abstract setExtraQueryParams(Ljava/util/Map;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
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
.end method

.method public abstract setReferrer(Ljava/lang/String;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
.end method

.method public abstract setTargetAppPackageName(Ljava/lang/String;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
.end method

.method public abstract setWindowToken(Landroid/os/IBinder;)Lcom/google/android/play/core/hsdp/service/HsdpPrewarmRequest$Builder;
.end method
