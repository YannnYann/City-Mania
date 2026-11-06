###### Class com.facebook.ads.redexgen.X.ZR (com.facebook.ads.redexgen.X.ZR)
.class public final Lcom/facebook/ads/redexgen/X/ZR;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:I

.field public final A03:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    .line 79574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79575
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZR;->A03:[B

    .line 79576
    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A02:I

    .line 79577
    return-void
.end method

.method private A00()V
    .registers 3

    .line 79578
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A01:I

    if-ltz v0, :cond_19

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZR;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A02:I

    if-lt v1, v0, :cond_14

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZR;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A02:I

    if-ne v1, v0, :cond_19

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:I

    if-nez v0, :cond_19

    :cond_14
    const/4 v0, 0x1

    :goto_15
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ln;->A08(Z)V

    .line 79579
    return-void

    .line 79580
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public final A01()I
    .registers 3

    .line 79581
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A01:I

    mul-int/lit8 v1, v0, 0x8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A02(I)I
    .registers 8

    .line 79582
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZR;->A01:I

    .line 79583
    .local v0, "tempByteOffset":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:I

    rsub-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 79584
    .local v1, "bitsRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A03:[B

    add-int/lit8 v4, v1, 0x1

    .end local v0    # "tempByteOffset":I
    .local v3, "tempByteOffset":I
    aget-byte v3, v0, v1

    const/16 v2, 0xff

    and-int/2addr v3, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:I

    shr-int/2addr v3, v0

    rsub-int/lit8 v0, v5, 0x8

    shr-int v0, v2, v0

    and-int/2addr v3, v0

    .line 79585
    .local v0, "returnValue":I
    :goto_1b
    if-ge v5, p1, :cond_2a

    .line 79586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A03:[B

    add-int/lit8 v1, v4, 0x1

    .end local v3    # "tempByteOffset":I
    .local v5, "tempByteOffset":I
    aget-byte v0, v0, v4

    and-int/2addr v0, v2

    shl-int/2addr v0, v5

    or-int/2addr v3, v0

    .line 79587
    add-int/lit8 v5, v5, 0x8

    move v4, v1

    goto :goto_1b

    .line 79588
    .end local v5    # "tempByteOffset":I
    .restart local v3    # "tempByteOffset":I
    :cond_2a
    rsub-int/lit8 v1, p1, 0x20

    const/4 v0, -0x1

    ushr-int/2addr v0, v1

    and-int/2addr v3, v0

    .line 79589
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/ZR;->A03(I)V

    .line 79590
    return v3
.end method

.method public final A03(I)V
    .registers 5

    .line 79591
    div-int/lit8 v2, p1, 0x8

    .line 79592
    .local v0, "numBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A01:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A01:I

    .line 79593
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:I

    mul-int/lit8 v0, v2, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:I

    .line 79594
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:I

    const/4 v0, 0x7

    if-le v1, v0, :cond_20

    .line 79595
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A01:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A01:I

    .line 79596
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:I

    .line 79597
    :cond_20
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZR;->A00()V

    .line 79598
    return-void
.end method

.method public final A04()Z
    .registers 4

    .line 79599
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZR;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A01:I

    aget-byte v0, v1, v0

    and-int/lit16 v2, v0, 0xff

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:I

    shr-int/2addr v2, v0

    const/4 v1, 0x1

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_14

    const/4 v0, 0x1

    .line 79600
    .local v0, "returnValue":Z
    :goto_10
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/ZR;->A03(I)V

    .line 79601
    return v0

    .line 79602
    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method
