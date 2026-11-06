###### Class info.flowersoft.theotown.ui.selectable.SelectableTreeDraft (info.flowersoft.theotown.ui.selectable.SelectableTreeDraft)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableTreeDraft.java"


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/TreeDraft;

.field public frame:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/TreeDraft;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 23
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->frame:I

    return-void
.end method


# virtual methods
.method public countFrames()I
    .registers 4

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v1

    iget v0, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    div-int/2addr v2, v0

    array-length v1, v1

    div-int/2addr v1, v0

    const/4 v0, 0x1

    if-le v1, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    add-int/2addr v2, v0

    return v2
.end method

.method public drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 15

    .line 77
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    iget v0, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    div-int/2addr v1, v0

    .line 78
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v0

    .line 79
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v2

    .line 81
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->getPreviewHeight()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x20

    if-le v3, v5, :cond_1d

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v4, v3

    .line 86
    :cond_1d
    iget v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->frame:I

    const/high16 v5, 0x41c00000    # 24.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_88

    iget-object v8, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v9, v8, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v9, v9

    iget v10, v8, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    div-int/2addr v9, v10

    if-le v9, v7, :cond_88

    .line 87
    iget-object v3, v8, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v3, :cond_47

    array-length v8, v3

    if-eq v8, v7, :cond_3a

    array-length v8, v3

    add-int/2addr v1, v7

    if-lt v8, v1, :cond_47

    .line 88
    :cond_3a
    aget v1, v3, v6

    .line 89
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v6, p2

    int-to-float v7, p3

    mul-float/2addr v5, v2

    add-float/2addr v7, v5

    add-float/2addr v7, v4

    invoke-virtual {p1, v3, v6, v7, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_74

    .line 91
    :cond_47
    :goto_47
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v3, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    iget v1, v1, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    div-int/2addr v3, v1

    const/4 v1, 0x3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v6, v1, :cond_74

    .line 92
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v3, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v1, v1, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    mul-int/2addr v1, v6

    aget v1, v3, v1

    .line 93
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v7, p2

    mul-int/lit8 v8, v6, 0x9

    add-int/lit8 v8, v8, -0xb

    int-to-float v8, v8

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    int-to-float v8, p3

    mul-float v9, v2, v5

    add-float/2addr v8, v9

    add-float/2addr v8, v4

    invoke-virtual {p1, v3, v7, v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_74
    :goto_74
    const/high16 v1, 0x3f000000    # 0.5f

    .line 96
    invoke-virtual {p1, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 97
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 p2, p2, -0x5

    int-to-float p2, p2

    int-to-float p3, p3

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANDOM:I

    invoke-virtual {p1, v1, p2, p3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 98
    invoke-virtual {p1, v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void

    .line 100
    :cond_88
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v8, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v0, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    sub-int/2addr v3, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/2addr v0, v3

    aget v0, v8, v0

    .line 101
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v3, :cond_a9

    array-length v8, v3

    if-lt v8, v1, :cond_a9

    .line 102
    iget v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->frame:I

    array-length v8, v3

    if-le v8, v1, :cond_a5

    goto :goto_a6

    :cond_a5
    move v6, v7

    :goto_a6
    sub-int/2addr v0, v6

    aget v0, v3, v0

    .line 104
    :cond_a9
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float p2, p2

    int-to-float p3, p3

    mul-float/2addr v2, v5

    add-float/2addr p3, v2

    add-float/2addr p3, v4

    invoke-virtual {p1, v1, p2, p3, v0}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 115
    iget v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->frame:I

    return v0
.end method

.method public getPreviewHeight()I
    .registers 10

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v1

    iget v3, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    div-int/2addr v2, v3

    .line 53
    iget v4, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->frame:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x20

    if-nez v4, :cond_54

    array-length v8, v1

    div-int/2addr v8, v3

    if-le v8, v6, :cond_54

    .line 54
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v0, :cond_2d

    array-length v1, v0

    if-eq v1, v6, :cond_1f

    array-length v1, v0

    add-int/2addr v2, v6

    if-lt v1, v2, :cond_2d

    .line 55
    :cond_1f
    aget v0, v0, v5

    .line 56
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 58
    :cond_2d
    :goto_2d
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    iget v0, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    div-int/2addr v1, v0

    const/4 v0, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v5, v0, :cond_53

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v0, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    mul-int/2addr v0, v5

    aget v0, v1, v0

    .line 60
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_53
    return v7

    :cond_54
    sub-int/2addr v4, v6

    .line 64
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v3, v0

    aget v0, v1, v3

    .line 65
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    if-eqz v1, :cond_71

    array-length v3, v1

    if-lt v3, v2, :cond_71

    .line 66
    iget v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->frame:I

    array-length v3, v1

    if-gt v3, v2, :cond_6e

    if-nez v0, :cond_6d

    goto :goto_6e

    :cond_6d
    move v5, v6

    :cond_6e
    :goto_6e
    sub-int/2addr v0, v5

    aget v0, v1, v0

    .line 68
    :cond_71
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

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

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/TreeDraft;)J

    move-result-wide v0

    return-wide v0
.end method

.method public select()V
    .registers 5

    .line 39
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->city:Linfo/flowersoft/theotown/city/City;

    new-instance v1, Linfo/flowersoft/theotown/tools/TreeTool;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget v3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->frame:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/tools/TreeTool;-><init>(Linfo/flowersoft/theotown/draft/TreeDraft;I)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

.method public setFrame(I)V
    .registers 2

    .line 120
    iput p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableTreeDraft;->frame:I

    return-void
.end method
