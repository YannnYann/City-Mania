###### Class info.flowersoft.theotown.ui.selectable.SelectableRailDraft (info.flowersoft.theotown.ui.selectable.SelectableRailDraft)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableRailDraft.java"


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/RailDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/RailDraft;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 22
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    return-void
.end method


# virtual methods
.method public drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 13

    .line 52
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 53
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    .line 54
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v2

    .line 55
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v3

    .line 57
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->hasRequirement()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_20

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isUnlocked()Z

    move-result v4

    if-nez v4, :cond_20

    const/4 v4, 0x1

    goto :goto_21

    :cond_20
    move v4, v5

    :goto_21
    if-eqz v4, :cond_2d

    const/16 v6, 0x32

    .line 59
    invoke-virtual {p1, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 60
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 63
    :cond_2d
    iget-object v6, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget-boolean v6, v6, Linfo/flowersoft/theotown/draft/RailDraft;->onGround:Z

    if-nez v6, :cond_45

    int-to-float v6, p2

    .line 64
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v7

    add-float/2addr v6, v7

    add-int/lit8 v7, p3, 0x18

    int-to-float v7, v7

    iget-object v8, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/RailDraft;->pileFrames:[I

    aget v5, v8, v5

    invoke-virtual {p1, v0, v6, v7, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_45
    int-to-float v5, p2

    .line 68
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v6

    add-float/2addr v6, v5

    add-int/lit8 v7, p3, 0x18

    int-to-float v7, v7

    iget-object v8, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget v8, v8, Linfo/flowersoft/theotown/draft/RailDraft;->pileHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    sub-float v3, v7, v8

    invoke-virtual {p1, v0, v6, v3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 71
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v3

    add-float/2addr v5, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/RailDraft;->pileHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v7, v3

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {p1, v0, v5, v7, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    if-eqz v4, :cond_7d

    .line 76
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;->getPreviewWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;->getPreviewHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawLock(Lio/blueflower/stapel2d/drawing/Engine;IIFF)V

    :cond_7d
    return-void
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    return-object v0
.end method

.method public getMonthlyPrice()J
    .registers 3

    .line 32
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/RailDraft;->monthlyPrice:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPreviewHeight()I
    .registers 2

    .line 0
    const/16 v0, 0x16

    return v0
.end method

.method public getPreviewWidth()I
    .registers 2

    .line 0
    const/16 v0, 0x20

    return v0
.end method

.method public getPrice()J
    .registers 3

    .line 27
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/RailDraft;->price:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public select()V
    .registers 4

    .line 82
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableRailDraft;->draft:Linfo/flowersoft/theotown/draft/RailDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/RailDraft;)Linfo/flowersoft/theotown/tools/RailTool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
