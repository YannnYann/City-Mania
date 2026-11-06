###### Class info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft (info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableBuildingDraft.java"


# instance fields
.field public budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public currentFrame:I

.field public draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public maxX:I

.field public maxY:I

.field public minX:I

.field public minY:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 52
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 p2, 0x0

    .line 53
    iput p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->currentFrame:I

    .line 54
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 56
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->calculateBB()V

    return-void
.end method


# virtual methods
.method public build(Lio/blueflower/stapel2d/gui/Panel;)V
    .registers 12

    .line 61
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->build(Lio/blueflower/stapel2d/gui/Panel;)V

    .line 63
    sget-boolean p1, Linfo/flowersoft/theotown/resources/Settings;->useToolbarBuildtool:Z

    if-eqz p1, :cond_2a

    .line 64
    new-instance v9, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$1;

    invoke-direct {v9, p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$1;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;)V

    .line 79
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$2;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    invoke-interface {v9}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$2;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;)V

    :cond_2a
    return-void
.end method

.method public final calculateBB()V
    .registers 15

    .line 102
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 104
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->currentFrame:I

    array-length v3, v1

    rem-int/2addr v2, v3

    aget v1, v1, v2

    .line 105
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 106
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    .line 107
    iput v4, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->minX:I

    .line 108
    iput v4, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->minY:I

    .line 109
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->maxX:I

    .line 110
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->maxY:I

    .line 112
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    if-eqz v1, :cond_ac

    .line 113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 114
    iget-object v6, v5, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    move v7, v4

    .line 116
    :goto_50
    array-length v8, v6

    if-ge v7, v8, :cond_3f

    .line 117
    aget v8, v6, v7

    .line 118
    invoke-virtual {v0, v8}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v9

    neg-float v9, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 119
    invoke-virtual {v0, v8}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v10

    neg-float v10, v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 120
    invoke-virtual {v0, v8}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 121
    invoke-virtual {v0, v8}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 123
    iget v12, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->minX:I

    iget v13, v5, Linfo/flowersoft/theotown/draft/AnimationSpot;->x:I

    add-int/2addr v13, v2

    add-int/2addr v13, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iput v12, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->minX:I

    .line 124
    iget v12, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->minY:I

    iget v13, v5, Linfo/flowersoft/theotown/draft/AnimationSpot;->y:I

    add-int/2addr v13, v3

    add-int/2addr v13, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iput v12, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->minY:I

    .line 125
    iget v12, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->maxX:I

    iget v13, v5, Linfo/flowersoft/theotown/draft/AnimationSpot;->x:I

    add-int/2addr v13, v2

    add-int/2addr v13, v9

    add-int/2addr v13, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->maxX:I

    .line 126
    iget v9, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->maxY:I

    iget v11, v5, Linfo/flowersoft/theotown/draft/AnimationSpot;->y:I

    add-int/2addr v11, v3

    add-int/2addr v11, v10

    add-int/2addr v11, v8

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->maxY:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    .line 131
    :cond_ac
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    if-eqz v1, :cond_fb

    .line 132
    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->currentFrame:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v0

    .line 133
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->currentFrame:I

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v1

    .line 135
    iget v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->maxX:I

    add-int v3, v0, v1

    mul-int/lit8 v3, v3, 0x20

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->maxX:I

    .line 136
    iget v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->maxY:I

    mul-int/lit8 v3, v0, 0x10

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->maxY:I

    .line 137
    iget v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->minY:I

    neg-int v3, v1

    mul-int/lit8 v3, v3, 0x10

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x2

    .line 138
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    .line 137
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->minY:I

    :cond_fb
    return-void
.end method

.method public chargeDiamondsImmediately()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public countFrames()I
    .registers 5

    .line 340
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_12

    iget-boolean v2, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->animation:Z

    if-nez v2, :cond_12

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->selectableFrames:Z

    if-eqz v0, :cond_12

    array-length v0, v1

    return v0

    :cond_12
    return v3
.end method

.method public drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p2

    move/from16 v11, p3

    .line 254
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v3, :cond_12

    .line 255
    invoke-super/range {p0 .. p3}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V

    return-void

    .line 259
    :cond_12
    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_2b

    iget-object v2, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/Draft;->isUnlocked()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->getDiamondPrice()I

    move-result v2

    if-nez v2, :cond_2b

    move/from16 v17, v3

    goto :goto_2d

    :cond_2b
    move/from16 v17, v12

    .line 261
    :goto_2d
    sget-object v13, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 262
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v2

    div-int/lit16 v2, v2, 0xc8

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-nez v17, :cond_4c

    .line 263
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isSelectable()Z

    move-result v3

    if-nez v3, :cond_4a

    goto :goto_4c

    :cond_4a
    move v8, v2

    goto :goto_4d

    :cond_4c
    :goto_4c
    move v8, v12

    .line 264
    :goto_4d
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v4, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->currentFrame:I

    aget v4, v3, v4

    .line 265
    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->animation:Z

    if-eqz v2, :cond_5e

    array-length v2, v3

    rem-int v2, v8, v2

    aget v4, v3, v2

    .line 266
    :cond_5e
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v18

    .line 267
    invoke-virtual {v13, v4}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v2

    iget v3, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->minX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 268
    invoke-virtual {v13, v4}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v2

    iget v3, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->minY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float v2, v2, v18

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 269
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v2

    if-eqz v17, :cond_8e

    const/16 v3, 0x32

    .line 272
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 273
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 276
    :cond_8e
    iget-object v5, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v5, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    if-nez v3, :cond_ad

    int-to-float v1, v10

    move v3, v2

    int-to-float v2, v11

    move v4, v3

    int-to-float v3, v14

    move v6, v4

    int-to-float v4, v15

    move v7, v6

    .line 277
    iget v6, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->currentFrame:I

    move v9, v6

    move v12, v7

    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->drawBuilding(FFFFLinfo/flowersoft/theotown/draft/BuildingDraft;ILio/blueflower/stapel2d/drawing/Engine;II)V

    move/from16 v34, v12

    :goto_a7
    move-object/from16 v1, p1

    move v3, v10

    move v5, v11

    goto/16 :goto_2b5

    :cond_ad
    move v4, v2

    .line 279
    iget v1, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->currentFrame:I

    rsub-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    .line 280
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/draft/Composition;->listXY(I)[I

    move-result-object v2

    move v3, v12

    .line 281
    :goto_b9
    array-length v5, v2

    if-ge v3, v5, :cond_2b1

    .line 282
    aget v5, v2, v3

    add-int/lit8 v6, v3, 0x1

    .line 283
    aget v6, v2, v6

    .line 284
    iget-object v7, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v7, v5, v6, v1}, Linfo/flowersoft/theotown/draft/Composition;->toVisualX(III)I

    move-result v28

    .line 285
    iget-object v7, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v7, v5, v6, v1}, Linfo/flowersoft/theotown/draft/Composition;->toVisualY(III)I

    move-result v29

    .line 286
    iget-object v7, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v7, v5, v6}, Linfo/flowersoft/theotown/draft/Composition;->getBuilding(II)Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;

    move-result-object v7

    const/high16 v30, 0x41800000    # 16.0f

    const/high16 v31, 0x42000000    # 32.0f

    const/high16 v32, 0x40000000    # 2.0f

    if-eqz v7, :cond_15d

    .line 288
    iget-object v9, v7, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v12, v7, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->x:I

    move/from16 v21, v1

    iget v1, v7, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->y:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v23, 0x0

    move/from16 v25, v1

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v22, v9

    move/from16 v24, v12

    invoke-static/range {v19 .. v27}, Linfo/flowersoft/theotown/city/objects/Building;->isPivot(IIILinfo/flowersoft/theotown/draft/BuildingDraft;IIIII)Z

    move-result v1

    if-eqz v1, :cond_152

    int-to-float v1, v10

    add-int v5, v28, v29

    int-to-float v5, v5

    mul-float v5, v5, v18

    mul-float v5, v5, v31

    div-float v5, v5, v32

    add-float/2addr v1, v5

    int-to-float v5, v11

    sub-int v6, v28, v29

    int-to-float v6, v6

    mul-float v6, v6, v18

    mul-float v6, v6, v30

    div-float v6, v6, v32

    add-float/2addr v5, v6

    move v12, v3

    int-to-float v3, v14

    move v6, v4

    int-to-float v4, v15

    move-object v9, v2

    move v2, v5

    .line 289
    iget-object v5, v7, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    move/from16 v19, v1

    .line 293
    iget-boolean v1, v5, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    if-eqz v1, :cond_131

    iget v1, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->currentFrame:I

    rem-int/lit8 v1, v1, 0x4

    iget v7, v7, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->frame:I

    add-int/2addr v1, v7

    iget-object v7, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v7, v7

    rem-int/2addr v1, v7

    :goto_12f
    move-object v7, v9

    goto :goto_134

    :cond_131
    iget v1, v7, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->frame:I

    goto :goto_12f

    :goto_134
    iget v9, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->currentFrame:I

    move/from16 v20, v12

    move v12, v6

    move v6, v1

    move/from16 v1, v19

    move-object/from16 v19, v7

    move-object/from16 v7, p1

    .line 289
    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->drawBuilding(FFFFLinfo/flowersoft/theotown/draft/BuildingDraft;ILio/blueflower/stapel2d/drawing/Engine;II)V

    move-object/from16 v1, p1

    move v3, v10

    move v5, v11

    move/from16 v34, v12

    :goto_149
    move-object v7, v13

    move v11, v14

    move v12, v15

    move/from16 v10, v21

    const/16 v21, 0x0

    goto/16 :goto_2a0

    :cond_152
    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v1, p1

    move/from16 v34, v4

    move v3, v10

    move v5, v11

    goto :goto_149

    :cond_15d
    move/from16 v21, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move v12, v4

    move v1, v5

    move v2, v6

    .line 297
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/draft/Composition;->hasRoad(II)Z

    move-result v3

    if-eqz v3, :cond_24f

    .line 298
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/draft/Composition;->getMinRoadLevel(II)I

    move-result v3

    .line 299
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/draft/Composition;->getMaxRoadLevel(II)I

    move-result v4

    :goto_180
    if-gt v3, v4, :cond_24f

    .line 301
    iget-object v5, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v5, v1, v2, v3}, Linfo/flowersoft/theotown/draft/Composition;->getRoad(III)Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    move-result-object v5

    if-eqz v5, :cond_227

    .line 303
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v6, v1, v2, v3}, Linfo/flowersoft/theotown/draft/Composition;->getRoadUpDir(III)I

    move-result v6

    .line 304
    iget-object v7, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v7, v1, v2, v3}, Linfo/flowersoft/theotown/draft/Composition;->getRoadAlignment(III)I

    move-result v7

    .line 305
    iget-object v9, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v9, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v9, v1, v2, v3}, Linfo/flowersoft/theotown/draft/Composition;->getRoadDirectionIndex(III)I

    move-result v9

    if-lez v6, :cond_1ad

    .line 306
    invoke-virtual {v5}, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->getAlign()I

    move-result v22

    :goto_1aa
    move/from16 v23, v4

    goto :goto_1bc

    :cond_1ad
    if-gez v6, :cond_1b8

    invoke-virtual {v5}, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->getAlign()I

    move-result v22

    invoke-static/range {v22 .. v22}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v22

    goto :goto_1aa

    :cond_1b8
    move/from16 v23, v4

    const/16 v22, 0x0

    .line 307
    :goto_1bc
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    .line 308
    invoke-virtual {v4, v1, v2, v3}, Linfo/flowersoft/theotown/draft/Composition;->getRoadDecoration(III)Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;

    move-result-object v4

    move/from16 v24, v6

    .line 309
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    .line 310
    invoke-virtual {v6, v1, v2, v3}, Linfo/flowersoft/theotown/draft/Composition;->getBusStop(III)Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;

    move-result-object v6

    .line 312
    iget-object v5, v5, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    move/from16 v25, v1

    int-to-float v1, v10

    move/from16 v26, v1

    add-int v1, v28, v29

    int-to-float v1, v1

    mul-float v1, v1, v18

    mul-float v1, v1, v31

    div-float v1, v1, v32

    add-float v1, v26, v1

    move/from16 v26, v1

    int-to-float v1, v11

    move/from16 v27, v1

    sub-int v1, v28, v29

    int-to-float v1, v1

    mul-float v1, v1, v18

    mul-float v1, v1, v30

    div-float v1, v1, v32

    add-float v1, v27, v1

    move v11, v14

    iget v14, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->currentFrame:I

    const/16 v27, 0x0

    if-eqz v4, :cond_1fa

    .line 316
    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    goto :goto_1fc

    :cond_1fa
    move-object/from16 v4, v27

    :goto_1fc
    if-eqz v6, :cond_21e

    .line 317
    iget-object v6, v6, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-object/from16 v16, v6

    :goto_202
    move/from16 v36, v2

    move/from16 v34, v12

    move-object/from16 v33, v13

    move v12, v15

    move/from16 v10, v21

    move/from16 v2, v24

    move/from16 v35, v25

    move/from16 v6, v26

    const/16 v21, 0x0

    move-object v15, v4

    move v13, v8

    move v4, v9

    move/from16 v9, v22

    move v8, v3

    move v3, v7

    move v7, v1

    move-object/from16 v1, p1

    goto :goto_221

    :cond_21e
    move-object/from16 v16, v27

    goto :goto_202

    .line 312
    :goto_221
    invoke-virtual/range {v0 .. v16}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->drawRoad(Lio/blueflower/stapel2d/drawing/Engine;IIILinfo/flowersoft/theotown/draft/RoadDraft;FFIIIIIIILinfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/draft/BusStopDraft;)V

    move v3, v8

    move v8, v13

    goto :goto_239

    :cond_227
    move/from16 v35, v1

    move/from16 v36, v2

    move/from16 v23, v4

    move/from16 v34, v12

    move-object/from16 v33, v13

    move v11, v14

    move v12, v15

    move/from16 v10, v21

    const/16 v21, 0x0

    move-object/from16 v1, p1

    :goto_239
    add-int/lit8 v3, v3, 0x1

    move/from16 v21, v10

    move v14, v11

    move v15, v12

    move/from16 v4, v23

    move-object/from16 v13, v33

    move/from16 v12, v34

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v10, p2

    move/from16 v11, p3

    goto/16 :goto_180

    :cond_24f
    move/from16 v35, v1

    move/from16 v36, v2

    move/from16 v34, v12

    move-object/from16 v33, v13

    move v11, v14

    move v12, v15

    move/from16 v10, v21

    const/16 v21, 0x0

    move-object/from16 v1, p1

    .line 321
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/draft/Composition;->getTree(II)Linfo/flowersoft/theotown/draft/Composition$CompositeTree;

    move-result-object v2

    move/from16 v3, p2

    if-eqz v2, :cond_29c

    int-to-float v4, v3

    add-int v5, v28, v29

    int-to-float v5, v5

    mul-float v5, v5, v18

    mul-float v5, v5, v31

    div-float v5, v5, v32

    add-float/2addr v4, v5

    int-to-float v5, v11

    add-float/2addr v4, v5

    move/from16 v5, p3

    int-to-float v6, v5

    sub-int v7, v28, v29

    int-to-float v7, v7

    mul-float v7, v7, v18

    mul-float v7, v7, v30

    div-float v7, v7, v32

    add-float/2addr v6, v7

    int-to-float v7, v12

    add-float/2addr v6, v7

    .line 323
    iget-object v7, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v9, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->frame:I

    iget v7, v7, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    mul-int/2addr v2, v7

    aget v2, v9, v2

    move-object/from16 v7, v33

    invoke-virtual {v1, v7, v4, v6, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_2a0

    :cond_29c
    move/from16 v5, p3

    move-object/from16 v7, v33

    :goto_2a0
    add-int/lit8 v2, v20, 0x2

    move-object v13, v7

    move v1, v10

    move v14, v11

    move v15, v12

    move/from16 v12, v21

    move/from16 v4, v34

    move v10, v3

    move v11, v5

    move v3, v2

    move-object/from16 v2, v19

    goto/16 :goto_b9

    :cond_2b1
    move/from16 v34, v4

    goto/16 :goto_a7

    :goto_2b5
    if-eqz v17, :cond_2ca

    .line 332
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->getPreviewWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->getPreviewHeight()I

    move-result v2

    int-to-float v2, v2

    move/from16 v37, v5

    move v5, v2

    move v2, v3

    move/from16 v3, v37

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawLock(Lio/blueflower/stapel2d/drawing/Engine;IIFF)V

    :cond_2ca
    move/from16 v12, v34

    .line 335
    invoke-virtual {v1, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public getActualCount()I
    .registers 3

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public getDiamondPrice()I
    .registers 3

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isBoughtInFeature(Linfo/flowersoft/theotown/city/City;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    return v0

    .line 152
    :cond_16
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    return v0
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;
    .registers 2

    .line 183
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-object v0
.end method

.method public bridge synthetic getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 34
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 345
    iget v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->currentFrame:I

    return v0
.end method

.method public getMaxCount()I
    .registers 2

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->maxCount:I

    return v0
.end method

.method public getMonthlyPrice()J
    .registers 3

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->monthlyPrice:J

    return-wide v0
.end method

.method public getPower()J
    .registers 3

    .line 173
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->power:J

    return-wide v0
.end method

.method public getPreviewHeight()I
    .registers 3

    .line 248
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v0, :cond_b

    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewHeight()I

    move-result v0

    return v0

    .line 249
    :cond_b
    iget v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->maxY:I

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->minY:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPreviewWidth()I
    .registers 3

    .line 242
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v0, :cond_b

    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewWidth()I

    move-result v0

    return v0

    .line 243
    :cond_b
    iget v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->maxX:I

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->minX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPrice()J
    .registers 4

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/BuildingDraft;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpgrades()I
    .registers 2

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->hasUpgrades()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getWater()J
    .registers 3

    .line 168
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-wide v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->water:J

    return-wide v0
.end method

.method public select()V
    .registers 4

    .line 198
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 200
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->countFrames()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1a

    .line 201
    new-instance v0, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->currentFrame:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/BuildingDraft;I)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object v0

    goto :goto_27

    .line 203
    :cond_1a
    new-instance v0, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object v0

    .line 205
    :goto_27
    instance-of v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->getDiamondPrice()I

    move-result v1

    if-lez v1, :cond_42

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->chargeDiamondsImmediately()Z

    move-result v1

    if-nez v1, :cond_42

    .line 206
    move-object v1, v0

    check-cast v1, Linfo/flowersoft/theotown/tools/BuildingTool;

    .line 207
    new-instance v2, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;)V

    .line 235
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tools/BuildingTool;->setPostponedCharger(Linfo/flowersoft/theotown/tools/PostponedCharger;)V

    .line 237
    :cond_42
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

.method public setFrame(I)V
    .registers 2

    .line 350
    iput p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->currentFrame:I

    .line 351
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->calculateBB()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft.AnonymousClass1 (info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft$1)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$1;
.super Ljava/lang/Object;
.source "SelectableBuildingDraft.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->build(Lio/blueflower/stapel2d/gui/Panel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public lastCtr:I

.field public lastResult:Ljava/lang/String;

.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$1;->lastCtr:I

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 64
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$1;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .registers 4

    .line 70
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 71
    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$1;->lastCtr:I

    if-eq v0, v1, :cond_37

    .line 72
    iput v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$1;->lastCtr:I

    .line 73
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$1;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x938

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$1;->lastResult:Ljava/lang/String;

    return-object v0

    .line 75
    :cond_37
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$1;->lastResult:Ljava/lang/String;

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft.AnonymousClass2 (info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft$2)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$2;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "SelectableBuildingDraft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->build(Lio/blueflower/stapel2d/gui/Panel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

.field public final synthetic val$cmdText:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$2;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$2;->val$cmdText:Lio/blueflower/stapel2d/util/Getter;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 3

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$2;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$2;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 4

    .line 93
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$2;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->onSelect:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 95
    :cond_c
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$2;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v2, Linfo/flowersoft/theotown/tools/FindBuildingTool;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-direct {v2, v1, v0}, Linfo/flowersoft/theotown/tools/FindBuildingTool;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

.method public onUpdate()V
    .registers 2

    .line 82
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$2;->val$cmdText:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft.AnonymousClass3 (info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft$3)
.class Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;
.super Ljava/lang/Object;
.source "SelectableBuildingDraft.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/PostponedCharger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->select()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;


# direct methods
.method public static synthetic $r8$lambda$zkvd-XbsMEDFwyoVaTeSRyfwNnI(Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;)Ljava/lang/Boolean;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz p1, :cond_13

    const/4 p0, 0x1

    .line 223
    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/city/objects/Building;->setSpentDiamondsOn(Z)V

    .line 224
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_38

    .line 226
    :cond_13
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->getDiamondPrice()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revert build process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    iget-object p0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object p0, p0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    .line 228
    :goto_38
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 207
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canBeBuilt()Z
    .registers 3

    .line 210
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->getDiamondPrice()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public charge(Lio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 215
    new-instance v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    sget-object v2, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 216
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    const/16 v3, 0xbb2

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 217
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v3

    const/16 v4, 0x482

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    .line 218
    invoke-virtual {v4}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getMaster()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    .line 219
    invoke-virtual {v5}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->getDiamondPrice()I

    move-result v5

    int-to-long v5, v5

    new-instance v7, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, p1, p2}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;)V

    sget-object v9, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;->this$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v10, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    .line 232
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft$3$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.selectable.SelectableBuildingDraft$3$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;

.field public final synthetic f$1:Lio/blueflower/stapel2d/util/Getter;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/util/Getter;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/util/Getter;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;->$r8$lambda$zkvd-XbsMEDFwyoVaTeSRyfwNnI(Linfo/flowersoft/theotown/ui/selectable/SelectableBuildingDraft$3;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
