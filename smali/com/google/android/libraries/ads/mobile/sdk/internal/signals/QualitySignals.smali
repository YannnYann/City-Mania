###### Class com.google.android.libraries.ads.mobile.sdk.internal.signals.QualitySignals (com.google.android.libraries.ads.mobile.sdk.internal.signals.QualitySignals)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final appStats:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;)V
    .registers 3

    const-string v0, "appStats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;->appStats:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;->appStats:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    iget-object p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;->appStats:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;->appStats:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;->appStats:Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QualitySignals(appStats="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
