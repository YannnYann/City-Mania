###### Class ads_mobile_sdk.xc (ads_mobile_sdk.xc)
.class public final Lads_mobile_sdk/xc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/zc;

.field public final b:J

.field public final c:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/zc;JLcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;Ljava/lang/String;)V
    .registers 7

    .line 1
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "precisionType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencyCode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lads_mobile_sdk/xc;->a:Lads_mobile_sdk/zc;

    .line 19
    iput-wide p2, p0, Lads_mobile_sdk/xc;->b:J

    .line 20
    iput-object p4, p0, Lads_mobile_sdk/xc;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    .line 21
    iput-object p5, p0, Lads_mobile_sdk/xc;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/xc;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/xc;

    iget-object v1, p0, Lads_mobile_sdk/xc;->a:Lads_mobile_sdk/zc;

    iget-object v3, p1, Lads_mobile_sdk/xc;->a:Lads_mobile_sdk/zc;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lads_mobile_sdk/xc;->b:J

    iget-wide v5, p1, Lads_mobile_sdk/xc;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lads_mobile_sdk/xc;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    iget-object v3, p1, Lads_mobile_sdk/xc;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    if-eq v1, v3, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lads_mobile_sdk/xc;->d:Ljava/lang/String;

    iget-object p1, p1, Lads_mobile_sdk/xc;->d:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    return v2

    :cond_2e
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/xc;->a:Lads_mobile_sdk/zc;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lads_mobile_sdk/xc;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lads_mobile_sdk/xc;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lads_mobile_sdk/xc;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/xc;->a:Lads_mobile_sdk/zc;

    iget-wide v1, p0, Lads_mobile_sdk/xc;->b:J

    iget-object v3, p0, Lads_mobile_sdk/xc;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;

    iget-object v4, p0, Lads_mobile_sdk/xc;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AdValueParcel(type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", valueMicros="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", precisionType="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", currencyCode="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
