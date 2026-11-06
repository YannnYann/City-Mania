###### Class com.unity3d.ads.core.data.model.TokenCounters (com.unity3d.ads.core.data.model.TokenCounters)
.class public final Lcom/unity3d/ads/core/data/model/TokenCounters;
.super Ljava/lang/Object;
.source "TokenCounters.kt"


# instance fields
.field private seq:I

.field private starts:I

.field private wins:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->seq:I

    .line 5
    iput p2, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->wins:I

    .line 6
    iput p3, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->starts:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/unity3d/ads/core/data/model/TokenCounters;IIIILjava/lang/Object;)Lcom/unity3d/ads/core/data/model/TokenCounters;
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->seq:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->wins:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->starts:I

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/unity3d/ads/core/data/model/TokenCounters;->copy(III)Lcom/unity3d/ads/core/data/model/TokenCounters;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->seq:I

    return v0
.end method

.method public final component2()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->wins:I

    return v0
.end method

.method public final component3()I
    .registers 2

    .line 0
    iget v0, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->starts:I

    return v0
.end method

.method public final copy(III)Lcom/unity3d/ads/core/data/model/TokenCounters;
    .registers 5

    .line 0
    new-instance v0, Lcom/unity3d/ads/core/data/model/TokenCounters;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/ads/core/data/model/TokenCounters;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/unity3d/ads/core/data/model/TokenCounters;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/unity3d/ads/core/data/model/TokenCounters;

    iget v1, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->seq:I

    iget v3, p1, Lcom/unity3d/ads/core/data/model/TokenCounters;->seq:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->wins:I

    iget v3, p1, Lcom/unity3d/ads/core/data/model/TokenCounters;->wins:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->starts:I

    iget p1, p1, Lcom/unity3d/ads/core/data/model/TokenCounters;->starts:I

    if-eq v1, p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public final getSeq()I
    .registers 2

    .line 4
    iget v0, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->seq:I

    return v0
.end method

.method public final getStarts()I
    .registers 2

    .line 6
    iget v0, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->starts:I

    return v0
.end method

.method public final getWins()I
    .registers 2

    .line 5
    iget v0, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->wins:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget v0, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->seq:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->wins:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->starts:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setSeq(I)V
    .registers 2

    .line 4
    iput p1, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->seq:I

    return-void
.end method

.method public final setStarts(I)V
    .registers 2

    .line 6
    iput p1, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->starts:I

    return-void
.end method

.method public final setWins(I)V
    .registers 2

    .line 5
    iput p1, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->wins:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenCounters(seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->wins:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", starts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unity3d/ads/core/data/model/TokenCounters;->starts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
