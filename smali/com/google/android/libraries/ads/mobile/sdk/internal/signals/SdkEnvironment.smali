###### Class com.google.android.libraries.ads.mobile.sdk.internal.signals.SdkEnvironment (com.google.android.libraries.ads.mobile.sdk.internal.signals.SdkEnvironment)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isInstantApp:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instant_app"
    .end annotation
.end field

.field public isPrivilegedProcess:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_privileged_process"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;-><init>(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Z)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isInstantApp:Ljava/lang/Boolean;

    .line 5
    iput-boolean p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isPrivilegedProcess:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isInstantApp:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isInstantApp:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isPrivilegedProcess:Z

    iget-boolean p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isPrivilegedProcess:Z

    if-eq v1, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isInstantApp:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isPrivilegedProcess:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :cond_11
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isInstantApp:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/SdkEnvironment;->isPrivilegedProcess:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SdkEnvironment(isInstantApp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isPrivilegedProcess="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
