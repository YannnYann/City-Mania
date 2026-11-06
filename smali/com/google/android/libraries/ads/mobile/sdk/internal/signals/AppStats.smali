###### Class com.google.android.libraries.ads.mobile.sdk.internal.signals.AppStats (com.google.android.libraries.ads.mobile.sdk.internal.signals.AppStats)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final numberOfConsentFormsShown:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "consent_form_action_identifier"
    .end annotation
.end field

.field public final priorRequestCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preqs"
    .end annotation
.end field

.field public final priorRequestCountByFormat:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preqs_by_format"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final priorRequestInSessionCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preqs_in_session"
    .end annotation
.end field

.field public final sequenceNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seq_num"
    .end annotation
.end field

.field public final timeInSessionMilliseconds:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_in_session"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJLjava/util/Map;I)V
    .registers 9

    const-string v0, "sequenceNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priorRequestCountByFormat"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->sequenceNumber:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCount:I

    .line 5
    iput p3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestInSessionCount:I

    .line 6
    iput-wide p4, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->timeInSessionMilliseconds:J

    .line 7
    iput-object p6, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCountByFormat:Ljava/util/Map;

    .line 10
    iput p7, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->numberOfConsentFormsShown:I

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
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->sequenceNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->sequenceNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCount:I

    iget v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCount:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestInSessionCount:I

    iget v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestInSessionCount:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-wide v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->timeInSessionMilliseconds:J

    iget-wide v5, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->timeInSessionMilliseconds:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCountByFormat:Ljava/util/Map;

    iget-object v3, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCountByFormat:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    return v2

    :cond_39
    iget v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->numberOfConsentFormsShown:I

    iget p1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->numberOfConsentFormsShown:I

    if-eq v1, p1, :cond_40

    return v2

    :cond_40
    return v0
.end method

.method public final hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->sequenceNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCount:I

    .line 1
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 2
    iget v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestInSessionCount:I

    .line 3
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 4
    iget-wide v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->timeInSessionMilliseconds:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCountByFormat:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->numberOfConsentFormsShown:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 10

    .line 0
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->sequenceNumber:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCount:I

    iget v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestInSessionCount:I

    iget-wide v3, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->timeInSessionMilliseconds:J

    iget-object v5, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->priorRequestCountByFormat:Ljava/util/Map;

    iget v6, p0, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;->numberOfConsentFormsShown:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppStats(sequenceNumber="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", priorRequestCount="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", priorRequestInSessionCount="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", timeInSessionMilliseconds="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", priorRequestCountByFormat="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", numberOfConsentFormsShown="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
