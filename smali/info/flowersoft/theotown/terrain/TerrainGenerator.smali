###### Class info.flowersoft.theotown.terrain.TerrainGenerator (info.flowersoft.theotown.terrain.TerrainGenerator)
.class public abstract Linfo/flowersoft/theotown/terrain/TerrainGenerator;
.super Ljava/lang/Object;
.source "TerrainGenerator.java"


# instance fields
.field public final data:[F

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->width:I

    .line 17
    iput p2, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->height:I

    mul-int/2addr p1, p2

    .line 18
    new-array p1, p1, [F

    iput-object p1, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->data:[F

    return-void
.end method


# virtual methods
.method public add(F)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 72
    :goto_2
    iget v2, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->height:I

    if-ge v1, v2, :cond_1a

    move v2, v0

    .line 73
    :goto_7
    iget v3, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->width:I

    if-ge v2, v3, :cond_17

    .line 74
    iget-object v4, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->data:[F

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    aget v5, v4, v3

    add-float/2addr v5, p1

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    return-void
.end method

.method public abstract generate(Ljava/util/Random;)V
.end method

.method public final getHeight()I
    .registers 2

    .line 34
    iget v0, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->height:I

    return v0
.end method

.method public getMaxValue()F
    .registers 7

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->data:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    move v2, v1

    .line 53
    :goto_6
    iget v3, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->height:I

    if-ge v2, v3, :cond_1f

    move v3, v1

    .line 54
    :goto_b
    iget v4, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->width:I

    if-ge v3, v4, :cond_1c

    .line 55
    iget-object v5, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->data:[F

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    aget v4, v5, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1f
    return v0
.end method

.method public getMinValue()F
    .registers 7

    .line 42
    iget-object v0, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->data:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    move v2, v1

    .line 43
    :goto_6
    iget v3, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->height:I

    if-ge v2, v3, :cond_1f

    move v3, v1

    .line 44
    :goto_b
    iget v4, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->width:I

    if-ge v3, v4, :cond_1c

    .line 45
    iget-object v5, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->data:[F

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    aget v4, v5, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1f
    return v0
.end method

.method public getNiveau(FF)F
    .registers 13

    .line 88
    invoke-virtual {p0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getMinValue()F

    move-result v0

    .line 89
    invoke-virtual {p0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getMaxValue()F

    move-result v1

    add-float v2, v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    :goto_c
    div-float/2addr v2, v3

    sub-float v4, v2, v0

    cmpl-float v4, v4, p2

    if-lez v4, :cond_41

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 94
    :goto_16
    iget v7, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->height:I

    if-ge v5, v7, :cond_31

    move v7, v4

    .line 95
    :goto_1b
    iget v8, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->width:I

    if-ge v7, v8, :cond_2e

    .line 96
    iget-object v9, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->data:[F

    mul-int/2addr v8, v5

    add-int/2addr v8, v7

    aget v8, v9, v8

    cmpg-float v8, v8, v2

    if-gez v8, :cond_2b

    add-int/lit8 v6, v6, 0x1

    :cond_2b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_31
    int-to-float v4, v6

    .line 100
    iget v5, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->width:I

    mul-int/2addr v5, v7

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpl-float v4, v4, p1

    if-lez v4, :cond_3d

    move v1, v2

    goto :goto_3e

    :cond_3d
    move v0, v2

    :goto_3e
    add-float v2, v1, v0

    goto :goto_c

    :cond_41
    return v2
.end method

.method public final getValue(II)F
    .registers 5

    .line 22
    iget-object v0, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->data:[F

    iget v1, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->width:I

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method

.method public final getValues()[F
    .registers 2

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->data:[F

    return-object v0
.end method

.method public final getWidth()I
    .registers 2

    .line 30
    iget v0, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->width:I

    return v0
.end method

.method public multiply(F)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 80
    :goto_2
    iget v2, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->height:I

    if-ge v1, v2, :cond_1a

    move v2, v0

    .line 81
    :goto_7
    iget v3, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->width:I

    if-ge v2, v3, :cond_17

    .line 82
    iget-object v4, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->data:[F

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    aget v5, v4, v3

    mul-float/2addr v5, p1

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    return-void
.end method

.method public normalize()V
    .registers 10

    .line 62
    invoke-virtual {p0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getMinValue()F

    move-result v0

    .line 63
    invoke-virtual {p0}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getMaxValue()F

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 64
    :goto_a
    iget v4, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->height:I

    if-ge v3, v4, :cond_28

    move v4, v2

    .line 65
    :goto_f
    iget v5, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->width:I

    if-ge v4, v5, :cond_25

    .line 66
    iget-object v6, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->data:[F

    mul-int v7, v3, v5

    add-int/2addr v7, v4

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    aget v5, v6, v5

    sub-float/2addr v5, v0

    sub-float v8, v1, v0

    div-float/2addr v5, v8

    aput v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_28
    return-void
.end method

.method public final setValue(IIF)V
    .registers 6

    .line 38
    iget-object v0, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->data:[F

    iget v1, p0, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->width:I

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    aput p3, v0, p1

    return-void
.end method
