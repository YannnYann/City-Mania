###### Class info.flowersoft.theotown.drawing.TSMapBackgroundDrawer (info.flowersoft.theotown.drawing.TSMapBackgroundDrawer)
.class public final Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;
.super Ljava/lang/Object;
.source "TSMapBackgroundDrawer.kt"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final rectTex:Lio/blueflower/stapel2d/drawing/Texture;

.field public final rectU:F

.field public final rectV:F

.field public style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

.field public final texture:Lio/blueflower/stapel2d/drawing/Texture;

.field public final waterQuads:Lcom/badlogic/gdx/utils/FloatArray;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/drawing/TSMapStyle;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "city"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "style"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    .line 22
    iput-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    .line 30
    new-instance v2, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    .line 32
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v2

    iput-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->rectTex:Lio/blueflower/stapel2d/drawing/Texture;

    .line 37
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/4 v10, 0x4

    new-array v4, v10, [F

    invoke-virtual {v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Image;->getUVCoords(I[F)[F

    move-result-object v2

    const/4 v11, 0x0

    .line 38
    aget v3, v2, v11

    iput v3, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->rectU:F

    const/4 v12, 0x1

    .line 39
    aget v2, v2, v12

    iput v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->rectV:F

    .line 41
    new-instance v2, Linfo/flowersoft/theotown/city/MinimapRenderer;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/city/MinimapRenderer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 42
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v3

    .line 43
    invoke-virtual {v1, v11}, Linfo/flowersoft/theotown/city/City;->setRotation(I)V

    .line 44
    invoke-virtual {v2, v11}, Linfo/flowersoft/theotown/city/MinimapRenderer;->render(Z)V

    .line 45
    new-instance v4, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/MinimapRenderer;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/MinimapRenderer;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;-><init>(II)V

    .line 46
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/MinimapRenderer;->getData()[I

    move-result-object v5

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/MinimapRenderer;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/MinimapRenderer;->getHeight()I

    move-result v2

    invoke-virtual {v4, v5, v6, v2}, Lio/blueflower/stapel2d/drawing/DynamicTextureSource;->setData([III)V

    .line 47
    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/city/City;->setRotation(I)V

    .line 48
    new-instance v2, Lio/blueflower/stapel2d/drawing/Texture;

    invoke-direct {v2, v4}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    iput-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    const/16 v3, 0x2601

    .line 49
    invoke-virtual {v2, v3, v3}, Lio/blueflower/stapel2d/drawing/Texture;->setFiltering(II)V

    .line 52
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v13

    move v14, v11

    :goto_7c
    if-ge v14, v13, :cond_14d

    move v1, v11

    .line 54
    :goto_7f
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_147

    int-to-float v2, v1

    .line 56
    iget-object v3, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    sub-int/2addr v3, v12

    sub-int/2addr v3, v14

    int-to-float v3, v3

    .line 58
    iget-object v4, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, v1, v14}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_c5

    move v15, v1

    .line 60
    :goto_a0
    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    if-ge v15, v1, :cond_b7

    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, v15, v14}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result v1

    if-eqz v1, :cond_b7

    add-int/lit8 v15, v15, 0x1

    goto :goto_a0

    .line 62
    :cond_b7
    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    int-to-float v4, v15

    add-float v7, v3, v5

    move v5, v3

    move v6, v4

    move v8, v2

    move v9, v7

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->add(Lcom/badlogic/gdx/utils/FloatArray;FFFFFFFF)V

    :goto_c3
    move v1, v15

    goto :goto_7f

    :cond_c5
    move v4, v11

    move v6, v4

    :goto_c7
    if-ge v4, v10, :cond_f7

    .line 73
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v7

    .line 74
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v8

    .line 75
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v7

    .line 77
    iget-object v9, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    add-int/2addr v8, v1

    add-int/2addr v7, v14

    invoke-virtual {v9, v8, v7}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v9

    if-eqz v9, :cond_ed

    iget-object v9, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v9

    invoke-virtual {v9, v8, v7}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result v7

    if-eqz v7, :cond_ed

    move v7, v12

    goto :goto_ee

    :cond_ed
    move v7, v11

    .line 78
    :goto_ee
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->toInt(Z)I

    move-result v7

    shl-int/2addr v7, v4

    or-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_c7

    :cond_f7
    add-int/lit8 v15, v1, 0x1

    const/4 v1, 0x3

    if-eq v6, v1, :cond_136

    const/4 v1, 0x6

    if-eq v6, v1, :cond_128

    const/16 v1, 0x9

    if-eq v6, v1, :cond_118

    const/16 v1, 0xc

    if-eq v6, v1, :cond_108

    goto :goto_143

    .line 95
    :cond_108
    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    move v4, v2

    add-float v2, v4, v5

    move v7, v3

    add-float v3, v7, v5

    move v5, v3

    move v6, v4

    move v8, v2

    move v9, v3

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->add(Lcom/badlogic/gdx/utils/FloatArray;FFFFFFFF)V

    goto :goto_143

    .line 101
    :cond_118
    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    move v4, v2

    add-float v2, v4, v5

    move v7, v3

    add-float v3, v7, v5

    move v5, v3

    move v6, v2

    move v8, v2

    move v9, v3

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->add(Lcom/badlogic/gdx/utils/FloatArray;FFFFFFFF)V

    goto :goto_143

    .line 89
    :cond_128
    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    add-float v4, v2, v5

    add-float v7, v3, v5

    move v5, v3

    move v6, v2

    move v8, v2

    move v9, v3

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->add(Lcom/badlogic/gdx/utils/FloatArray;FFFFFFFF)V

    goto :goto_143

    .line 83
    :cond_136
    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    add-float v4, v2, v5

    add-float v7, v3, v5

    move v5, v3

    move v6, v4

    move v8, v2

    move v9, v3

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->add(Lcom/badlogic/gdx/utils/FloatArray;FFFFFFFF)V

    :goto_143
    move-object/from16 v0, p0

    goto/16 :goto_c3

    :cond_147
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_7c

    :cond_14d
    return-void
.end method


# virtual methods
.method public final add(Lcom/badlogic/gdx/utils/FloatArray;FFFFFFFF)V
    .registers 10

    .line 251
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/badlogic/gdx/utils/FloatArray;->add(FFFF)V

    .line 252
    invoke-virtual {p1, p6, p7, p8, p9}, Lcom/badlogic/gdx/utils/FloatArray;->add(FFFF)V

    return-void
.end method

.method public dispose()V
    .registers 2

    .line 256
    iget-object v0, p0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Texture;->release()V

    return-void
.end method

.method public final draw(Lio/blueflower/stapel2d/drawing/Engine;FFFF)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "engine"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->getMapColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 119
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v4, p2, v3

    sub-float v4, p4, v4

    mul-float v5, p3, v3

    sub-float v5, p5, v5

    .line 122
    iget-object v6, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, p2

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v8, p2, v7

    mul-float/2addr v8, v3

    add-float/2addr v6, v8

    .line 123
    iget-object v8, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, p3

    mul-float v7, v7, p3

    mul-float/2addr v7, v3

    add-float/2addr v8, v7

    .line 124
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    .line 118
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 129
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Texture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 130
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Texture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 132
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->getMapTintColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 134
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->texture:Lio/blueflower/stapel2d/drawing/Texture;

    .line 136
    iget-object v3, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p3

    add-float v6, p5, v3

    .line 137
    iget-object v3, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float v7, p4, v3

    iget-object v3, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p3

    add-float v8, p5, v3

    .line 138
    iget-object v3, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float v9, p4, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    move/from16 v5, p4

    move/from16 v10, p5

    move/from16 v3, p4

    move/from16 v4, p5

    .line 133
    invoke-virtual/range {v1 .. v15}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    .line 145
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->getWaterColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 147
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lkotlin/ranges/RangesKt___RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v5

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v6

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v16

    if-lez v16, :cond_d0

    if-le v5, v6, :cond_d4

    :cond_d0
    if-gez v16, :cond_163

    if-gt v6, v5, :cond_163

    :cond_d4
    move v2, v5

    .line 149
    :goto_d5
    iget-object v5, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->rectTex:Lio/blueflower/stapel2d/drawing/Texture;

    .line 150
    iget-object v7, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v7

    mul-float v7, v7, p2

    add-float v7, v7, p4

    iget-object v8, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v8

    mul-float v8, v8, p3

    add-float v8, v8, p5

    .line 151
    iget-object v9, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v10, v2, 0x2

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v9

    mul-float v9, v9, p2

    add-float v9, v9, p4

    iget-object v10, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v11, v2, 0x3

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v10

    mul-float v10, v10, p3

    add-float v10, v10, p5

    .line 152
    iget-object v11, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v12, v2, 0x4

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v11

    mul-float v11, v11, p2

    add-float v11, v11, p4

    iget-object v12, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v13, v2, 0x5

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v12

    mul-float v12, v12, p3

    add-float v12, v12, p5

    .line 153
    iget-object v13, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v14, v2, 0x6

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v13

    mul-float v13, v13, p2

    add-float v13, v13, p4

    iget-object v14, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->waterQuads:Lcom/badlogic/gdx/utils/FloatArray;

    add-int/lit8 v15, v2, 0x7

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v14

    mul-float v14, v14, p3

    add-float v14, v14, p5

    move v15, v3

    move v3, v7

    move v7, v11

    .line 154
    iget v11, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->rectU:F

    move/from16 v17, v4

    move v4, v8

    move v8, v12

    iget v12, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->rectV:F

    move/from16 v18, v15

    const/4 v15, 0x0

    move/from16 v19, v2

    move-object v2, v5

    move v5, v9

    move v9, v13

    move v13, v11

    move/from16 v20, v6

    move v6, v10

    move v10, v14

    move v14, v12

    move/from16 v21, v19

    move/from16 v0, v20

    .line 148
    invoke-virtual/range {v1 .. v15}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    move/from16 v5, v21

    if-eq v5, v0, :cond_163

    add-int v2, v5, v16

    move v6, v0

    const/4 v3, 0x0

    const/16 v4, 0x8

    move-object/from16 v0, p0

    goto/16 :goto_d5

    .line 158
    :cond_163
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    move-object/from16 v0, p0

    .line 161
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v10

    const/4 v11, 0x0

    :goto_16f
    const/high16 v8, 0x3f000000    # 0.5f

    if-ge v11, v10, :cond_22b

    .line 162
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v11}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v2

    instance-of v3, v2, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;

    if-eqz v3, :cond_181

    check-cast v2, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;

    :goto_17f
    move-object v9, v2

    goto :goto_183

    :cond_181
    const/4 v2, 0x0

    goto :goto_17f

    :goto_183
    if-nez v9, :cond_187

    goto/16 :goto_227

    .line 163
    :cond_187
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_227

    .line 165
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_19d

    .line 166
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->getNeighborColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_1a6

    .line 168
    :cond_19d
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->getNeighborInactiveColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 172
    :goto_1a6
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 173
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getX()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float v3, v3, p4

    .line 174
    iget-object v4, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v4

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v4, v4, p3

    add-float v4, v4, p5

    .line 175
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p2

    .line 176
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, p3

    .line 177
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->NP_REGION_BORDER:I

    .line 171
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 180
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_227

    .line 181
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->getNeighborNameColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 182
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    .line 183
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getName()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    mul-float v3, v3, p2

    add-float v3, v3, p4

    .line 185
    iget-object v4, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v4

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    mul-float v4, v4, p3

    add-float v4, v4, p5

    .line 186
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 187
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    move-object/from16 v7, p1

    .line 182
    invoke-virtual/range {v1 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    move-object v1, v7

    :cond_227
    :goto_227
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_16f

    .line 195
    :cond_22b
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->LANDMARK:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    .line 196
    iget-object v3, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getDrawer()Linfo/flowersoft/theotown/city/Drawer;

    move-result-object v3

    .line 197
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 198
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/city/Drawer;->begin(Lio/blueflower/stapel2d/drawing/Engine;)V

    const/high16 v4, 0x42000000    # 32.0f

    div-float v5, p2, v4

    .line 199
    iput v5, v3, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    div-float v4, p3, v4

    .line 200
    iput v4, v3, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    .line 201
    invoke-virtual {v1, v5, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 203
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_255
    if-ge v5, v4, :cond_2a6

    .line 204
    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v6, :cond_2a6

    .line 207
    iget-object v7, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->getLandmarkTintColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    invoke-virtual {v1, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 208
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v7

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v9

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v10

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v11

    invoke-virtual {v3, v7, v9, v10, v11}, Linfo/flowersoft/theotown/city/Drawer;->setTile(IIII)V

    const/4 v15, 0x0

    .line 209
    iput v15, v3, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    const/4 v7, 0x0

    .line 210
    iput v7, v3, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    .line 211
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, p2

    add-float v7, v7, p4

    iput v7, v3, Linfo/flowersoft/theotown/city/Drawer;->x:F

    .line 212
    iget-object v7, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    mul-float v7, v7, p3

    add-float v7, v7, p5

    iput v7, v3, Linfo/flowersoft/theotown/city/Drawer;->y:F

    .line 214
    invoke-virtual {v6, v3}, Linfo/flowersoft/theotown/city/objects/Building;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_255

    :cond_2a6
    const/4 v15, 0x0

    .line 217
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/Drawer;->end()V

    .line 218
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 222
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/drawing/TSMapStyle;->getGridColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 223
    iget-object v2, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v2

    const/16 v9, 0x8

    invoke-static {v15, v2, v9}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v10

    const/high16 v11, 0x3e800000    # 0.25f

    if-ltz v10, :cond_2ea

    move v12, v15

    .line 225
    :goto_2c7
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, v12

    mul-float v3, v3, p2

    mul-float v4, p2, v11

    sub-float/2addr v3, v4

    add-float v3, v3, p4

    mul-float v5, p2, v8

    .line 229
    iget-object v4, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v6, p3, v4

    .line 230
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move/from16 v4, p5

    .line 224
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    if-eq v12, v10, :cond_2ea

    add-int/lit8 v12, v12, 0x8

    move-object/from16 v1, p1

    goto :goto_2c7

    .line 233
    :cond_2ea
    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    invoke-static {v15, v1, v9}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v9

    if-ltz v9, :cond_319

    .line 235
    :goto_2f6
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v1, v15

    mul-float v1, v1, p3

    mul-float v3, p3, v11

    sub-float/2addr v1, v3

    add-float v4, v1, p5

    .line 238
    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, p2, v1

    mul-float v6, p3, v8

    .line 240
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move-object/from16 v1, p1

    move/from16 v3, p4

    .line 234
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    if-eq v15, v9, :cond_319

    add-int/lit8 v15, v15, 0x8

    goto :goto_2f6

    .line 243
    :cond_319
    invoke-virtual/range {p1 .. p1}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    return-void
.end method

.method public final setStyle(Linfo/flowersoft/theotown/drawing/TSMapStyle;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Linfo/flowersoft/theotown/drawing/TSMapBackgroundDrawer;->style:Linfo/flowersoft/theotown/drawing/TSMapStyle;

    return-void
.end method

.method public final toInt(Z)I
    .registers 2

    .line 0
    return p1
.end method
