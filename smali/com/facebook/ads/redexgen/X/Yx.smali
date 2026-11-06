###### Class com.facebook.ads.redexgen.X.AbstractC2070Yx (com.facebook.ads.redexgen.X.Yx)
.class public abstract Lcom/facebook/ads/redexgen/X/Yx;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Lcom/facebook/ads/redexgen/X/Q9;[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78449
    const/4 v2, 0x0

    .line 78450
    .local v0, "totalBytesPeeked":I
    :goto_1
    if-ge v2, p3, :cond_e

    .line 78451
    add-int v1, p2, v2

    sub-int v0, p3, v2

    invoke-interface {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->AI5([BII)I

    move-result v1

    .line 78452
    .local v1, "bytesPeeked":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_f

    .line 78453
    :cond_e
    return v2

    .line 78454
    :cond_f
    add-int/2addr v2, v1

    .line 78455
    .end local v1    # "bytesPeeked":I
    goto :goto_1
.end method

.method public static A01(ZLjava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/L9;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 78456
    if-eqz p0, :cond_3

    .line 78457
    return-void

    .line 78458
    :cond_3
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/facebook/ads/redexgen/X/L9;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/L9;

    move-result-object p0

    throw p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Q9;I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78459
    :try_start_0
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/Q9;->ALL(I)V

    goto :goto_6
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_4} :catch_4

    .line 78460
    .local p0, "e":Ljava/io/EOFException;
    :catch_4
    const/4 p0, 0x0

    return p0

    .line 78461
    :goto_6
    const/4 p0, 0x1

    return p0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Q9;[BII)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78462
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Q9;->readFully([BII)V

    goto :goto_6
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_4} :catch_4

    .line 78463
    .local p0, "e":Ljava/io/EOFException;
    :catch_4
    const/4 p0, 0x0

    return p0

    .line 78464
    :goto_6
    const/4 p0, 0x1

    return p0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Q9;[BIIZ)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78465
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Q9;->AI7([BIIZ)Z

    move-result p0

    return p0
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_5

    .line 78466
    :catch_5
    move-exception p0

    .line 78467
    .local p0, "e":Ljava/io/EOFException;
    if-eqz p4, :cond_a

    .line 78468
    const/4 p0, 0x0

    return p0

    .line 78469
    :cond_a
    throw p0
.end method
