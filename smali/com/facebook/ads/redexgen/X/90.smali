###### Class com.facebook.ads.redexgen.X.AnonymousClass90 (com.facebook.ads.redexgen.X.90)
.class public final Lcom/facebook/ads/redexgen/X/90;
.super Lcom/facebook/ads/redexgen/X/SK;
.source ""


# instance fields
.field public A00:[I

.field public A01:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26396
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SK;-><init>()V

    return-void
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/LX;)Lcom/facebook/ads/redexgen/X/LX;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/LY;
        }
    .end annotation

    .line 26397
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/90;->A01:[I

    .line 26398
    .local v0, "outputChannels":[I
    if-nez v5, :cond_7

    .line 26399
    sget-object v0, Lcom/facebook/ads/redexgen/X/LX;->A06:Lcom/facebook/ads/redexgen/X/LX;

    return-object v0

    .line 26400
    :cond_7
    iget v0, p1, Lcom/facebook/ads/redexgen/X/LX;->A02:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3b

    .line 26401
    iget v1, p1, Lcom/facebook/ads/redexgen/X/LX;->A01:I

    array-length v0, v5

    if-eq v1, v0, :cond_25

    const/4 v3, 0x1

    .line 26402
    .local v1, "active":Z
    :goto_12
    const/4 v2, 0x0

    .local v3, "i":I
    :goto_13
    array-length v0, v5

    if-ge v2, v0, :cond_2d

    .line 26403
    aget v1, v5, v2

    .line 26404
    .local p0, "channelIndex":I
    iget v0, p1, Lcom/facebook/ads/redexgen/X/LX;->A01:I

    if-ge v1, v0, :cond_27

    .line 26405
    if-eq v1, v2, :cond_23

    const/4 v0, 0x1

    :goto_1f
    or-int/2addr v3, v0

    .line 26406
    .end local p0    # "channelIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 26407
    :cond_23
    const/4 v0, 0x0

    goto :goto_1f

    .line 26408
    :cond_25
    const/4 v3, 0x0

    goto :goto_12

    .line 26409
    .restart local p0    # "channelIndex":I
    :cond_27
    new-instance v0, Lcom/facebook/ads/redexgen/X/LY;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/LY;-><init>(Lcom/facebook/ads/redexgen/X/LX;)V

    throw v0

    .line 26410
    .end local v3    # "i":I
    .end local p0    # "channelIndex":I
    :cond_2d
    if-eqz v3, :cond_38

    .line 26411
    iget v2, p1, Lcom/facebook/ads/redexgen/X/LX;->A03:I

    array-length v1, v5

    new-instance v0, Lcom/facebook/ads/redexgen/X/LX;

    invoke-direct {v0, v2, v1, v4}, Lcom/facebook/ads/redexgen/X/LX;-><init>(III)V

    .line 26412
    :goto_37
    return-object v0

    .line 26413
    :cond_38
    sget-object v0, Lcom/facebook/ads/redexgen/X/LX;->A06:Lcom/facebook/ads/redexgen/X/LX;

    goto :goto_37

    .line 26414
    .end local v1    # "active":Z
    :cond_3b
    new-instance v0, Lcom/facebook/ads/redexgen/X/LY;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/LY;-><init>(Lcom/facebook/ads/redexgen/X/LX;)V

    throw v0
.end method

.method public final A0A()V
    .registers 2

    .line 26415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A01:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A00:[I

    .line 26416
    return-void
.end method

.method public final A0C([I)V
    .registers 2

    .line 26417
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/90;->A01:[I

    .line 26418
    return-void
.end method

.method public final AIU(Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 26419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/90;->A00:[I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 26420
    .local v0, "outputChannels":[I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 26421
    .local v1, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 26422
    .local v2, "limit":I
    sub-int v1, v4, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A05:Lcom/facebook/ads/redexgen/X/LX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/LX;->A00:I

    div-int/2addr v1, v0

    .line 26423
    .local v3, "frameCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A06:Lcom/facebook/ads/redexgen/X/LX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/LX;->A00:I

    mul-int/2addr v0, v1

    .line 26424
    .local v4, "outputSize":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SK;->A00(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 26425
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    :goto_20
    if-ge v5, v4, :cond_3b

    .line 26426
    array-length v2, v6

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_35

    aget v0, v6, v1

    .line 26427
    .local p1, "channelIndex":I
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 26428
    .end local p1    # "channelIndex":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 26429
    :cond_35
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SK;->A05:Lcom/facebook/ads/redexgen/X/LX;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/LX;->A00:I

    add-int/2addr v5, v0

    goto :goto_20

    .line 26430
    :cond_3b
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26431
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26432
    return-void
.end method
