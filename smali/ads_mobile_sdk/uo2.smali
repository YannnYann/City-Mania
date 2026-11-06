###### Class ads_mobile_sdk.uo2 (ads_mobile_sdk.uo2)
.class public final Lads_mobile_sdk/uo2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/Map;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZZLjava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .registers 10

    .line 1
    const-string v0, "prefetchUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hsdpServiceTargetAppPackageName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hsdpServiceReferrer"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hsdpServiceExtraQueryParams"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lads_mobile_sdk/uo2;->a:Z

    .line 14
    iput-object p2, p0, Lads_mobile_sdk/uo2;->b:Ljava/lang/String;

    .line 15
    iput-boolean p3, p0, Lads_mobile_sdk/uo2;->c:Z

    .line 16
    iput-boolean p4, p0, Lads_mobile_sdk/uo2;->d:Z

    .line 17
    iput-object p5, p0, Lads_mobile_sdk/uo2;->e:Ljava/lang/String;

    .line 18
    iput p6, p0, Lads_mobile_sdk/uo2;->f:I

    .line 19
    iput-object p7, p0, Lads_mobile_sdk/uo2;->g:Ljava/lang/String;

    .line 20
    iput-object p8, p0, Lads_mobile_sdk/uo2;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/uo2;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/uo2;

    iget-boolean v1, p0, Lads_mobile_sdk/uo2;->a:Z

    iget-boolean v3, p1, Lads_mobile_sdk/uo2;->a:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lads_mobile_sdk/uo2;->b:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/uo2;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lads_mobile_sdk/uo2;->c:Z

    iget-boolean v3, p1, Lads_mobile_sdk/uo2;->c:Z

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-boolean v1, p0, Lads_mobile_sdk/uo2;->d:Z

    iget-boolean v3, p1, Lads_mobile_sdk/uo2;->d:Z

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lads_mobile_sdk/uo2;->e:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/uo2;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    return v2

    :cond_37
    iget v1, p0, Lads_mobile_sdk/uo2;->f:I

    iget v3, p1, Lads_mobile_sdk/uo2;->f:I

    if-eq v1, v3, :cond_3e

    return v2

    :cond_3e
    iget-object v1, p0, Lads_mobile_sdk/uo2;->g:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/uo2;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    return v2

    :cond_49
    iget-object v1, p0, Lads_mobile_sdk/uo2;->h:Ljava/util/Map;

    iget-object p1, p1, Lads_mobile_sdk/uo2;->h:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    return v2

    :cond_54
    return v0
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    iget-boolean v0, p0, Lads_mobile_sdk/uo2;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    move v0, v1

    :cond_6
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget-object v3, p0, Lads_mobile_sdk/uo2;->b:Ljava/lang/String;

    .line 2
    invoke-static {v3, v0, v2}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-boolean v3, p0, Lads_mobile_sdk/uo2;->c:Z

    if-eqz v3, :cond_14

    move v3, v1

    :cond_14
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Lads_mobile_sdk/uo2;->d:Z

    if-eqz v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v3

    :goto_1c
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Lads_mobile_sdk/uo2;->e:Ljava/lang/String;

    .line 4
    invoke-static {v1, v0, v2}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 5
    iget v1, p0, Lads_mobile_sdk/uo2;->f:I

    .line 6
    invoke-static {v1, v0, v2}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 7
    iget-object v1, p0, Lads_mobile_sdk/uo2;->g:Ljava/lang/String;

    .line 8
    invoke-static {v1, v0, v2}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 9
    iget-object v1, p0, Lads_mobile_sdk/uo2;->h:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 11

    .line 1
    iget-boolean v0, p0, Lads_mobile_sdk/uo2;->a:Z

    iget-object v1, p0, Lads_mobile_sdk/uo2;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lads_mobile_sdk/uo2;->c:Z

    iget-boolean v3, p0, Lads_mobile_sdk/uo2;->d:Z

    iget-object v4, p0, Lads_mobile_sdk/uo2;->e:Ljava/lang/String;

    iget v5, p0, Lads_mobile_sdk/uo2;->f:I

    iget-object v6, p0, Lads_mobile_sdk/uo2;->g:Ljava/lang/String;

    iget-object v7, p0, Lads_mobile_sdk/uo2;->h:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PlayPrewarmOptions(enablePrewarming="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", prefetchUrl="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", skipOfflineNotificationFlow="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", enableHsdpService="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hsdpServiceTargetAppPackageName="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hsdpInvocationCallbackBitmask="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hsdpServiceReferrer="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", hsdpServiceExtraQueryParams="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
