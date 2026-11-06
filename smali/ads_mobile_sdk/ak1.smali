###### Class ads_mobile_sdk.ak1 (ads_mobile_sdk.ak1)
.class public final Lads_mobile_sdk/ak1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:J

.field public final g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;IIIJLcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Z)V
    .registers 11

    .line 1
    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icons"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributionInfoPlacement"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lads_mobile_sdk/ak1;->a:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lads_mobile_sdk/ak1;->b:Ljava/util/List;

    .line 11
    iput p3, p0, Lads_mobile_sdk/ak1;->c:I

    .line 12
    iput p4, p0, Lads_mobile_sdk/ak1;->d:I

    .line 13
    iput p5, p0, Lads_mobile_sdk/ak1;->e:I

    .line 14
    iput-wide p6, p0, Lads_mobile_sdk/ak1;->f:J

    .line 15
    iput-object p8, p0, Lads_mobile_sdk/ak1;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    .line 16
    iput-boolean p9, p0, Lads_mobile_sdk/ak1;->h:Z

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lads_mobile_sdk/ak1;->f:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/ak1;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/ak1;

    iget-object v1, p0, Lads_mobile_sdk/ak1;->a:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/ak1;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lads_mobile_sdk/ak1;->b:Ljava/util/List;

    iget-object v3, p1, Lads_mobile_sdk/ak1;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lads_mobile_sdk/ak1;->c:I

    iget v3, p1, Lads_mobile_sdk/ak1;->c:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lads_mobile_sdk/ak1;->d:I

    iget v3, p1, Lads_mobile_sdk/ak1;->d:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget v1, p0, Lads_mobile_sdk/ak1;->e:I

    iget v3, p1, Lads_mobile_sdk/ak1;->e:I

    if-eq v1, v3, :cond_37

    return v2

    :cond_37
    iget-wide v3, p0, Lads_mobile_sdk/ak1;->f:J

    iget-wide v5, p1, Lads_mobile_sdk/ak1;->f:J

    invoke-static {v3, v4, v5, v6}, Lkotlin/time/Duration;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_42

    return v2

    :cond_42
    iget-object v1, p0, Lads_mobile_sdk/ak1;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    iget-object v3, p1, Lads_mobile_sdk/ak1;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    if-eq v1, v3, :cond_49

    return v2

    :cond_49
    iget-boolean v1, p0, Lads_mobile_sdk/ak1;->h:Z

    iget-boolean p1, p1, Lads_mobile_sdk/ak1;->h:Z

    if-eq v1, p1, :cond_50

    return v2

    :cond_50
    return v0
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/ak1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/ak1;->b:Ljava/util/List;

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/h93;->a(Ljava/util/List;II)I

    move-result v0

    .line 3
    iget v2, p0, Lads_mobile_sdk/ak1;->c:I

    .line 4
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 5
    iget v2, p0, Lads_mobile_sdk/ak1;->d:I

    .line 6
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 7
    iget v2, p0, Lads_mobile_sdk/ak1;->e:I

    .line 8
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 9
    iget-wide v2, p0, Lads_mobile_sdk/ak1;->f:J

    invoke-static {v2, v3}, Lkotlin/time/Duration;->hashCode-impl(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/ak1;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lads_mobile_sdk/ak1;->h:Z

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    :cond_36
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 11

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/ak1;->a:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/ak1;->b:Ljava/util/List;

    iget v2, p0, Lads_mobile_sdk/ak1;->c:I

    iget v3, p0, Lads_mobile_sdk/ak1;->d:I

    iget v4, p0, Lads_mobile_sdk/ak1;->e:I

    iget-wide v5, p0, Lads_mobile_sdk/ak1;->f:J

    invoke-static {v5, v6}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lads_mobile_sdk/ak1;->g:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    iget-boolean v7, p0, Lads_mobile_sdk/ak1;->h:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InternalAttributionInfo(text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", icons="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", backgroundColor="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", textColor="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", textSize="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", animationInterval="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", attributionInfoPlacement="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", allowPubRendering="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
