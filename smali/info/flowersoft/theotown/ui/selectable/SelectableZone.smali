###### Class info.flowersoft.theotown.ui.selectable.SelectableZone (info.flowersoft.theotown.ui.selectable.SelectableZone)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableZone;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableZone.java"


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/ZoneDraft;

.field public icon:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ZoneDraft;)V
    .registers 4

    .line 22
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 24
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableZone;->draft:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 27
    iget-object p1, p2, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    aget p1, p1, v0

    goto :goto_11

    :cond_d
    iget-object p1, p2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p1, p1, v0

    :goto_11
    iput p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableZone;->icon:I

    return-void
.end method


# virtual methods
.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableZone;->draft:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-object v0
.end method

.method public getPreviewFrame()I
    .registers 2

    .line 52
    iget v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableZone;->icon:I

    return v0
.end method

.method public getPreviewHeight()I
    .registers 3

    .line 47
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableZone;->icon:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getPreviewWidth()I
    .registers 3

    .line 42
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableZone;->icon:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getPrice()J
    .registers 4

    .line 32
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableZone;->draft:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/ZoneDraft;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public select()V
    .registers 3

    .line 57
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 59
    new-instance v0, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableZone;->draft:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/ZoneDraft;)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object v0

    .line 60
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method
