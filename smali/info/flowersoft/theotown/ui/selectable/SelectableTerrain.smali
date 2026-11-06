###### Class info.flowersoft.theotown.ui.selectable.SelectableTerrain (info.flowersoft.theotown.ui.selectable.SelectableTerrain)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableTerrain.java"


# instance fields
.field public active:Z

.field public final draft:Linfo/flowersoft/theotown/draft/GroundDraft;

.field public final frame:I

.field public setDraft:Z

.field public final setToWater:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/GroundDraft;)V
    .registers 5

    .line 50
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->setToWater:Z

    .line 52
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 54
    iget-object v0, p2, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v0, :cond_14

    array-length v1, v0

    if-lez v1, :cond_14

    .line 55
    aget p1, v0, p1

    iput p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->frame:I

    goto :goto_1a

    .line 57
    :cond_14
    iget-object p2, p2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p1, p2, p1

    iput p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->frame:I

    :goto_1a
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->setDraft:Z

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Z)V
    .registers 6

    .line 29
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 30
    iput-boolean p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->setToWater:Z

    const/4 p1, 0x1

    if-eqz p2, :cond_15

    .line 33
    sget-object p2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v0, "$water00"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/GroundDraft;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    goto :goto_23

    .line 35
    :cond_15
    sget-object p2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v0, "$ground00"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/GroundDraft;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 36
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->setDraft:Z

    .line 41
    :goto_23
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    iget-object v0, p2, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    array-length v2, v0

    if-lez v2, :cond_32

    .line 42
    aget p2, v0, v1

    iput p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->frame:I

    goto :goto_38

    .line 44
    :cond_32
    iget-object p2, p2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p2, p2, v1

    iput p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->frame:I

    .line 46
    :goto_38
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->active:Z

    return-void
.end method


# virtual methods
.method public drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 13

    .line 99
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, p2

    int-to-float v3, p3

    const/4 v7, 0x0

    iget v8, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->frame:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    return-void
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    return-object v0
.end method

.method public getPreviewHeight()I
    .registers 3

    .line 94
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->frame:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getPreviewWidth()I
    .registers 3

    .line 89
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->frame:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getPrice()J
    .registers 3

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->setToWater:Z

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPriceForTerrain(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public isActive()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->active:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isActive()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public select()V
    .registers 4

    .line 79
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 80
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->setDraft:Z

    if-eqz v0, :cond_14

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/TerrainTool;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->draft:Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/TerrainTool;-><init>(Linfo/flowersoft/theotown/draft/GroundDraft;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void

    .line 83
    :cond_14
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/TerrainTool;

    iget-boolean v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTerrain;->setToWater:Z

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/tools/TerrainTool;-><init>(Z)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
