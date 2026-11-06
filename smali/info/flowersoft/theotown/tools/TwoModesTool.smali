###### Class info.flowersoft.theotown.tools.TwoModesTool (info.flowersoft.theotown.tools.TwoModesTool)
.class public abstract Linfo/flowersoft/theotown/tools/TwoModesTool;
.super Linfo/flowersoft/theotown/tools/BuildTool;
.source "TwoModesTool.java"


# instance fields
.field public additionalValidMapSize:I

.field public drawnTarget:Z

.field public drawnTargetHover:Z

.field public drawnTargetPending:Z

.field public drawnTargetValid:Z

.field public drawnTargetX:I

.field public drawnTargetY:I

.field public hasToBeLine:Z

.field public lineWidth:I

.field public mode:I

.field public notBuildableBecauseOfPrice:Z

.field public selectedX:I

.field public selectedY:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/BuildTool;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->additionalValidMapSize:I

    .line 40
    iput v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    return-void
.end method


# virtual methods
.method public allowsDiagonal()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public beginMove(IIFF)V
    .registers 5

    const/4 p3, 0x0

    .line 248
    iput-boolean p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetPending:Z

    .line 249
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isValid(II)Z

    move-result p4

    if-eqz p4, :cond_18

    iget p4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-nez p4, :cond_18

    .line 250
    iput p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    .line 251
    iput p2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    const/4 p1, 0x1

    .line 252
    iput p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    .line 253
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    .line 254
    iput-boolean p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    :cond_18
    return-void
.end method

.method public abstract build(IIII)V
.end method

.method public canBeginMove(FFIIFF)Z
    .registers 7

    .line 241
    iget p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-nez p1, :cond_14

    invoke-virtual {p0, p3, p4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetPending:Z

    if-nez p1, :cond_14

    sget-boolean p1, Linfo/flowersoft/theotown/resources/Settings;->supportDrawInTwoModeTools:Z

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public cancel(IIII)V
    .registers 5

    .line 0
    return-void
.end method

.method public cancelMouse()V
    .registers 2

    .line 390
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 391
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    .line 392
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    :cond_9
    return-void
.end method

.method public cancelMove()V
    .registers 2

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    .line 284
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    .line 285
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetPending:Z

    .line 286
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    return-void
.end method

.method public close()Z
    .registers 3

    .line 291
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    .line 292
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->cancelMove()V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public drawAreaTextMarker(Linfo/flowersoft/theotown/city/Drawer;II)V
    .registers 9

    .line 90
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_1e

    .line 91
    :cond_6
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne p2, v0, :cond_f

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne p3, v0, :cond_f

    goto :goto_1e

    .line 92
    :cond_f
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_1e

    .line 93
    :cond_16
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/LODController;->drawRoadLength()Z

    move-result v0

    if-nez v0, :cond_1f

    :goto_1e
    return-void

    .line 95
    :cond_1f
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 96
    iget v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    const-string v3, ""

    if-ne p2, v2, :cond_4a

    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int v4, p3, v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4a

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p3, v1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawOverlayText(Linfo/flowersoft/theotown/city/Drawer;Ljava/lang/String;)V

    goto :goto_9c

    .line 98
    :cond_4a
    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne p3, v4, :cond_6f

    sub-int v2, p2, v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6f

    .line 99
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawOverlayText(Linfo/flowersoft/theotown/city/Drawer;Ljava/lang/String;)V

    goto :goto_9c

    .line 100
    :cond_6f
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isDrawnTarget(II)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawOverlayText(Linfo/flowersoft/theotown/city/Drawer;Ljava/lang/String;)V

    .line 103
    :cond_9c
    :goto_9c
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public drawHelperLines(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 136
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    if-eqz v0, :cond_6f

    :cond_8
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6f

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 138
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 139
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 141
    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    if-eq v1, p1, :cond_37

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    if-ne v1, p2, :cond_3b

    :cond_37
    move v3, p1

    move v4, p2

    move-object v2, p3

    goto :goto_5f

    .line 144
    :cond_3b
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->allowsDiagonal()Z

    move-result v1

    if-eqz v1, :cond_6a

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v1, v2, :cond_6a

    const/4 v1, 0x5

    .line 145
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 146
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_WHITE:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    goto :goto_6a

    :goto_5f
    const/16 p1, 0x14

    .line 142
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 143
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_WHITE:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    :cond_6a
    :goto_6a
    const/16 p1, 0xff

    .line 149
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_6f
    return-void
.end method

.method public drawOverlay(Linfo/flowersoft/theotown/city/Drawer;IIII)V
    .registers 20

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p5

    .line 107
    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 109
    :cond_d
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 111
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-ne v0, v1, :cond_2d

    move v8, v7

    goto :goto_2e

    :cond_2d
    move v8, v5

    .line 112
    :goto_2e
    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isDrawnTarget(II)Z

    move-result v9

    .line 113
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-eq v2, v0, :cond_3d

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne v3, v0, :cond_3b

    goto :goto_3d

    :cond_3b
    move v10, v5

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v10, v7

    .line 115
    :goto_3e
    iget-object v11, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v12, 0x64

    const/16 v13, 0xff

    if-lez p4, :cond_65

    add-int v0, v2, v3

    .line 118
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4f

    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_51

    :cond_4f
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    :goto_51
    invoke-virtual {v11, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    if-nez v10, :cond_5b

    if-nez v9, :cond_5b

    .line 119
    invoke-virtual {v11, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_5b
    move-object v0, p0

    move-object v1, p1

    move/from16 v5, p4

    .line 121
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 122
    invoke-virtual {v11, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 125
    :cond_65
    iget-object v2, p1, Linfo/flowersoft/theotown/city/Drawer;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/LODController;->drawRoadLength()Z

    move-result v2

    if-eqz v2, :cond_89

    if-lez v6, :cond_89

    if-nez v10, :cond_75

    if-nez v8, :cond_75

    if-eqz v9, :cond_89

    :cond_75
    if-ge v6, v12, :cond_7b

    .line 126
    rem-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_7d

    :cond_7b
    if-eqz v9, :cond_89

    .line 127
    :cond_7d
    invoke-virtual {v11, v13, v13, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    add-int/lit8 v2, v6, 0x1

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawOverlayText(Linfo/flowersoft/theotown/city/Drawer;Ljava/lang/String;)V

    .line 132
    :cond_89
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public drawOverlayText(Linfo/flowersoft/theotown/city/Drawer;Ljava/lang/String;)V
    .registers 12

    .line 78
    iget-object v6, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 79
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v0

    iget v1, p1, Linfo/flowersoft/theotown/city/Drawer;->x:F

    const/high16 v2, 0x41800000    # 16.0f

    .line 81
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/Drawer;->getShiftX()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v2

    mul-float/2addr v3, v2

    add-float v2, v1, v3

    iget v1, p1, Linfo/flowersoft/theotown/city/Drawer;->y:F

    .line 82
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/Drawer;->getShiftY()F

    move-result v3

    iget p1, p1, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr p1, v4

    sub-float/2addr v3, p1

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result p1

    mul-float/2addr v3, p1

    add-float/2addr v3, v1

    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, p1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const/high16 v7, 0x3f000000    # 0.5f

    const v8, 0x3f4ccccd    # 0.8f

    move-object v1, p2

    .line 79
    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    return-void
.end method

.method public endMove()V
    .registers 5

    .line 260
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-nez v0, :cond_5

    return-void

    .line 262
    :cond_5
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isValid(IIII)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 263
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetPending:Z

    return-void

    .line 266
    :cond_1b
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->finishMove()V

    return-void

    .line 269
    :cond_1f
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->cancelMove()V

    return-void
.end method

.method public finishMove()V
    .registers 5

    .line 275
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isValid(IIII)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 276
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Linfo/flowersoft/theotown/tools/TwoModesTool;->build(IIII)V

    .line 278
    :cond_19
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->cancelMove()V

    return-void
.end method

.method public getBuildableCursor()Linfo/flowersoft/theotown/ui/CursorType;
    .registers 2

    .line 350
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Build:Linfo/flowersoft/theotown/ui/CursorType;

    return-object v0
.end method

.method public getCursorType()Linfo/flowersoft/theotown/ui/CursorType;
    .registers 3

    .line 334
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-nez v0, :cond_16

    .line 335
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_11

    .line 336
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->NotAllowed:Linfo/flowersoft/theotown/ui/CursorType;

    return-object v0

    .line 338
    :cond_11
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->getBuildableCursor()Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v0

    return-object v0

    .line 341
    :cond_16
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-nez v0, :cond_1d

    .line 342
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->NotAllowed:Linfo/flowersoft/theotown/ui/CursorType;

    return-object v0

    .line 343
    :cond_1d
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz v0, :cond_24

    .line 344
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->NoMoney:Linfo/flowersoft/theotown/ui/CursorType;

    return-object v0

    .line 346
    :cond_24
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->getBuildableCursor()Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v0

    return-object v0
.end method

.method public getDrawnTargetX()I
    .registers 2

    .line 409
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    return v0
.end method

.method public getDrawnTargetY()I
    .registers 2

    .line 413
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    return v0
.end method

.method public infiniteRange()Z
    .registers 3

    .line 450
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isDrawnTarget(II)Z
    .registers 5

    .line 417
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-eqz v0, :cond_13

    .line 418
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    if-ne p1, v0, :cond_13

    iget p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    if-ne p2, p1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    return v1
.end method

.method public isTileInvolved(II)Z
    .registers 11

    .line 425
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_72

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-eqz v0, :cond_72

    .line 426
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int/2addr p1, v0

    .line 427
    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int/2addr p2, v3

    .line 428
    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    sub-int/2addr v4, v0

    .line 429
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    sub-int/2addr v0, v3

    mul-int v3, p1, v4

    if-ltz v3, :cond_71

    .line 431
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v5, v6, :cond_71

    mul-int v5, p2, v0

    if-ltz v5, :cond_71

    .line 433
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v6, v7, :cond_33

    goto :goto_71

    :cond_33
    if-eqz v4, :cond_72

    if-eqz v0, :cond_72

    .line 434
    iget-boolean v6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->hasToBeLine:Z

    if-eqz v6, :cond_72

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->allowsDiagonal()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 436
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 437
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 438
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 439
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ltz v3, :cond_71

    if-gez v5, :cond_56

    goto :goto_71

    :cond_56
    if-le v4, v0, :cond_5a

    move v0, v1

    goto :goto_5b

    :cond_5a
    move v0, v2

    :goto_5b
    if-eqz v0, :cond_5f

    if-lt p1, p2, :cond_63

    :cond_5f
    if-nez v0, :cond_64

    if-le p1, p2, :cond_64

    :cond_63
    return v2

    .line 443
    :cond_64
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v0, v3

    if-eq v0, v1, :cond_72

    if-eq p1, p2, :cond_72

    :cond_71
    :goto_71
    return v2

    .line 446
    :cond_72
    iget-boolean p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz p1, :cond_7c

    iget-boolean p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-eqz p1, :cond_7b

    goto :goto_7c

    :cond_7b
    return v2

    :cond_7c
    :goto_7c
    return v1
.end method

.method public abstract isValid(II)Z
.end method

.method public isValid(IIII)Z
    .registers 9

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    sub-int p1, p3, p1

    .line 222
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int p2, p4, p2

    .line 223
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 225
    iget-boolean v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->hasToBeLine:Z

    const/4 v2, 0x1

    if-nez v1, :cond_15

    return v2

    .line 227
    :cond_15
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v2

    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    if-ne v1, v3, :cond_1f

    return v2

    .line 230
    :cond_1f
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->allowsDiagonal()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 231
    iget-boolean v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz v1, :cond_33

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    if-ne v1, p3, :cond_31

    iget p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    if-eq p3, p4, :cond_33

    :cond_31
    move p3, v2

    goto :goto_34

    :cond_33
    move p3, v0

    .line 232
    :goto_34
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr p4, v1

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    if-eq p4, v1, :cond_43

    if-ne p1, p2, :cond_4b

    :cond_43
    const/4 p4, 0x2

    if-lt p1, p4, :cond_48

    if-ge p2, p4, :cond_4a

    :cond_48
    if-eqz p3, :cond_4b

    :cond_4a
    return v2

    :cond_4b
    return v0
.end method

.method public mouseMove(IIFFFFZ)V
    .registers 17

    .line 373
    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    if-nez p7, :cond_20

    iget-boolean v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetPending:Z

    if-nez v3, :cond_20

    .line 374
    iget-boolean v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-nez v1, :cond_13

    .line 375
    iput-boolean v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    .line 376
    iput-boolean v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    :cond_13
    move v7, p3

    move v8, p4

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v3, p3

    move v4, p4

    move v1, p5

    move v2, p6

    .line 378
    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/tools/TwoModesTool;->updateMove(FFFFIIFF)Z

    return-void

    :cond_20
    if-nez v1, :cond_2b

    if-nez p7, :cond_2b

    .line 380
    iput-boolean v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    .line 381
    iput p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    .line 382
    iput p2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    return-void

    :cond_2b
    const/4 v1, 0x0

    .line 384
    iput-boolean v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    return-void
.end method

.method public moveIsPending()Z
    .registers 2

    .line 397
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetPending:Z

    return v0
.end method

.method public final normalizeLine(IIII)[I
    .registers 11

    sub-int p1, p3, p1

    sub-int p2, p4, p2

    .line 299
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 300
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-eqz p1, :cond_6f

    if-eqz p2, :cond_6f

    add-int v2, v0, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_6f

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2c

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->allowsDiagonal()Z

    move-result v4

    if-eqz v4, :cond_6f

    sub-int v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_6f

    .line 304
    :cond_2c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->allowsDiagonal()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_65

    mul-int/lit8 p3, v1, 0x2

    if-le v0, p3, :cond_39

    :cond_37
    move p2, p4

    goto :goto_68

    :cond_39
    mul-int/lit8 p3, v0, 0x2

    if-le v1, p3, :cond_3f

    :goto_3d
    move p1, p4

    goto :goto_68

    :cond_3f
    int-to-float p1, p1

    .line 310
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr p1, v2

    div-int/2addr p1, v3

    int-to-float p2, p2

    .line 311
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-int p2, p2

    mul-int/2addr p2, v2

    div-int/2addr p2, v3

    if-ge v0, v1, :cond_5b

    int-to-float p1, p1

    .line 313
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p3

    sub-float/2addr p1, p3

    float-to-int p1, p1

    goto :goto_68

    :cond_5b
    if-ge v1, v0, :cond_68

    int-to-float p2, p2

    .line 315
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    goto :goto_68

    :cond_65
    if-ge v0, v1, :cond_37

    goto :goto_3d

    .line 325
    :cond_68
    :goto_68
    iget p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    add-int/2addr p3, p1

    .line 326
    iget p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    add-int p4, p1, p2

    .line 329
    :cond_6f
    filled-new-array {p3, p4}, [I

    move-result-object p1

    return-object p1
.end method

.method public onClick(IIFFII)V
    .registers 12

    .line 155
    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetPending:Z

    if-eqz p3, :cond_8

    .line 156
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->cancelMove()V

    return-void

    .line 160
    :cond_8
    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz p3, :cond_13

    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    if-nez p3, :cond_13

    .line 161
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->cancelMove()V

    .line 165
    :cond_13
    iget p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 p4, 0x1

    if-eqz p3, :cond_b2

    if-eq p3, p4, :cond_1c

    goto/16 :goto_bd

    .line 174
    :cond_1c
    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->hasToBeLine:Z

    const/4 p5, 0x0

    if-eqz p3, :cond_91

    .line 175
    iget p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int p3, p1, p3

    .line 176
    iget p6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int p6, p2, p6

    .line 177
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 178
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 179
    iget v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    if-ne v2, p4, :cond_45

    .line 180
    iget p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget p6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, p3, p6, p1, p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->normalizeLine(IIII)[I

    move-result-object p1

    .line 181
    aget p2, p1, p5

    .line 182
    aget p1, p1, p4

    move v4, p2

    move p2, p1

    move p1, v4

    goto :goto_91

    .line 184
    :cond_45
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, p4

    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    if-le v2, v3, :cond_91

    if-le v0, v1, :cond_6d

    sub-int/2addr v3, p4

    sub-int/2addr v3, p6

    .line 186
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ne p1, p4, :cond_5d

    .line 187
    iget p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    add-int/lit8 p6, p1, -0x1

    goto :goto_8b

    .line 188
    :cond_5d
    iget p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    rsub-int/lit8 p1, p1, 0x1

    sub-int/2addr p1, p6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ne p1, p4, :cond_8b

    .line 189
    iget p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    rsub-int/lit8 p6, p1, 0x1

    goto :goto_8b

    :cond_6d
    if-le v1, v0, :cond_8b

    sub-int/2addr v3, p4

    sub-int/2addr v3, p3

    .line 192
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ne p1, p4, :cond_7c

    .line 193
    iget p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    add-int/lit8 p3, p1, -0x1

    goto :goto_8b

    .line 194
    :cond_7c
    iget p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    rsub-int/lit8 p1, p1, 0x1

    sub-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ne p1, p4, :cond_8b

    .line 195
    iget p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    rsub-int/lit8 p3, p1, 0x1

    .line 198
    :cond_8b
    :goto_8b
    iget p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    add-int/2addr p1, p3

    .line 199
    iget p2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    add-int/2addr p2, p6

    .line 203
    :cond_91
    :goto_91
    iget p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget p4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, p3, p4, p1, p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isValid(IIII)Z

    move-result p3

    if-nez p3, :cond_a8

    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz p3, :cond_a0

    goto :goto_a8

    .line 206
    :cond_a0
    iget p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget p4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, p3, p4, p1, p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->cancel(IIII)V

    goto :goto_af

    .line 204
    :cond_a8
    :goto_a8
    iget p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget p4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, p3, p4, p1, p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->build(IIII)V

    .line 208
    :goto_af
    iput p5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    return-void

    .line 167
    :cond_b2
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isValid(II)Z

    move-result p3

    if-nez p3, :cond_be

    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz p3, :cond_bd

    goto :goto_be

    :cond_bd
    :goto_bd
    return-void

    .line 168
    :cond_be
    :goto_be
    iput p4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    .line 169
    iput p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    .line 170
    iput p2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    return-void
.end method

.method public playSound(III)V
    .registers 11

    .line 68
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 69
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 70
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 71
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    sub-int/2addr p2, v3

    add-int/lit8 v5, p2, 0x1

    sub-int/2addr p3, v4

    add-int/lit8 v6, p3, 0x1

    move-object v1, p0

    move v2, p1

    .line 74
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->playSound(IIIII)V

    return-void
.end method

.method public redo(Z)V
    .registers 2

    .line 55
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->cancelMove()V

    .line 56
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->redo(Z)V

    return-void
.end method

.method public setHasToBeLine(Z)V
    .registers 2

    .line 60
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->hasToBeLine:Z

    return-void
.end method

.method public setLineWidth(I)V
    .registers 2

    .line 64
    iput p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    return-void
.end method

.method public undo(Z)V
    .registers 2

    .line 49
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->cancelMove()V

    .line 50
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->undo(Z)V

    return-void
.end method

.method public updateMove(FFFFIIFF)Z
    .registers 9

    .line 357
    iget p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_16

    iget-boolean p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->hasToBeLine:Z

    if-eqz p1, :cond_16

    .line 358
    iget p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget p4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, p1, p4, p5, p6}, Linfo/flowersoft/theotown/tools/TwoModesTool;->normalizeLine(IIII)[I

    move-result-object p1

    .line 359
    aget p5, p1, p2

    .line 360
    aget p6, p1, p3

    .line 363
    :cond_16
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result p1

    sub-int/2addr p1, p3

    iget p4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->additionalValidMapSize:I

    add-int/2addr p1, p4

    invoke-static {p5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    .line 364
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    iget p4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->additionalValidMapSize:I

    add-int/2addr p1, p4

    invoke-static {p6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    .line 365
    iget p4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget p5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    iget p6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    invoke-virtual {p0, p4, p5, p6, p1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isValid(IIII)Z

    move-result p1

    if-nez p1, :cond_4e

    iget-boolean p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz p1, :cond_4f

    :cond_4e
    move p2, p3

    :cond_4f
    iput-boolean p2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    .line 367
    iget-boolean p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    return p1
.end method
