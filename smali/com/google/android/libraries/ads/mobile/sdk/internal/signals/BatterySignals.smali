###### Class com.google.android.libraries.ads.mobile.sdk.internal.signals.BatterySignals (com.google.android.libraries.ads.mobile.sdk.internal.signals.BatterySignals)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public batteryLevel:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "battery_level"
    .end annotation
.end field

.field public isCharging:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_charging"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;-><init>(I)V

    return-void
.end method

.method public constructor <init>(DZ)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;->isCharging:Z

    .line 5
    iput-wide p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;->batteryLevel:D

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 4

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    .line 6
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;-><init>(DZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;

    iget-boolean v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;->isCharging:Z

    iget-boolean v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;->isCharging:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;->batteryLevel:D

    iget-wide v5, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;->batteryLevel:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 0
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;->isCharging:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;->batteryLevel:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 0
    iget-boolean v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;->isCharging:Z

    iget-wide v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;->batteryLevel:D

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BatterySignals(isCharging="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", batteryLevel="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
