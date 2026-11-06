###### Class ads_mobile_sdk.ko (ads_mobile_sdk.ko)
.class public final Lads_mobile_sdk/ko;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

.field public final c:Lads_mobile_sdk/j53;

.field public final d:I

.field public final e:Lads_mobile_sdk/om2;

.field public final f:J

.field public final g:J

.field public h:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lads_mobile_sdk/j53;ILads_mobile_sdk/om2;JJLkotlinx/coroutines/CompletableJob;)V
    .registers 12

    .line 1
    const-string v0, "webProperty"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/ko;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lads_mobile_sdk/ko;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    .line 5
    iput-object p3, p0, Lads_mobile_sdk/ko;->c:Lads_mobile_sdk/j53;

    .line 6
    iput p4, p0, Lads_mobile_sdk/ko;->d:I

    .line 7
    iput-object p5, p0, Lads_mobile_sdk/ko;->e:Lads_mobile_sdk/om2;

    .line 8
    iput-wide p6, p0, Lads_mobile_sdk/ko;->f:J

    .line 9
    iput-wide p8, p0, Lads_mobile_sdk/ko;->g:J

    .line 10
    iput-object p10, p0, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

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
    instance-of v1, p1, Lads_mobile_sdk/ko;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/ko;

    iget-object v1, p0, Lads_mobile_sdk/ko;->a:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/ko;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lads_mobile_sdk/ko;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v3, p1, Lads_mobile_sdk/ko;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lads_mobile_sdk/ko;->c:Lads_mobile_sdk/j53;

    iget-object v3, p1, Lads_mobile_sdk/ko;->c:Lads_mobile_sdk/j53;

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget v1, p0, Lads_mobile_sdk/ko;->d:I

    iget v3, p1, Lads_mobile_sdk/ko;->d:I

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lads_mobile_sdk/ko;->e:Lads_mobile_sdk/om2;

    iget-object v3, p1, Lads_mobile_sdk/ko;->e:Lads_mobile_sdk/om2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-wide v3, p0, Lads_mobile_sdk/ko;->f:J

    iget-wide v5, p1, Lads_mobile_sdk/ko;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_44

    return v2

    :cond_44
    iget-wide v3, p0, Lads_mobile_sdk/ko;->g:J

    iget-wide v5, p1, Lads_mobile_sdk/ko;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4d

    return v2

    :cond_4d
    iget-object v1, p0, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    iget-object p1, p1, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    return v2

    :cond_58
    return v0
.end method

.method public final hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/ko;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/ko;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/ko;->c:Lads_mobile_sdk/j53;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lads_mobile_sdk/ko;->d:I

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 3
    iget-object v2, p0, Lads_mobile_sdk/ko;->e:Lads_mobile_sdk/om2;

    invoke-virtual {v2}, Lads_mobile_sdk/om2;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Lads_mobile_sdk/ko;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lads_mobile_sdk/ko;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 13

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/ko;->a:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/ko;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    iget-object v2, p0, Lads_mobile_sdk/ko;->c:Lads_mobile_sdk/j53;

    iget v3, p0, Lads_mobile_sdk/ko;->d:I

    iget-object v4, p0, Lads_mobile_sdk/ko;->e:Lads_mobile_sdk/om2;

    iget-wide v5, p0, Lads_mobile_sdk/ko;->f:J

    iget-wide v7, p0, Lads_mobile_sdk/ko;->g:J

    iget-object v9, p0, Lads_mobile_sdk/ko;->h:Lkotlinx/coroutines/Job;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AutoRefreshEntry(webProperty="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adRequest="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", requestType="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", numberOfAdsRequested="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", token="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", scheduleTimeMs="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", targetExecutionTimeMs="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", job="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
