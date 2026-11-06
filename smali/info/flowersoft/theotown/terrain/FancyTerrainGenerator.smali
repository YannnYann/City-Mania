###### Class info.flowersoft.theotown.terrain.FancyTerrainGenerator (info.flowersoft.theotown.terrain.FancyTerrainGenerator)
.class public Linfo/flowersoft/theotown/terrain/FancyTerrainGenerator;
.super Linfo/flowersoft/theotown/terrain/TerrainGenerator;
.source "FancyTerrainGenerator.java"


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final curry(F)F
    .registers 4

    .line 0
    mul-float v0, p1, p1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public generate(Ljava/util/Random;)V
    .registers 9

    .line 21
    new-instance v0, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;-><init>(II)V

    const/4 v1, 0x4

    .line 22
    new-array v1, v1, [F

    fill-array-data v1, :array_64

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->setCornerValues([F)V

    .line 23
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/terrain/DiamondSquareTerrainGenerator;->generate(Ljava/util/Random;)V

    const/4 p1, 0x0

    move v1, p1

    .line 25
    :goto_1b
    invoke-virtual {p0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_62

    move v2, p1

    .line 26
    :goto_22
    invoke-virtual {p0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_5f

    int-to-float v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    int-to-float v5, v1

    mul-float/2addr v5, v4

    .line 27
    invoke-virtual {p0, v0, v3, v5}, Linfo/flowersoft/theotown/terrain/FancyTerrainGenerator;->getInterpolatedValue(Linfo/flowersoft/theotown/terrain/TerrainGenerator;FF)F

    move-result v3

    .line 28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/terrain/FancyTerrainGenerator;->curry(F)F

    move-result v3

    mul-float/2addr v6, v3

    .line 29
    invoke-virtual {v0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {p0, v0, v3, v5}, Linfo/flowersoft/theotown/terrain/FancyTerrainGenerator;->getInterpolatedValue(Linfo/flowersoft/theotown/terrain/TerrainGenerator;FF)F

    move-result v3

    .line 30
    invoke-virtual {p0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/terrain/FancyTerrainGenerator;->curry(F)F

    move-result v3

    mul-float/2addr v4, v3

    .line 32
    invoke-virtual {p0, v0, v6, v4}, Linfo/flowersoft/theotown/terrain/FancyTerrainGenerator;->getInterpolatedValue(Linfo/flowersoft/theotown/terrain/TerrainGenerator;FF)F

    move-result v3

    .line 51
    invoke-virtual {p0, v2, v1, v3}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->setValue(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_62
    return-void

    nop

    :array_64
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final getInterpolatedValue(Linfo/flowersoft/theotown/terrain/TerrainGenerator;FF)F
    .registers 12

    .line 61
    invoke-virtual {p1}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getWidth()I

    move-result v0

    .line 62
    invoke-virtual {p1}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getHeight()I

    move-result v1

    .line 63
    :goto_8
    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v0

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_13

    int-to-float v2, v0

    sub-float/2addr p2, v2

    goto :goto_8

    :cond_13
    :goto_13
    neg-int v2, v0

    .line 64
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1e

    int-to-float v2, v0

    add-float/2addr p2, v2

    goto :goto_13

    .line 65
    :cond_1e
    :goto_1e
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_29

    int-to-float v2, v1

    sub-float/2addr p3, v2

    goto :goto_1e

    :cond_29
    :goto_29
    neg-int v2, v1

    .line 66
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_34

    int-to-float v2, v1

    add-float/2addr p3, v2

    goto :goto_29

    :cond_34
    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    .line 67
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float p2, v0, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v0, p2

    add-int/lit8 v1, v1, -0x1

    int-to-float p2, v1

    .line 68
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr p2, p3

    float-to-double v1, v0

    .line 69
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int p3, v3

    float-to-double v3, p2

    .line 70
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 72
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v3, p3

    sub-float/2addr v0, v3

    int-to-float v3, v5

    sub-float/2addr p2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v0

    sub-float/2addr v3, p2

    mul-float v6, v4, v3

    .line 77
    invoke-virtual {p1, p3, v5}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getValue(II)F

    move-result v7

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    add-float/2addr v6, v7

    mul-float/2addr v4, p2

    .line 78
    invoke-virtual {p1, p3, v2}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getValue(II)F

    move-result p3

    mul-float/2addr v4, p3

    add-float/2addr v6, v4

    mul-float/2addr v3, v0

    .line 79
    invoke-virtual {p1, v1, v5}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getValue(II)F

    move-result p3

    mul-float/2addr v3, p3

    add-float/2addr v6, v3

    mul-float/2addr v0, p2

    .line 80
    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getValue(II)F

    move-result p1

    mul-float/2addr v0, p1

    add-float/2addr v6, v0

    return v6
.end method
