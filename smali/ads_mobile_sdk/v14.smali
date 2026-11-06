###### Class ads_mobile_sdk.v14 (ads_mobile_sdk.v14)
.class public final Lads_mobile_sdk/v14;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/u14;

.field public final b:I

.field public final c:I

.field public final d:Z


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/u14;III)V
    .registers 7

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move p2, v1

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    move p3, v1

    .line 2
    :cond_b
    invoke-direct {p0, p1, p2, p3, v1}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;IIZ)V

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/u14;IIZ)V
    .registers 6

    .line 3
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lads_mobile_sdk/v14;->a:Lads_mobile_sdk/u14;

    .line 24
    iput p2, p0, Lads_mobile_sdk/v14;->b:I

    .line 25
    iput p3, p0, Lads_mobile_sdk/v14;->c:I

    .line 26
    iput-boolean p4, p0, Lads_mobile_sdk/v14;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .line 34
    iget-object v0, p0, Lads_mobile_sdk/v14;->a:Lads_mobile_sdk/u14;

    sget-object v1, Lads_mobile_sdk/u14;->a:Lads_mobile_sdk/u14;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lads_mobile_sdk/v14;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lads_mobile_sdk/v14;

    iget-object v1, p0, Lads_mobile_sdk/v14;->a:Lads_mobile_sdk/u14;

    iget-object v3, p1, Lads_mobile_sdk/v14;->a:Lads_mobile_sdk/u14;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lads_mobile_sdk/v14;->b:I

    iget v3, p1, Lads_mobile_sdk/v14;->b:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lads_mobile_sdk/v14;->c:I

    iget v3, p1, Lads_mobile_sdk/v14;->c:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-boolean v1, p0, Lads_mobile_sdk/v14;->d:Z

    iget-boolean p1, p1, Lads_mobile_sdk/v14;->d:Z

    if-eq v1, p1, :cond_28

    return v2

    :cond_28
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/v14;->a:Lads_mobile_sdk/u14;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lads_mobile_sdk/v14;->b:I

    .line 2
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 3
    iget v2, p0, Lads_mobile_sdk/v14;->c:I

    .line 4
    invoke-static {v2, v0, v1}, Lads_mobile_sdk/y1;->a(III)I

    move-result v0

    .line 5
    iget-boolean v1, p0, Lads_mobile_sdk/v14;->d:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/v14;->a:Lads_mobile_sdk/u14;

    iget v1, p0, Lads_mobile_sdk/v14;->b:I

    iget v2, p0, Lads_mobile_sdk/v14;->c:I

    iget-boolean v3, p0, Lads_mobile_sdk/v14;->d:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebViewSize(type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", widthInPixels="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", heightInPixels="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isFluidHeight="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
