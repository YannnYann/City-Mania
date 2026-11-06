###### Class info.flowersoft.theotown.ui.selectable.SelectableRoadDraft (info.flowersoft.theotown.ui.selectable.SelectableRoadDraft)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableRoadDraft.java"


# instance fields
.field public final draft:Linfo/flowersoft/theotown/draft/RoadDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RoadDraft;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 28
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    return-void
.end method


# virtual methods
.method public drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 65
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v4, :cond_12

    .line 66
    invoke-super/range {p0 .. p3}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V

    return-void

    .line 70
    :cond_12
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 71
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v5

    .line 73
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->hasRequirement()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_28

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isUnlocked()Z

    move-result v6

    if-nez v6, :cond_28

    move v6, v8

    goto :goto_29

    :cond_28
    move v6, v7

    :goto_29
    if-eqz v6, :cond_35

    const/16 v9, 0x32

    .line 75
    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 76
    sget-object v9, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 80
    :cond_35
    iget-object v9, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v9, v9, Linfo/flowersoft/theotown/draft/RoadDraft;->decorationBuildingIds:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_50

    sget-object v9, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v10, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v10, v10, Linfo/flowersoft/theotown/draft/RoadDraft;->decorationBuildingIds:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/draft/Draft;

    goto :goto_51

    :cond_50
    const/4 v9, 0x0

    .line 81
    :goto_51
    iget-object v10, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v11, v10, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    const/4 v12, 0x2

    if-le v11, v8, :cond_67

    rem-int/2addr v11, v12

    if-ne v11, v8, :cond_67

    if-eqz v9, :cond_67

    instance-of v11, v9, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v11, :cond_67

    iget-boolean v11, v10, Linfo/flowersoft/theotown/draft/RoadDraft;->devoted:Z

    if-eqz v11, :cond_67

    move v11, v8

    goto :goto_68

    :cond_67
    move v11, v7

    .line 82
    :goto_68
    iget v10, v10, Linfo/flowersoft/theotown/draft/RoadDraft;->minLevel:I

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-lez v10, :cond_a3

    .line 85
    iget-object v10, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v13, v10, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    if-ne v13, v8, :cond_a3

    iget-object v10, v10, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    if-eqz v10, :cond_a3

    array-length v13, v10

    const/16 v14, 0x8

    if-le v13, v14, :cond_a3

    .line 86
    array-length v13, v10

    const/16 v15, 0x14

    if-lt v13, v15, :cond_96

    int-to-float v13, v2

    int-to-float v14, v3

    const/high16 v15, 0x420c0000    # 35.0f

    mul-float/2addr v15, v5

    add-float/2addr v14, v15

    const/16 v15, 0xe

    .line 88
    aget v10, v10, v15

    invoke-virtual {v1, v4, v13, v14, v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_a3

    :cond_96
    int-to-float v13, v2

    int-to-float v15, v3

    const/high16 v16, 0x422c0000    # 43.0f

    mul-float v16, v16, v5

    add-float v15, v15, v16

    .line 95
    aget v10, v10, v14

    invoke-virtual {v1, v4, v13, v15, v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 103
    :cond_a3
    :goto_a3
    iget-object v10, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v10, v10, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    sub-int/2addr v10, v8

    :goto_a8
    if-ltz v10, :cond_1d5

    if-eqz v11, :cond_bb

    .line 106
    iget-object v14, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v14, v14, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    sub-int/2addr v14, v8

    if-ge v10, v14, :cond_b5

    const/4 v14, 0x7

    goto :goto_b6

    :cond_b5
    const/4 v14, 0x5

    :goto_b6
    if-lez v10, :cond_bc

    or-int/lit8 v14, v14, 0x8

    goto :goto_bc

    :cond_bb
    const/4 v14, 0x5

    .line 109
    :cond_bc
    :goto_bc
    iget-object v15, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    move/from16 v16, v7

    iget-object v7, v15, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v17, v7, v14

    move/from16 v18, v12

    .line 110
    iget-boolean v12, v15, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWay:Z

    if-eqz v12, :cond_d4

    iget v12, v15, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    div-int/lit8 v12, v12, 0x2

    if-lt v10, v12, :cond_d4

    add-int/lit8 v12, v14, 0x20

    .line 111
    aget v17, v7, v12

    .line 113
    :cond_d4
    iget v7, v15, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    if-le v7, v8, :cond_ed

    rem-int/lit8 v12, v7, 0x2

    if-ne v12, v8, :cond_ed

    div-int/lit8 v7, v7, 0x2

    if-ne v10, v7, :cond_ed

    if-eqz v9, :cond_ed

    .line 115
    instance-of v7, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v7, :cond_f0

    .line 116
    move-object v7, v9

    check-cast v7, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v17, v7, v16

    :cond_ed
    :goto_ed
    move/from16 v7, v17

    goto :goto_fc

    .line 117
    :cond_f0
    instance-of v7, v9, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v7, :cond_ed

    .line 118
    move-object v7, v9

    check-cast v7, Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v17, v7, v14

    goto :goto_ed

    :goto_fc
    int-to-float v12, v2

    .line 123
    invoke-virtual {v4, v7}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v14

    mul-int/lit8 v15, v10, 0x20

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    add-float/2addr v14, v15

    mul-float/2addr v14, v5

    add-float/2addr v14, v12

    int-to-float v13, v3

    rsub-int/lit8 v19, v10, 0x2

    iget-object v8, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v8, v8, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    add-int v8, v19, v8

    mul-int/lit8 v8, v8, 0x10

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    mul-float/2addr v8, v5

    add-float/2addr v8, v13

    .line 122
    invoke-virtual {v1, v4, v14, v8, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 127
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v14, v8, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWay:Z

    if-eqz v14, :cond_13f

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWayFrames:[I

    if-eqz v8, :cond_13f

    .line 128
    aget v7, v8, v18

    .line 130
    invoke-virtual {v4, v7}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v8

    add-float/2addr v8, v15

    mul-float/2addr v8, v5

    add-float/2addr v8, v12

    iget-object v14, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v14, v14, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    add-int v14, v19, v14

    mul-int/lit8 v14, v14, 0x10

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    mul-float/2addr v14, v5

    add-float/2addr v14, v13

    .line 129
    invoke-virtual {v1, v4, v8, v14, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 135
    :cond_13f
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v14, v8, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpots:Ljava/util/List;

    if-eqz v14, :cond_1ca

    iget v14, v8, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1ca

    .line 136
    iget-object v8, v8, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpotIndices:[[I

    if-nez v8, :cond_18c

    move/from16 v7, v16

    .line 138
    :goto_150
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpots:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1ca

    .line 139
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpots:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/draft/AnimationSpot;

    const/4 v14, 0x5

    .line 140
    invoke-virtual {v8, v14}, Linfo/flowersoft/theotown/draft/AnimationSpot;->isTargeted(I)Z

    move-result v17

    if-eqz v17, :cond_189

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    move/from16 v17, v14

    array-length v14, v8

    if-lez v14, :cond_189

    .line 141
    array-length v14, v8

    rem-int v14, v17, v14

    aget v8, v8, v14

    .line 142
    iget-object v14, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v14, v14, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    add-int v14, v19, v14

    mul-int/lit8 v14, v14, 0x10

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    mul-float/2addr v14, v5

    add-float/2addr v14, v13

    invoke-virtual {v1, v4, v12, v14, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_189
    add-int/lit8 v7, v7, 0x1

    goto :goto_150

    .line 149
    :cond_18c
    array-length v14, v8

    rem-int/2addr v7, v14

    aget-object v7, v8, v7

    move/from16 v8, v16

    .line 150
    :goto_192
    array-length v14, v7

    if-ge v8, v14, :cond_1ca

    .line 151
    iget-object v14, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v14, v14, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpots:Ljava/util/List;

    aget v15, v7, v8

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 152
    iget-object v15, v14, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    const/4 v2, 0x5

    .line 153
    invoke-virtual {v14, v2}, Linfo/flowersoft/theotown/draft/AnimationSpot;->isTargeted(I)Z

    move-result v14

    if-eqz v14, :cond_1c4

    iget-object v14, v15, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v15, v14

    if-lez v15, :cond_1c4

    .line 154
    array-length v15, v14

    rem-int v15, v2, v15

    aget v14, v14, v15

    .line 155
    iget-object v15, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v15, v15, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    add-int v15, v19, v15

    mul-int/lit8 v15, v15, 0x10

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    mul-float/2addr v15, v5

    add-float/2addr v15, v13

    invoke-virtual {v1, v4, v12, v15, v14}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_1c4
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p2

    const/4 v15, 0x1

    goto :goto_192

    :cond_1ca
    add-int/lit8 v10, v10, -0x1

    move/from16 v2, p2

    move/from16 v7, v16

    move/from16 v12, v18

    const/4 v8, 0x1

    goto/16 :goto_a8

    :cond_1d5
    if-eqz v6, :cond_1e6

    .line 166
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->getPreviewWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->getPreviewHeight()I

    move-result v2

    int-to-float v5, v2

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawLock(Lio/blueflower/stapel2d/drawing/Engine;IIFF)V

    :cond_1e6
    return-void
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    return-object v0
.end method

.method public getMonthlyPrice()J
    .registers 3

    .line 38
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->monthlyPrice:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPreviewHeight()I
    .registers 4

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v1, :cond_b

    .line 54
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewHeight()I

    move-result v0

    return v0

    .line 57
    :cond_b
    iget v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->minLevel:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 58
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x10

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v0, v0, 0xc

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method public getPreviewWidth()I
    .registers 3

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v1, :cond_b

    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewWidth()I

    move-result v0

    return v0

    :cond_b
    iget v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getPrice()J
    .registers 8

    .line 33
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/RoadDraft;IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public select()V
    .registers 4

    .line 172
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 173
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/RoadDraft;)Linfo/flowersoft/theotown/tools/RoadTool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
