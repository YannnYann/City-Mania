###### Class ads_mobile_sdk.tq0 (ads_mobile_sdk.tq0)
.class public final Lads_mobile_sdk/tq0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Throwable;

.field public final b:Ljava/lang/String;

.field public final c:Lads_mobile_sdk/ks3;

.field public final d:Z

.field public final e:J

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;Lads_mobile_sdk/ks3;ZJIZ)V
    .registers 10

    .line 1
    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    iput-object p1, p0, Lads_mobile_sdk/tq0;->a:Ljava/lang/Throwable;

    .line 791
    iput-object p2, p0, Lads_mobile_sdk/tq0;->b:Ljava/lang/String;

    .line 792
    iput-object p3, p0, Lads_mobile_sdk/tq0;->c:Lads_mobile_sdk/ks3;

    .line 793
    iput-boolean p4, p0, Lads_mobile_sdk/tq0;->d:Z

    .line 794
    iput-wide p5, p0, Lads_mobile_sdk/tq0;->e:J

    .line 795
    iput p7, p0, Lads_mobile_sdk/tq0;->f:I

    .line 796
    iput-boolean p8, p0, Lads_mobile_sdk/tq0;->g:Z

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
    instance-of v1, p1, Lads_mobile_sdk/tq0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/tq0;

    iget-object v1, p0, Lads_mobile_sdk/tq0;->a:Ljava/lang/Throwable;

    iget-object v3, p1, Lads_mobile_sdk/tq0;->a:Ljava/lang/Throwable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lads_mobile_sdk/tq0;->b:Ljava/lang/String;

    iget-object v3, p1, Lads_mobile_sdk/tq0;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lads_mobile_sdk/tq0;->c:Lads_mobile_sdk/ks3;

    iget-object v3, p1, Lads_mobile_sdk/tq0;->c:Lads_mobile_sdk/ks3;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-boolean v1, p0, Lads_mobile_sdk/tq0;->d:Z

    iget-boolean v3, p1, Lads_mobile_sdk/tq0;->d:Z

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget-wide v3, p0, Lads_mobile_sdk/tq0;->e:J

    iget-wide v5, p1, Lads_mobile_sdk/tq0;->e:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3d

    return v2

    :cond_3d
    iget v1, p0, Lads_mobile_sdk/tq0;->f:I

    iget v3, p1, Lads_mobile_sdk/tq0;->f:I

    if-eq v1, v3, :cond_44

    return v2

    :cond_44
    iget-boolean v1, p0, Lads_mobile_sdk/tq0;->g:Z

    iget-boolean p1, p1, Lads_mobile_sdk/tq0;->g:Z

    if-eq v1, p1, :cond_4b

    return v2

    :cond_4b
    return v0
.end method

.method public final hashCode()I
    .registers 7

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/tq0;->a:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lads_mobile_sdk/tq0;->b:Ljava/lang/String;

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/ob;->a(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-object v2, p0, Lads_mobile_sdk/tq0;->c:Lads_mobile_sdk/ks3;

    if-nez v2, :cond_15

    const/4 v2, 0x0

    goto :goto_19

    :cond_15
    invoke-virtual {v2}, Lads_mobile_sdk/ks3;->hashCode()I

    move-result v2

    :goto_19
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lads_mobile_sdk/tq0;->d:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    move v2, v3

    :cond_21
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v4, p0, Lads_mobile_sdk/tq0;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lads_mobile_sdk/tq0;->f:I

    .line 4
    invoke-static {v0, v2, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 5
    iget-boolean v1, p0, Lads_mobile_sdk/tq0;->g:Z

    if-eqz v1, :cond_36

    goto :goto_37

    :cond_36
    move v3, v1

    :goto_37
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 11

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/tq0;->a:Ljava/lang/Throwable;

    iget-object v1, p0, Lads_mobile_sdk/tq0;->b:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/tq0;->c:Lads_mobile_sdk/ks3;

    iget-boolean v3, p0, Lads_mobile_sdk/tq0;->d:Z

    iget-wide v4, p0, Lads_mobile_sdk/tq0;->e:J

    iget v6, p0, Lads_mobile_sdk/tq0;->f:I

    iget-boolean v7, p0, Lads_mobile_sdk/tq0;->g:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ExceptionSnapshot(exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", label="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", activeTraceMeta="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", trapped="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", timeMilliseconds="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", liveWebViewCount="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", unsampled="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
