###### Class info.flowersoft.theotown.components.traffic.ReachabilityMap (info.flowersoft.theotown.components.traffic.ReachabilityMap)
.class public final Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;
.super Ljava/lang/Object;
.source "ReachabilityMap.kt"


# instance fields
.field public final cellHeight:I

.field public final cellWidth:I

.field public final data:[B

.field public final gridHeight:I

.field public final gridWidth:I

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->width:I

    .line 10
    iput p2, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->height:I

    const/16 v0, 0x8

    .line 12
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridWidth:I

    .line 13
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridHeight:I

    .line 14
    div-int/2addr p1, v1

    iput p1, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->cellWidth:I

    .line 15
    div-int/2addr p2, v0

    iput p2, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->cellHeight:I

    mul-int p1, v1, v0

    mul-int/2addr p1, v1

    mul-int/2addr p1, v0

    .line 17
    new-array p1, p1, [B

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->data:[B

    .line 20
    const-string p1, "Failed requirement."

    if-lez v1, :cond_30

    if-lez v0, :cond_2a

    return-void

    .line 21
    :cond_2a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 20
    :cond_30
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final drawDebug(Lio/blueflower/stapel2d/drawing/Engine;FF)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "engine"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 25
    invoke-virtual {v1, v7, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 27
    iget v8, v0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridHeight:I

    const/4 v9, 0x0

    move v10, v9

    :goto_12
    if-ge v10, v8, :cond_62

    .line 28
    iget v11, v0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridWidth:I

    move v12, v9

    :goto_17
    if-ge v12, v11, :cond_5b

    .line 29
    iget v13, v0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridHeight:I

    move v14, v9

    :goto_1c
    if-ge v14, v13, :cond_54

    .line 30
    iget v15, v0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridWidth:I

    move v2, v9

    :goto_21
    if-ge v2, v15, :cond_4d

    .line 33
    iget v3, v0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridWidth:I

    mul-int/2addr v3, v12

    add-int/2addr v3, v2

    iget v4, v0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridHeight:I

    mul-int/2addr v4, v10

    add-int/2addr v4, v14

    .line 36
    invoke-virtual {v0, v12, v10, v2, v14}, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->get(IIII)B

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42f00000    # 120.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    const/4 v6, 0x0

    .line 35
    invoke-static {v5, v6, v7}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v6

    move/from16 v5, p3

    move/from16 v16, v2

    move v2, v3

    move v3, v4

    move/from16 v4, p2

    .line 31
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->rect(Lio/blueflower/stapel2d/drawing/Engine;IIFFF)V

    add-int/lit8 v2, v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_21

    :cond_4d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_1c

    :cond_54
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_17

    :cond_5b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_12

    :cond_62
    return-void
.end method

.method public final foundNoWay(IIII)V
    .registers 11

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 59
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->modifyTile(IIIII)V

    return-void
.end method

.method public final foundWay(IIII)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 55
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->modifyTile(IIIII)V

    return-void
.end method

.method public final get(IIII)B
    .registers 7

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->data:[B

    iget v1, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridWidth:I

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    mul-int/2addr p3, v1

    iget p2, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridHeight:I

    mul-int/2addr p3, p2

    add-int/2addr p1, p3

    mul-int/2addr p4, v1

    mul-int/2addr p4, p2

    mul-int/2addr p4, v1

    add-int/2addr p1, p4

    aget-byte p1, v0, p1

    return p1
.end method

.method public final getCellHeight()I
    .registers 2

    .line 15
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->cellHeight:I

    return v0
.end method

.method public final getCellWidth()I
    .registers 2

    .line 14
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->cellWidth:I

    return v0
.end method

.method public final getGridHeight()I
    .registers 2

    .line 13
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridHeight:I

    return v0
.end method

.method public final getGridWidth()I
    .registers 2

    .line 12
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridWidth:I

    return v0
.end method

.method public final getHeight()I
    .registers 2

    .line 10
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->height:I

    return v0
.end method

.method public final getTile(IIII)F
    .registers 7

    .line 49
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->cellWidth:I

    div-int/2addr p1, v0

    iget v1, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->cellHeight:I

    div-int/2addr p2, v1

    .line 50
    div-int/2addr p3, v0

    div-int/2addr p4, v1

    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->get(IIII)B

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x42f00000    # 120.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method public final getWidth()I
    .registers 2

    .line 9
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->width:I

    return v0
.end method

.method public final modifyTile(IIIII)V
    .registers 12

    .line 64
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->cellWidth:I

    div-int v1, p1, v0

    iget v2, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->cellHeight:I

    div-int v3, p2, v2

    .line 65
    div-int v0, p3, v0

    div-int v2, p4, v2

    .line 63
    invoke-virtual {p0, v1, v3, v0, v2}, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->get(IIII)B

    move-result v0

    const/16 v1, 0x7f

    mul-int/2addr p5, v1

    sub-int/2addr p5, v0

    .line 67
    div-int/lit8 p5, p5, 0xa

    add-int/2addr v0, p5

    const/16 p5, -0x7f

    invoke-static {v0, p5, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p5

    int-to-byte v5, p5

    .line 69
    iget p5, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->cellWidth:I

    div-int v1, p1, p5

    iget p1, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->cellHeight:I

    div-int v2, p2, p1

    .line 70
    div-int v3, p3, p5

    div-int v4, p4, p1

    move-object v0, p0

    .line 68
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->set(IIIIB)V

    return-void
.end method

.method public final rect(Lio/blueflower/stapel2d/drawing/Engine;IIFFF)V
    .registers 16

    int-to-float v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 79
    iget v2, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridWidth:I

    div-int/2addr p2, v2

    int-to-float p2, p2

    add-float/2addr v0, p2

    add-float v4, v0, p4

    .line 80
    iget p2, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridHeight:I

    mul-int p4, p2, p2

    sub-int/2addr p4, p3

    add-int/lit8 p4, p4, -0x2

    int-to-float p4, p4

    mul-float/2addr v1, p4

    div-int/2addr p3, p2

    int-to-float p2, p3

    sub-float/2addr v1, p2

    add-float v5, v1, p5

    const/high16 p2, 0x3f000000    # 0.5f

    cmpg-float p3, p6, p2

    const/16 p4, 0x1fe

    const/16 p5, 0xff

    if-gez p3, :cond_2d

    int-to-float p3, p4

    sub-float/2addr p2, p6

    mul-float/2addr p3, p2

    float-to-int p2, p3

    rsub-int p2, p2, 0xff

    .line 84
    invoke-virtual {p1, p5, p2, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    goto :goto_36

    :cond_2d
    int-to-float p3, p4

    sub-float/2addr p6, p2

    mul-float/2addr p3, p6

    float-to-int p2, p3

    rsub-int p2, p2, 0xff

    .line 87
    invoke-virtual {p1, p2, p2, p5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    :goto_36
    const/16 p2, 0xe6

    .line 90
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 92
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 94
    sget v8, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/high16 v6, 0x3f800000    # 1.0f

    move v7, v6

    move-object v2, p1

    .line 91
    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    return-void
.end method

.method public final set(IIIIB)V
    .registers 8

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->data:[B

    iget v1, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridWidth:I

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    mul-int/2addr p3, v1

    iget p2, p0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->gridHeight:I

    mul-int/2addr p3, p2

    add-int/2addr p1, p3

    mul-int/2addr p4, v1

    mul-int/2addr p4, p2

    mul-int/2addr p4, v1

    add-int/2addr p1, p4

    aput-byte p5, v0, p1

    return-void
.end method
