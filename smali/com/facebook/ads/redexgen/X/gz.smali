###### Class com.facebook.ads.redexgen.X.AbstractC2528gz (com.facebook.ads.redexgen.X.gz)
.class public abstract Lcom/facebook/ads/redexgen/X/gz;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:[I

.field public static final A01:[J

.field public static final A02:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 2546
    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/gz;->A00:[I

    .line 2547
    new-array v0, v1, [J

    sput-object v0, Lcom/facebook/ads/redexgen/X/gz;->A01:[J

    .line 2548
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/gz;->A02:[Ljava/lang/Object;

    return-void
.end method

.method public static A00(I)I
    .registers 1

    .line 92229
    mul-int/lit8 p0, p0, 0x8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/gz;->A01(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static A01(I)I
    .registers 4

    .line 92230
    const/4 v2, 0x4

    .local v0, "i":I
    :goto_1
    const/16 v0, 0x20

    if-ge v2, v0, :cond_13

    const/4 v1, 0x1

    shl-int v0, v1, v2

    add-int/lit8 v0, v0, -0xc

    if-gt p0, v0, :cond_10

    shl-int/2addr v1, v2

    add-int/lit8 v0, v1, -0xc

    return v0

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 92231
    .end local v0    # "i":I
    :cond_13
    return p0
.end method

.method public static A02([III)I
    .registers 7

    .line 92232
    const/4 v3, 0x0

    .line 92233
    .local v0, "lo":I
    add-int/lit8 v2, p1, -0x1

    .line 92234
    .local v1, "hi":I
    :goto_3
    if-gt v3, v2, :cond_16

    .line 92235
    add-int v0, v3, v2

    ushr-int/lit8 v1, v0, 0x1

    .line 92236
    .local v2, "mid":I
    aget v0, p0, v1

    .line 92237
    .local v3, "midVal":I
    if-ge v0, p2, :cond_10

    .line 92238
    add-int/lit8 v3, v1, 0x1

    goto :goto_3

    .line 92239
    :cond_10
    if-le v0, p2, :cond_15

    .line 92240
    add-int/lit8 v2, v1, -0x1

    goto :goto_3

    .line 92241
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":I
    :cond_15
    return v1

    .line 92242
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_16
    not-int v0, v3

    return v0
.end method

.method public static A03([JIJ)I
    .registers 10

    .line 92243
    const/4 v5, 0x0

    .line 92244
    .local v0, "lo":I
    add-int/lit8 v4, p1, -0x1

    .line 92245
    .local v1, "hi":I
    :goto_3
    if-gt v5, v4, :cond_1a

    .line 92246
    add-int v0, v5, v4

    ushr-int/lit8 v3, v0, 0x1

    .line 92247
    .local v2, "mid":I
    aget-wide v1, p0, v3

    .line 92248
    .local v3, "midVal":J
    cmp-long v0, v1, p2

    if-gez v0, :cond_12

    .line 92249
    add-int/lit8 v5, v3, 0x1

    goto :goto_3

    .line 92250
    :cond_12
    cmp-long v0, v1, p2

    if-lez v0, :cond_19

    .line 92251
    add-int/lit8 v4, v3, -0x1

    goto :goto_3

    .line 92252
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":J
    :cond_19
    return v3

    .line 92253
    .end local v2    # "mid":I
    .end local v3    # "midVal":J
    :cond_1a
    not-int v0, v5

    return v0
.end method

.method public static A04(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 92254
    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_a
    const/4 p0, 0x1

    :goto_b
    return p0

    :cond_c
    const/4 p0, 0x0

    goto :goto_b
.end method
