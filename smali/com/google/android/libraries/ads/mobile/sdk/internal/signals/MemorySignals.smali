###### Class com.google.android.libraries.ads.mobile.sdk.internal.signals.MemorySignals (com.google.android.libraries.ads.mobile.sdk.internal.signals.MemorySignals)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public runtimeFreeMemory:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "runtime_free"
    .end annotation
.end field

.field public runtimeMaxMemory:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "runtime_max"
    .end annotation
.end field

.field public runtimeTotalMemory:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "runtime_total"
    .end annotation
.end field

.field public webviewCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "web_view_count"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1, p1, p1, p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeFreeMemory:Ljava/lang/Long;

    .line 5
    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeMaxMemory:Ljava/lang/Long;

    .line 6
    iput-object p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeTotalMemory:Ljava/lang/Long;

    .line 7
    iput-object p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->webviewCount:Ljava/lang/Integer;

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
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeFreeMemory:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeFreeMemory:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeMaxMemory:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeMaxMemory:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeTotalMemory:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeTotalMemory:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->webviewCount:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->webviewCount:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeFreeMemory:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeMaxMemory:Ljava/lang/Long;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeTotalMemory:Ljava/lang/Long;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->webviewCount:Ljava/lang/Integer;

    if-nez v2, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_30
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeFreeMemory:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeMaxMemory:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->runtimeTotalMemory:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/MemorySignals;->webviewCount:Ljava/lang/Integer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MemorySignals(runtimeFreeMemory="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", runtimeMaxMemory="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", runtimeTotalMemory="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", webviewCount="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
