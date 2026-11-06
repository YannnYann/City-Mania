###### Class info.flowersoft.theotown.tools.TreeTool (info.flowersoft.theotown.tools.TreeTool)
.class public Linfo/flowersoft/theotown/tools/TreeTool;
.super Linfo/flowersoft/theotown/tools/TwoModesTool;
.source "TreeTool.java"


# instance fields
.field public final MAX_SIZE:I

.field public final draft:Linfo/flowersoft/theotown/draft/TreeDraft;

.field public final frame:I

.field public price:J

.field public final prices:[I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/TreeDraft;I)V
    .registers 5

    .line 28
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;-><init>()V

    .line 22
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->infiniteRange()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x40

    goto :goto_e

    :cond_c
    const/16 v0, 0xe

    :goto_e
    iput v0, p0, Linfo/flowersoft/theotown/tools/TreeTool;->MAX_SIZE:I

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v1, v0

    .line 24
    new-array v0, v1, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/TreeTool;->prices:[I

    .line 29
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TreeTool;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    .line 30
    iput p2, p0, Linfo/flowersoft/theotown/tools/TreeTool;->frame:I

    .line 32
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    return-void
.end method

.method private calculatePrices()V
    .registers 14

    .line 79
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_93

    .line 80
    iget v0, p0, Linfo/flowersoft/theotown/tools/TreeTool;->MAX_SIZE:I

    neg-int v0, v0

    :goto_8
    iget v2, p0, Linfo/flowersoft/theotown/tools/TreeTool;->MAX_SIZE:I

    if-gt v0, v2, :cond_93

    neg-int v2, v2

    .line 81
    :goto_d
    iget v3, p0, Linfo/flowersoft/theotown/tools/TreeTool;->MAX_SIZE:I

    if-gt v2, v3, :cond_8f

    if-gtz v2, :cond_16

    neg-int v4, v3

    sub-int/2addr v4, v2

    goto :goto_17

    :cond_16
    move v4, v2

    :goto_17
    if-gtz v0, :cond_1c

    neg-int v5, v3

    sub-int/2addr v5, v0

    goto :goto_1d

    :cond_1c
    move v5, v0

    :goto_1d
    add-int v6, v4, v3

    add-int/2addr v3, v5

    .line 86
    iget v7, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    add-int/2addr v7, v4

    .line 87
    iget v8, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    add-int/2addr v8, v5

    .line 88
    iget-object v9, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9, v7, v8}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 89
    invoke-static {v4}, Lio/blueflower/stapel2d/util/MathUtil;->signum(I)I

    move-result v4

    neg-int v4, v4

    .line 90
    invoke-static {v5}, Lio/blueflower/stapel2d/util/MathUtil;->signum(I)I

    move-result v5

    neg-int v5, v5

    if-eqz v4, :cond_48

    .line 92
    iget-object v9, p0, Linfo/flowersoft/theotown/tools/TreeTool;->prices:[I

    add-int v10, v6, v4

    iget v11, p0, Linfo/flowersoft/theotown/tools/TreeTool;->MAX_SIZE:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v1

    mul-int/2addr v11, v3

    add-int/2addr v10, v11

    aget v9, v9, v10

    goto :goto_49

    :cond_48
    const/4 v9, 0x0

    :goto_49
    if-eqz v5, :cond_59

    .line 93
    iget-object v10, p0, Linfo/flowersoft/theotown/tools/TreeTool;->prices:[I

    add-int v11, v3, v5

    iget v12, p0, Linfo/flowersoft/theotown/tools/TreeTool;->MAX_SIZE:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v1

    mul-int/2addr v11, v12

    add-int/2addr v11, v6

    aget v10, v10, v11

    add-int/2addr v9, v10

    :cond_59
    mul-int v10, v4, v5

    if-eqz v10, :cond_6b

    .line 94
    iget-object v10, p0, Linfo/flowersoft/theotown/tools/TreeTool;->prices:[I

    add-int/2addr v4, v6

    add-int/2addr v5, v3

    iget v11, p0, Linfo/flowersoft/theotown/tools/TreeTool;->MAX_SIZE:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v1

    mul-int/2addr v5, v11

    add-int/2addr v4, v5

    aget v4, v10, v4

    sub-int/2addr v9, v4

    .line 95
    :cond_6b
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v5, p0, Linfo/flowersoft/theotown/tools/TreeTool;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {v4, v5, v7, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/TreeDraft;II)Z

    move-result v4

    if-eqz v4, :cond_80

    int-to-long v4, v9

    .line 96
    iget-object v9, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v10, p0, Linfo/flowersoft/theotown/tools/TreeTool;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {v9, v10, v7, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/TreeDraft;II)J

    move-result-wide v7

    add-long/2addr v4, v7

    long-to-int v9, v4

    .line 97
    :cond_80
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/TreeTool;->prices:[I

    iget v5, p0, Linfo/flowersoft/theotown/tools/TreeTool;->MAX_SIZE:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    mul-int/2addr v3, v5

    add-int/2addr v6, v3

    aput v9, v4, v6

    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_8f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_93
    return-void
.end method

.method private isValidFast(IIII)Z
    .registers 5

    sub-int/2addr p3, p1

    .line 138
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Linfo/flowersoft/theotown/tools/TreeTool;->MAX_SIZE:I

    if-le p1, p2, :cond_16

    const/4 p1, 0x0

    return p1

    .line 140
    :cond_16
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/TreeTool;->prices:[I

    add-int/2addr p3, p2

    add-int/2addr p4, p2

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p4, p2

    add-int/2addr p3, p4

    aget p1, p1, p3

    int-to-long p1, p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/tools/TreeTool;->price:J

    .line 141
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-wide p2, p0, Linfo/flowersoft/theotown/tools/TreeTool;->price:J

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public build(IIII)V
    .registers 16

    .line 43
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    sub-int v0, p3, p1

    int-to-float v0, v0

    .line 44
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    sub-int v1, p4, p2

    int-to-float v1, v1

    .line 45
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    const/4 v4, 0x1

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v0, v4

    :goto_18
    if-eqz v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v4

    :goto_1c
    const-wide/16 v4, 0x0

    .line 49
    iput-wide v4, p0, Linfo/flowersoft/theotown/tools/TreeTool;->price:J

    const/4 v4, 0x0

    :goto_21
    add-int v5, p3, v0

    if-eq p1, v5, :cond_56

    move v5, p2

    :goto_26
    add-int v6, p4, v1

    if-eq v5, v6, :cond_54

    .line 53
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v7, p0, Linfo/flowersoft/theotown/tools/TreeTool;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {v6, v7, p1, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/TreeDraft;II)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 54
    iget-wide v6, p0, Linfo/flowersoft/theotown/tools/TreeTool;->price:J

    iget-object v8, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v9, p0, Linfo/flowersoft/theotown/tools/TreeTool;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {v8, v9, p1, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/TreeDraft;II)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Linfo/flowersoft/theotown/tools/TreeTool;->price:J

    .line 55
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v7, p0, Linfo/flowersoft/theotown/tools/TreeTool;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {v6, v7, p1, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/TreeDraft;II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v6

    .line 56
    iget v7, p0, Linfo/flowersoft/theotown/tools/TreeTool;->frame:I

    if-ltz v7, :cond_50

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/city/objects/Tree;->setFrame(I)V

    :cond_50
    add-int/lit8 v4, v4, 0x1

    :cond_52
    add-int/2addr v5, v1

    goto :goto_26

    :cond_54
    add-int/2addr p1, v0

    goto :goto_21

    .line 61
    :cond_56
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v5

    iget-wide p1, p0, Linfo/flowersoft/theotown/tools/TreeTool;->price:J

    long-to-double v6, p1

    int-to-float v8, p3

    int-to-float v9, p4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "build "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/TreeTool;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    if-lez v4, :cond_86

    .line 64
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->playSound(IIIII)V

    .line 65
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->issueMovement()V

    .line 68
    :cond_86
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

.method public drawBefore(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 2

    .line 73
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBefore(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 75
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/TreeTool;->calculatePrices()V

    return-void
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 113
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-eqz v0, :cond_69

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    goto/16 :goto_78

    .line 120
    :cond_13
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne p1, v0, :cond_3b

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne p2, v0, :cond_3b

    .line 121
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-nez v0, :cond_2a

    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 122
    :cond_2a
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 123
    iget-object p1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_78

    :cond_3b
    move v3, p1

    move v4, p2

    move-object v2, p3

    .line 125
    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/tools/TreeTool;->isValid(II)Z

    move-result p1

    if-nez p1, :cond_51

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 126
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_BLUE_DOTTED:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    goto :goto_78

    :cond_51
    move-object v1, p0

    .line 127
    iget p1, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget p2, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-direct {p0, p1, p2, v3, v4}, Linfo/flowersoft/theotown/tools/TreeTool;->isValidFast(IIII)Z

    move-result p1

    if-eqz p1, :cond_67

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 128
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    :cond_67
    move-object v1, p0

    goto :goto_78

    :cond_69
    move v3, p1

    move v4, p2

    move-object v2, p3

    .line 115
    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/tools/TreeTool;->isValid(II)Z

    move-result p1

    if-nez p1, :cond_67

    .line 116
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_BLUE_DOTTED:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 134
    :goto_78
    invoke-virtual {p0, v2, v3, v4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawAreaTextMarker(Linfo/flowersoft/theotown/city/Drawer;II)V

    return-void
.end method

.method public drawTree(IILinfo/flowersoft/theotown/city/objects/Tree;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 5

    .line 106
    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/city/objects/Tree;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 173
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_TERRAIN:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tree:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/TreeTool;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 178
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/TreeTool;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid(II)Z
    .registers 5

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/TreeTool;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/TreeDraft;II)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/tools/TreeTool;->price:J

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/TreeTool;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/TreeDraft;II)Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-wide v0, p0, Linfo/flowersoft/theotown/tools/TreeTool;->price:J

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method public isValid(IIII)Z
    .registers 13

    const-wide/16 v0, 0x0

    .line 152
    iput-wide v0, p0, Linfo/flowersoft/theotown/tools/TreeTool;->price:J

    sub-int v0, p3, p1

    .line 153
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iget v4, p0, Linfo/flowersoft/theotown/tools/TreeTool;->MAX_SIZE:I

    if-le v1, v4, :cond_1c

    const/4 p1, 0x0

    return p1

    :cond_1c
    int-to-float v0, v0

    .line 155
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v1, v2

    .line 156
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v3

    :goto_2c
    if-eqz v1, :cond_2f

    move v3, v1

    :cond_2f
    :goto_2f
    add-int v1, p3, v0

    if-eq p1, v1, :cond_53

    move v1, p2

    :goto_34
    add-int v2, p4, v3

    if-eq v1, v2, :cond_51

    .line 162
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v4, p0, Linfo/flowersoft/theotown/tools/TreeTool;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {v2, v4, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/TreeDraft;II)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 163
    iget-wide v4, p0, Linfo/flowersoft/theotown/tools/TreeTool;->price:J

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v6, p0, Linfo/flowersoft/theotown/tools/TreeTool;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {v2, v6, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/TreeDraft;II)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Linfo/flowersoft/theotown/tools/TreeTool;->price:J

    :cond_4f
    add-int/2addr v1, v3

    goto :goto_34

    :cond_51
    add-int/2addr p1, v0

    goto :goto_2f

    .line 168
    :cond_53
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-wide p2, p0, Linfo/flowersoft/theotown/tools/TreeTool;->price:J

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    return p1
.end method
