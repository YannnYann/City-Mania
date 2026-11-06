###### Class info.flowersoft.theotown.terrain.DiamondSquareTerrainGenerator (info.flowersoft.theotown.terrain.DiamondSquareTerrainGenerator)
.class public final Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;
.super Linfo/flowersoft/theotown/terrain/TerrainGenerator;
.source "DiamondSquareTerrainGenerator.java"


# instance fields
.field public cornerValues:[F

.field public noiseFactor:F

.field public final xys:[I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;-><init>(II)V

    const/16 p1, 0x8

    .line 21
    new-array p1, p1, [I

    iput-object p1, p0, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->xys:[I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 25
    iput p1, p0, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->noiseFactor:F

    return-void
.end method


# virtual methods
.method public generate(Ljava/util/Random;)V
    .registers 16

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    add-int/lit8 v7, v1, 0x1

    .line 43
    invoke-virtual {p0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v7, v2, :cond_15

    mul-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_15
    mul-int v2, v7, v7

    .line 48
    new-array v6, v2, [F

    .line 49
    iget-object v2, p0, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->cornerValues:[F

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v9, 0x0

    if-nez v2, :cond_3b

    const/4 v2, 0x4

    .line 51
    new-array v2, v2, [F

    .line 52
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v5

    aput v5, v2, v9

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v5

    aput v5, v2, v0

    .line 53
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v5

    aput v5, v2, v4

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v5

    aput v5, v2, v3

    .line 55
    :cond_3b
    aget v5, v2, v9

    aput v5, v6, v9

    .line 56
    aget v5, v2, v0

    aput v5, v6, v1

    mul-int v5, v1, v7

    .line 57
    aget v4, v2, v4

    aput v4, v6, v5

    add-int/2addr v5, v1

    .line 58
    aget v2, v2, v3

    aput v2, v6, v5

    .line 60
    iget v2, p0, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->noiseFactor:F

    move v5, v1

    move v1, v2

    :goto_52
    if-lt v5, v0, :cond_d5

    move v4, v9

    :goto_55
    add-int/lit8 v2, v4, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    if-ge v2, v7, :cond_7f

    move v3, v9

    :goto_5e
    add-int/lit8 v2, v3, 0x1

    if-ge v2, v7, :cond_7d

    .line 65
    div-int/lit8 v2, v5, 0x2

    add-int v8, v3, v2

    add-int/2addr v2, v4

    mul-int/2addr v2, v7

    add-int v12, v8, v2

    move v8, v7

    move-object v2, p0

    .line 67
    invoke-virtual/range {v2 .. v8}, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->getDiamondAverage(III[FII)F

    move-result v8

    .line 68
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v10

    sub-float v2, v11, v2

    mul-float/2addr v2, v1

    add-float/2addr v8, v2

    aput v8, v6, v12

    add-int/2addr v3, v5

    goto :goto_5e

    :cond_7d
    add-int/2addr v4, v5

    goto :goto_55

    :cond_7f
    move v4, v9

    :goto_80
    add-int/lit8 v2, v4, 0x1

    if-ge v2, v7, :cond_a5

    move v12, v9

    :goto_85
    if-ge v12, v7, :cond_a3

    .line 75
    div-int/lit8 v2, v5, 0x2

    add-int v3, v4, v2

    mul-int/2addr v3, v7

    add-int v13, v12, v3

    sub-int v3, v12, v2

    move v8, v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->getSquareAverage(III[FII)F

    move-result v3

    .line 76
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v2, v10

    sub-float v2, v11, v2

    mul-float/2addr v2, v1

    add-float/2addr v3, v2

    aput v3, v6, v13

    add-int/2addr v12, v5

    goto :goto_85

    :cond_a3
    add-int/2addr v4, v5

    goto :goto_80

    :cond_a5
    move v12, v9

    :goto_a6
    if-ge v12, v7, :cond_cd

    move v3, v9

    :goto_a9
    add-int/lit8 v2, v3, 0x1

    if-ge v2, v7, :cond_ca

    .line 81
    div-int/lit8 v2, v5, 0x2

    add-int v4, v3, v2

    mul-int v8, v12, v7

    add-int v13, v4, v8

    sub-int v4, v12, v2

    move v8, v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->getSquareAverage(III[FII)F

    move-result v4

    .line 82
    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v8, v10

    sub-float v8, v11, v8

    mul-float/2addr v8, v1

    add-float/2addr v4, v8

    aput v4, v6, v13

    add-int/2addr v3, v5

    goto :goto_a9

    :cond_ca
    move-object v2, p0

    add-int/2addr v12, v5

    goto :goto_a6

    :cond_cd
    move-object v2, p0

    .line 86
    div-int/lit8 v5, v5, 0x2

    .line 87
    iget v3, v2, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->noiseFactor:F

    mul-float/2addr v1, v3

    goto/16 :goto_52

    :cond_d5
    move-object v2, p0

    move p1, v9

    .line 90
    :goto_d7
    invoke-virtual {p0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_f2

    move v0, v9

    .line 91
    :goto_de
    invoke-virtual {p0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_ef

    mul-int v1, p1, v7

    add-int/2addr v1, v0

    .line 92
    aget v1, v6, v1

    invoke-virtual {p0, v0, p1, v1}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->setValue(IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_de

    :cond_ef
    add-int/lit8 p1, p1, 0x1

    goto :goto_d7

    :cond_f2
    return-void
.end method

.method public final getAverage([FII)F
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_4
    const/16 v3, 0x8

    if-ge v0, v3, :cond_22

    .line 130
    iget-object v3, p0, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->xys:[I

    aget v4, v3, v0

    add-int/lit8 v5, v0, 0x1

    .line 131
    aget v3, v3, v5

    if-ltz v4, :cond_1f

    if-ltz v3, :cond_1f

    if-ge v4, p2, :cond_1f

    if-ge v3, p3, :cond_1f

    mul-int/2addr v3, p2

    add-int/2addr v4, v3

    .line 133
    aget v3, p1, v4

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    :cond_1f
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_22
    int-to-float p1, v1

    div-float/2addr v2, p1

    return v2
.end method

.method public final getDiamondAverage(III[FII)F
    .registers 10

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->xys:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    .line 99
    aput p2, v0, v1

    add-int v1, p1, p3

    const/4 v2, 0x2

    .line 100
    aput v1, v0, v2

    const/4 v2, 0x3

    .line 101
    aput p2, v0, v2

    const/4 v2, 0x4

    .line 102
    aput p1, v0, v2

    add-int/2addr p2, p3

    const/4 p1, 0x5

    .line 103
    aput p2, v0, p1

    const/4 p1, 0x6

    .line 104
    aput v1, v0, p1

    const/4 p1, 0x7

    .line 105
    aput p2, v0, p1

    .line 107
    invoke-virtual {p0, p4, p5, p6}, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->getAverage([FII)F

    move-result p1

    return p1
.end method

.method public final getSquareAverage(III[FII)F
    .registers 11

    .line 111
    div-int/lit8 v0, p3, 0x2

    .line 113
    iget-object v1, p0, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->xys:[I

    add-int v2, p1, v0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    .line 114
    aput p2, v1, v3

    const/4 v3, 0x2

    .line 115
    aput p1, v1, v3

    add-int/2addr v0, p2

    const/4 v3, 0x3

    .line 116
    aput v0, v1, v3

    const/4 v3, 0x4

    add-int/2addr p1, p3

    .line 117
    aput p1, v1, v3

    const/4 p1, 0x5

    .line 118
    aput v0, v1, p1

    const/4 p1, 0x6

    .line 119
    aput v2, v1, p1

    const/4 p1, 0x7

    add-int/2addr p2, p3

    .line 120
    aput p2, v1, p1

    .line 122
    invoke-virtual {p0, p4, p5, p6}, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->getAverage([FII)F

    move-result p1

    return p1
.end method

.method public setCornerValues([F)V
    .registers 2

    .line 37
    iput-object p1, p0, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->cornerValues:[F

    return-void
.end method
