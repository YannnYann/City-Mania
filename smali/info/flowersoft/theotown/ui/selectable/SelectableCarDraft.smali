###### Class info.flowersoft.theotown.ui.selectable.SelectableCarDraft (info.flowersoft.theotown.ui.selectable.SelectableCarDraft)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableCarDraft.java"


# instance fields
.field public cars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/CarDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final draft:Linfo/flowersoft/theotown/draft/CarDraft;

.field public overlayColor:Lio/blueflower/stapel2d/drawing/Color;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CarDraft;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 4

    .line 24
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->cars:Ljava/util/List;

    .line 25
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    .line 26
    iput-object p3, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->overlayColor:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method


# virtual methods
.method public drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 68
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v2

    .line 69
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v3

    .line 71
    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v4, 0xff

    .line 72
    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 74
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->hasRequirement()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_25

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isUnlocked()Z

    move-result v5

    if-nez v5, :cond_25

    move v5, v6

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    :goto_26
    if-eqz v5, :cond_2d

    const/16 v8, 0xc8

    .line 77
    invoke-virtual {v1, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 80
    :cond_2d
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->getPreviewWidth()I

    .line 81
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->getPreviewHeight()I

    move-result v8

    .line 82
    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v10, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-object v10, v10, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v9

    mul-float/2addr v9, v2

    .line 83
    sget-object v10, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v12, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-object v12, v12, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v12, v12, v11

    invoke-virtual {v10, v12}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    .line 85
    iget-object v10, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->cars:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 86
    iget-object v10, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->cars:Ljava/util/List;

    iget-object v12, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v10, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-object v10, v10, Linfo/flowersoft/theotown/draft/CarDraft;->tail:[Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz v10, :cond_6d

    const/4 v12, 0x0

    .line 90
    :goto_60
    array-length v13, v10

    if-ge v12, v13, :cond_6d

    .line 91
    aget-object v13, v10, v12

    .line 92
    iget-object v14, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->cars:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_60

    .line 96
    :cond_6d
    iget-object v10, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->cars:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    :goto_74
    if-ltz v10, :cond_d6

    .line 97
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->cars:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/CarDraft;

    .line 98
    iget-object v12, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v12, v12, v11

    .line 99
    iget-object v13, v6, Linfo/flowersoft/theotown/draft/CarDraft;->overlayFrames:[I

    if-eqz v13, :cond_8c

    aget v13, v13, v11

    :goto_88
    move v14, v2

    move/from16 v2, p2

    goto :goto_8e

    :cond_8c
    const/4 v13, 0x0

    goto :goto_88

    :goto_8e
    int-to-float v15, v2

    const/16 v16, 0x0

    mul-int/lit8 v7, v10, 0x8

    int-to-float v7, v7

    add-float/2addr v7, v9

    mul-float/2addr v7, v14

    add-float/2addr v15, v7

    move/from16 v7, p3

    int-to-float v11, v7

    mul-int/lit8 v4, v10, -0x4

    int-to-float v4, v4

    const/high16 v17, 0x40800000    # 4.0f

    sub-float v4, v4, v17

    int-to-float v2, v8

    add-float/2addr v4, v2

    mul-float/2addr v4, v3

    add-float/2addr v11, v4

    if-eqz v12, :cond_c3

    .line 104
    iget-object v2, v6, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v2, :cond_b9

    .line 105
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->overlayColor:Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v4, :cond_b3

    .line 106
    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_be

    .line 108
    :cond_b3
    aget-object v2, v2, v16

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_be

    .line 111
    :cond_b9
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 113
    :goto_be
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v2, v15, v11, v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_c3
    if-eqz v13, :cond_cf

    .line 117
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 118
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v2, v15, v11, v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_cf
    add-int/lit8 v10, v10, -0x1

    move v2, v14

    const/16 v4, 0xff

    const/4 v11, 0x2

    goto :goto_74

    :cond_d6
    move/from16 v7, p3

    .line 122
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    if-eqz v5, :cond_f4

    const/16 v2, 0xff

    .line 124
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 125
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->getPreviewWidth()I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->getPreviewHeight()I

    move-result v2

    int-to-float v5, v2

    move/from16 v2, p2

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawLock(Lio/blueflower/stapel2d/drawing/Engine;IIFF)V

    :cond_f4
    return-void
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    return-object v0
.end method

.method public getPreviewHeight()I
    .registers 4

    .line 57
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v0

    .line 59
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/CarDraft;->tail:[Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz v1, :cond_19

    .line 61
    array-length v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 63
    :cond_19
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getPreviewWidth()I
    .registers 4

    .line 46
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v0

    .line 48
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCarDraft;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/CarDraft;->tail:[Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz v1, :cond_19

    .line 50
    array-length v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 52
    :cond_19
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getPrice()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public select()V
    .registers 1

    .line 41
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    return-void
.end method
