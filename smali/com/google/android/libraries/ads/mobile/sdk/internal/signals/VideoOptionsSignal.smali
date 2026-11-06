###### Class com.google.android.libraries.ads.mobile.sdk.internal.signals.VideoOptionsSignal (com.google.android.libraries.ads.mobile.sdk.internal.signals.VideoOptionsSignal)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public clickToExpandRequested:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clickToExpandRequested"
    .end annotation
.end field

.field public customControlsRequested:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customControlsRequested"
    .end annotation
.end field

.field public startMuted:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startMuted"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 3

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->startMuted:Z

    .line 7
    iput-boolean p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->clickToExpandRequested:Z

    .line 8
    iput-boolean p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->customControlsRequested:Z

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
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;

    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->startMuted:Z

    iget-boolean v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->startMuted:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->clickToExpandRequested:Z

    iget-boolean v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->clickToExpandRequested:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->customControlsRequested:Z

    iget-boolean p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->customControlsRequested:Z

    if-eq v1, p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 0
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->startMuted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    move v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->clickToExpandRequested:Z

    if-eqz v2, :cond_d

    move v2, v1

    :cond_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->customControlsRequested:Z

    if-eqz v2, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 0
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->startMuted:Z

    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->clickToExpandRequested:Z

    iget-boolean v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/VideoOptionsSignal;->customControlsRequested:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoOptionsSignal(startMuted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", clickToExpandRequested="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", customControlsRequested="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
