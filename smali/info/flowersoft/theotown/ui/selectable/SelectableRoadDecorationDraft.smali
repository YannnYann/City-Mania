###### Class info.flowersoft.theotown.ui.selectable.SelectableRoadDecorationDraft (info.flowersoft.theotown.ui.selectable.SelectableRoadDecorationDraft)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableRoadDecorationDraft.java"


# instance fields
.field public final DEFAULT_PREVIEW_ROAD:Linfo/flowersoft/theotown/draft/RoadDraft;

.field public draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

.field public drawer:Linfo/flowersoft/theotown/city/Drawer;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RoadDecorationDraft;)V
    .registers 5

    .line 28
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 21
    const-string v0, "$road01"

    const-class v1, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->DEFAULT_PREVIEW_ROAD:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 30
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    .line 32
    new-instance p2, Linfo/flowersoft/theotown/city/Drawer;

    invoke-direct {p2, p1}, Linfo/flowersoft/theotown/city/Drawer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    return-void
.end method


# virtual methods
.method public drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 64
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v2, :cond_e

    .line 65
    invoke-super/range {p0 .. p3}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V

    return-void

    .line 69
    :cond_e
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 70
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v3

    .line 72
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->hasRequirement()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_24

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isUnlocked()Z

    move-result v4

    if-nez v4, :cond_24

    move v4, v6

    goto :goto_25

    :cond_24
    move v4, v5

    :goto_25
    if-eqz v4, :cond_31

    const/16 v7, 0x32

    .line 74
    invoke-virtual {v1, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 75
    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 78
    :cond_31
    iget-object v7, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->DEFAULT_PREVIEW_ROAD:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 79
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->previewRoad:Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v8, :cond_3a

    move-object v7, v8

    .line 82
    :cond_3a
    iget-object v7, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v13, 0x5

    aget v7, v7, v13

    .line 83
    iget-object v8, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v6}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v6

    div-int/lit16 v6, v6, 0xc8

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v6, p2

    int-to-float v8, v6

    .line 85
    invoke-virtual {v2, v7}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v9

    mul-float/2addr v9, v3

    add-float/2addr v9, v8

    move/from16 v10, p3

    int-to-float v11, v10

    const/high16 v12, 0x41800000    # 16.0f

    mul-float/2addr v12, v3

    add-float/2addr v11, v12

    invoke-virtual {v1, v2, v9, v11, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 88
    iget-object v9, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v2, v7}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v2

    mul-float/2addr v3, v2

    add-float/2addr v8, v3

    iput v8, v9, Linfo/flowersoft/theotown/city/Drawer;->x:F

    .line 89
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iput v11, v2, Linfo/flowersoft/theotown/city/Drawer;->y:F

    .line 90
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/Drawer;->begin(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 91
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v3

    iput v3, v2, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    .line 92
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v3

    iput v3, v2, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    .line 93
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationSpots:Ljava/util/List;

    if-eqz v2, :cond_9f

    .line 94
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    iget-object v9, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iget-object v2, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget-object v10, v2, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationSpots:Ljava/util/List;

    iget-object v11, v2, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationSpotIndices:[[I

    int-to-float v14, v5

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v16}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V

    .line 96
    :cond_9f
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationFGSpots:Ljava/util/List;

    if-eqz v2, :cond_b9

    .line 97
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    iget-object v9, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iget-object v2, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget-object v10, v2, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationFGSpots:Ljava/util/List;

    iget-object v11, v2, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationFGSpotIndices:[[I

    int-to-float v14, v5

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v16}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V

    .line 99
    :cond_b9
    iget-object v2, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/Drawer;->end()V

    if-eqz v4, :cond_d0

    .line 102
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->getPreviewWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->getPreviewHeight()I

    move-result v2

    int-to-float v5, v2

    move/from16 v3, p3

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawLock(Lio/blueflower/stapel2d/drawing/Engine;IIFF)V

    :cond_d0
    return-void
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 42
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    return-object v0
.end method

.method public getPreviewHeight()I
    .registers 2

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v0, :cond_b

    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewHeight()I

    move-result v0

    return v0

    :cond_b
    const/16 v0, 0x10

    return v0
.end method

.method public getPreviewWidth()I
    .registers 2

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v0, :cond_b

    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewWidth()I

    move-result v0

    return v0

    :cond_b
    const/16 v0, 0x20

    return v0
.end method

.method public getPrice()J
    .registers 3

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->price:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public select()V
    .registers 4

    .line 47
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/RoadDecorationTool;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationDraft;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;-><init>(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
