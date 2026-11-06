###### Class ads_mobile_sdk.c13 (ads_mobile_sdk.c13)
.class public final Lads_mobile_sdk/c13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oe3;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

.field public final b:I

.field public final c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;ILcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;)V
    .registers 5

    .line 1
    const-string v0, "appStats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitQualitySignals"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lads_mobile_sdk/c13;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    .line 47
    iput p2, p0, Lads_mobile_sdk/c13;->b:I

    .line 48
    iput-object p3, p0, Lads_mobile_sdk/c13;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V
    .registers 4

    .line 1
    const-string v0, "signals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lads_mobile_sdk/c13;->b:I

    if-lez v0, :cond_f

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->numberOfRegisteredWebViews:Ljava/lang/Integer;

    .line 54
    :cond_f
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;

    iget-object v1, p0, Lads_mobile_sdk/c13;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;)V

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->qualitySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;

    .line 55
    iget-object v0, p0, Lads_mobile_sdk/c13;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->adUnitQualitySignals:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/c13;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/c13;

    iget-object v1, p0, Lads_mobile_sdk/c13;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    iget-object v3, p1, Lads_mobile_sdk/c13;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lads_mobile_sdk/c13;->b:I

    iget v3, p1, Lads_mobile_sdk/c13;->b:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lads_mobile_sdk/c13;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;

    iget-object p1, p1, Lads_mobile_sdk/c13;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/c13;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lads_mobile_sdk/c13;->b:I

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 3
    iget-object v1, p0, Lads_mobile_sdk/c13;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/c13;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    iget v1, p0, Lads_mobile_sdk/c13;->b:I

    iget-object v2, p0, Lads_mobile_sdk/c13;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QualitySignal(appStats="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", numberOfRegisteredWebViews="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", adUnitQualitySignals="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
