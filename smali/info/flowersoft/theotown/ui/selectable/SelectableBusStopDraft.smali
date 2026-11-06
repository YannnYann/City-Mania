###### Class info.flowersoft.theotown.ui.selectable.SelectableBusStopDraft (info.flowersoft.theotown.ui.selectable.SelectableBusStopDraft)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableBusStopDraft;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableBusStopDraft.java"


# instance fields
.field public final draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

.field public roadDraft:Linfo/flowersoft/theotown/draft/RoadDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BusStopDraft;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 32
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBusStopDraft;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    return-void
.end method


# virtual methods
.method public drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 14

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBusStopDraft;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v0, :cond_a

    .line 48
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V

    return-void

    .line 52
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBusStopDraft;->roadDraft:Linfo/flowersoft/theotown/draft/RoadDraft;

    if-nez v0, :cond_1a

    .line 53
    const-string v0, "$road01"

    const-class v1, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBusStopDraft;->roadDraft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 56
    :cond_1a
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 57
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v1

    .line 59
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->hasRequirement()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isUnlocked()Z

    move-result v2

    if-nez v2, :cond_2f

    move v2, v3

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    if-eqz v2, :cond_3c

    const/16 v4, 0x32

    .line 61
    invoke-virtual {p1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 62
    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 67
    :cond_3c
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBusStopDraft;->roadDraft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    int-to-float v5, p2

    .line 69
    invoke-virtual {v0, v4}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v6

    mul-float/2addr v6, v1

    add-float/2addr v6, v5

    int-to-float v7, p3

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v8, v1

    const/high16 v9, 0x41800000    # 16.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 68
    invoke-virtual {p1, v0, v6, v7, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 74
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBusStopDraft;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v6, v4

    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v8, v6, -0x3

    .line 75
    aget v4, v4, v8

    .line 77
    invoke-virtual {v0, v4}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v8

    mul-float/2addr v8, v1

    add-float/2addr v8, v5

    .line 76
    invoke-virtual {p1, v0, v8, v7, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 81
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBusStopDraft;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    sub-int/2addr v6, v3

    aget v3, v4, v6

    .line 83
    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v4

    mul-float/2addr v1, v4

    add-float/2addr v5, v1

    .line 82
    invoke-virtual {p1, v0, v5, v7, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    if-eqz v2, :cond_91

    .line 88
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawLock(Lio/blueflower/stapel2d/drawing/Engine;IIFF)V

    :cond_91
    return-void
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 42
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBusStopDraft;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    return-object v0
.end method

.method public getPrice()J
    .registers 3

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBusStopDraft;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->price:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public select()V
    .registers 3

    .line 94
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 95
    new-instance v0, Linfo/flowersoft/theotown/tools/BusStopTool;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableBusStopDraft;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/BusStopTool;-><init>(Linfo/flowersoft/theotown/draft/BusStopDraft;)V

    .line 96
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
