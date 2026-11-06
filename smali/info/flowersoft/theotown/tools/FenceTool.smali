###### Class info.flowersoft.theotown.tools.FenceTool (info.flowersoft.theotown.tools.FenceTool)
.class public Linfo/flowersoft/theotown/tools/FenceTool;
.super Linfo/flowersoft/theotown/tools/TwoModesTool;
.source "FenceTool.java"


# instance fields
.field public final draft:Linfo/flowersoft/theotown/draft/FenceDraft;

.field public price:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/FenceDraft;)V
    .registers 4

    .line 16
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;-><init>()V

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Linfo/flowersoft/theotown/tools/FenceTool;->price:J

    .line 17
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/FenceTool;->draft:Linfo/flowersoft/theotown/draft/FenceDraft;

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->hasToBeLine:Z

    .line 19
    iput p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->additionalValidMapSize:I

    .line 21
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    return-void
.end method


# virtual methods
.method public beginMove(IIFF)V
    .registers 5

    .line 41
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-super {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->beginMove(IIFF)V

    return-void
.end method

.method public build(IIII)V
    .registers 16

    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/FenceTool;->isValid(IIII)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 60
    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 62
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 64
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 65
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le p1, v0, :cond_20

    move v4, v3

    goto :goto_21

    :cond_20
    move v4, v2

    :goto_21
    if-le p2, v1, :cond_24

    goto :goto_25

    :cond_24
    move v3, v2

    :goto_25
    sub-int/2addr p1, v0

    sub-int/2addr p2, v1

    .line 68
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_2b
    if-ge v2, p1, :cond_4c

    mul-int p2, v2, v4

    add-int/2addr p2, v0

    mul-int v5, v2, v3

    add-int/2addr v5, v1

    if-lez v4, :cond_37

    const/4 v6, 0x3

    goto :goto_38

    :cond_37
    const/4 v6, 0x2

    .line 74
    :goto_38
    iget-object v7, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v8, p0, Linfo/flowersoft/theotown/tools/FenceTool;->draft:Linfo/flowersoft/theotown/draft/FenceDraft;

    invoke-virtual {v7, v8, p2, v5, v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->canBuildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)Z

    move-result v7

    if-eqz v7, :cond_49

    iget-object v7, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v8, p0, Linfo/flowersoft/theotown/tools/FenceTool;->draft:Linfo/flowersoft/theotown/draft/FenceDraft;

    invoke-virtual {v7, v8, p2, v5, v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 77
    :cond_4c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v5

    iget-wide p1, p0, Linfo/flowersoft/theotown/tools/FenceTool;->price:J

    long-to-double v6, p1

    int-to-float v8, p3

    int-to-float v9, p4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "build "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/FenceTool;->draft:Linfo/flowersoft/theotown/draft/FenceDraft;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    const-wide/16 p1, 0x0

    .line 78
    iput-wide p1, p0, Linfo/flowersoft/theotown/tools/FenceTool;->price:J

    .line 80
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

.method public canBeginMove(FFIIFF)Z
    .registers 14

    .line 36
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Linfo/flowersoft/theotown/tools/TwoModesTool;->canBeginMove(FFIIFF)Z

    move-result p1

    return p1
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 18

    move/from16 v3, p2

    move-object/from16 v1, p3

    .line 119
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawHelperLines(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 121
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-nez v0, :cond_98

    .line 122
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    if-eqz v0, :cond_17c

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    add-int/lit8 v2, v0, -0x1

    if-gt v2, p1, :cond_17c

    if-gt p1, v0, :cond_17c

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    add-int/lit8 v2, v0, -0x1

    if-gt v2, v3, :cond_17c

    if-gt v3, v0, :cond_17c

    .line 123
    iget v0, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    rsub-int/lit8 v0, v0, 0x4

    rem-int/lit8 v8, v0, 0x4

    .line 124
    iget-object v0, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move v9, v6

    :goto_2f
    if-ge v9, v7, :cond_8f

    .line 126
    invoke-static {v9}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v0

    .line 127
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v2

    .line 128
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v0

    add-int/lit8 v4, v2, 0x1

    .line 129
    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v0, 0x1

    .line 130
    div-int/lit8 v5, v5, 0x2

    if-nez v0, :cond_59

    add-int/2addr v4, p1

    .line 133
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    if-ne v4, v0, :cond_59

    .line 134
    iget v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    if-lt v3, v2, :cond_53

    add-int/lit8 v4, v3, 0x1

    goto :goto_54

    :cond_53
    move v4, v3

    :goto_54
    invoke-virtual {p0, v0, v2, v0, v4}, Linfo/flowersoft/theotown/tools/FenceTool;->isValid(IIII)Z

    move-result v0

    goto :goto_6f

    :cond_59
    if-nez v2, :cond_6e

    add-int v0, v3, v5

    .line 135
    iget v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    if-ne v0, v2, :cond_6e

    .line 136
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    if-lt p1, v0, :cond_68

    add-int/lit8 v4, p1, 0x1

    goto :goto_69

    :cond_68
    move v4, p1

    :goto_69
    invoke-virtual {p0, v0, v2, v4, v2}, Linfo/flowersoft/theotown/tools/FenceTool;->isValid(IIII)Z

    move-result v0

    goto :goto_6f

    :cond_6e
    move v0, v6

    :goto_6f
    if-eqz v0, :cond_89

    .line 140
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 141
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SIDEMARK:I

    add-int v2, v9, v8

    rem-int/2addr v2, v7

    add-int v5, v0, v2

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    :goto_87
    move-object v4, v1

    goto :goto_8b

    :cond_89
    move v2, p1

    goto :goto_87

    :goto_8b
    add-int/lit8 v9, v9, 0x1

    move-object v1, v4

    goto :goto_2f

    :cond_8f
    move-object v4, v1

    .line 144
    iget-object p1, v4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void

    :cond_98
    move v2, p1

    move-object v4, v1

    const/4 v8, 0x1

    if-ne v0, v8, :cond_17c

    .line 148
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    add-int/lit8 v5, v0, -0x1

    if-gt v5, v2, :cond_a5

    if-le v2, v0, :cond_ad

    :cond_a5
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    add-int/lit8 v9, v5, -0x1

    if-gt v9, v3, :cond_17c

    if-gt v3, v5, :cond_17c

    :cond_ad
    add-int/lit8 v5, v0, -0x1

    if-gt v5, v2, :cond_c4

    if-gt v2, v0, :cond_c4

    .line 150
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    add-int/lit8 v5, v0, -0x1

    if-gt v5, v3, :cond_c4

    if-gt v3, v0, :cond_c4

    .line 151
    iget-object v0, v4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move v0, v8

    goto :goto_cc

    .line 154
    :cond_c4
    iget-object v0, v4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move v0, v6

    .line 157
    :goto_cc
    iget v5, v4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    rsub-int/lit8 v5, v5, 0x4

    rem-int/lit8 v9, v5, 0x4

    .line 158
    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz v5, :cond_e6

    if-eqz v0, :cond_e6

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne v0, v5, :cond_e6

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne v0, v5, :cond_e6

    move v10, v8

    goto :goto_e7

    :cond_e6
    move v10, v6

    :goto_e7
    move v11, v6

    :goto_e8
    if-ge v11, v7, :cond_174

    .line 164
    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v0

    .line 165
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v5

    .line 166
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v0

    add-int/lit8 v12, v5, 0x1

    .line 167
    div-int/lit8 v12, v12, 0x2

    add-int/lit8 v13, v0, 0x1

    .line 168
    div-int/lit8 v13, v13, 0x2

    if-nez v0, :cond_128

    add-int v0, v2, v12

    .line 171
    iget v12, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne v0, v12, :cond_128

    .line 172
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-lt v3, v0, :cond_10d

    add-int/lit8 v5, v3, 0x1

    goto :goto_10e

    :cond_10d
    move v5, v3

    :goto_10e
    invoke-virtual {p0, v12, v0, v12, v5}, Linfo/flowersoft/theotown/tools/FenceTool;->isValid(IIII)Z

    move-result v0

    if-eqz v0, :cond_151

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    .line 173
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-lt v3, v5, :cond_11d

    add-int/lit8 v5, v3, 0x1

    goto :goto_11e

    :cond_11d
    move v5, v3

    :goto_11e
    invoke-virtual {p0, v0, v5}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result v0

    if-nez v0, :cond_126

    if-eqz v10, :cond_151

    :cond_126
    :goto_126
    move v0, v8

    goto :goto_152

    :cond_128
    if-nez v5, :cond_151

    add-int v0, v3, v13

    .line 174
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne v0, v5, :cond_151

    .line 175
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-lt v2, v0, :cond_137

    add-int/lit8 v12, v2, 0x1

    goto :goto_138

    :cond_137
    move v12, v2

    :goto_138
    invoke-virtual {p0, v0, v5, v12, v5}, Linfo/flowersoft/theotown/tools/FenceTool;->isValid(IIII)Z

    move-result v0

    if-eqz v0, :cond_151

    .line 176
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-lt v2, v0, :cond_145

    add-int/lit8 v0, v2, 0x1

    goto :goto_146

    :cond_145
    move v0, v2

    :goto_146
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, v0, v5}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result v0

    if-nez v0, :cond_126

    if-eqz v10, :cond_151

    goto :goto_126

    :cond_151
    move v0, v6

    :goto_152
    if-eqz v0, :cond_16b

    .line 180
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 181
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SIDEMARK:I

    add-int v12, v11, v9

    rem-int/2addr v12, v7

    add-int/2addr v5, v12

    move-object v1, v4

    move-object v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    goto :goto_16c

    :cond_16b
    move-object v1, v4

    :goto_16c
    add-int/lit8 v11, v11, 0x1

    move v2, p1

    move/from16 v3, p2

    move-object v4, v1

    goto/16 :goto_e8

    :cond_174
    move-object v1, v4

    .line 185
    iget-object p1, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_17c
    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 197
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_FENCE:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fence:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/FenceTool;->draft:Linfo/flowersoft/theotown/draft/FenceDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 192
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/FenceTool;->draft:Linfo/flowersoft/theotown/draft/FenceDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid(II)Z
    .registers 4

    if-ltz p1, :cond_16

    if-ltz p2, :cond_16

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_16

    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result p1

    if-gt p2, p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public isValid(IIII)Z
    .registers 13

    const-wide/16 v0, 0x0

    .line 90
    iput-wide v0, p0, Linfo/flowersoft/theotown/tools/FenceTool;->price:J

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isValid(IIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 93
    :cond_c
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 94
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 95
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 96
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 p3, 0x1

    if-le p1, v0, :cond_21

    move p4, p3

    goto :goto_22

    :cond_21
    move p4, v1

    :goto_22
    if-le p2, v2, :cond_25

    goto :goto_26

    :cond_25
    move p3, v1

    :goto_26
    sub-int/2addr p1, v0

    sub-int/2addr p2, v2

    .line 99
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-gtz p1, :cond_2f

    return v1

    :cond_2f
    move p2, v1

    :goto_30
    if-ge p2, p1, :cond_5c

    mul-int v3, p2, p4

    add-int/2addr v3, v0

    mul-int v4, p2, p3

    add-int/2addr v4, v2

    if-lez p4, :cond_3c

    const/4 v5, 0x3

    goto :goto_3d

    :cond_3c
    const/4 v5, 0x2

    .line 108
    :goto_3d
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v7, p0, Linfo/flowersoft/theotown/tools/FenceTool;->draft:Linfo/flowersoft/theotown/draft/FenceDraft;

    invoke-virtual {v6, v7, v3, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->canBuildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)Z

    move-result v6

    if-nez v6, :cond_48

    return v1

    .line 109
    :cond_48
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v6, v3, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/tools/FenceTool;->draft:Linfo/flowersoft/theotown/draft/FenceDraft;

    if-eq v3, v4, :cond_59

    iget-wide v5, p0, Linfo/flowersoft/theotown/tools/FenceTool;->price:J

    iget-wide v3, v4, Linfo/flowersoft/theotown/draft/FenceDraft;->price:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Linfo/flowersoft/theotown/tools/FenceTool;->price:J

    :cond_59
    add-int/lit8 p2, p2, 0x1

    goto :goto_30

    .line 112
    :cond_5c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-wide p2, p0, Linfo/flowersoft/theotown/tools/FenceTool;->price:J

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    return p1
.end method

.method public mouseMove(IIFFFFZ)V
    .registers 16

    .line 51
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-super/range {v0 .. v7}, Linfo/flowersoft/theotown/tools/TwoModesTool;->mouseMove(IIFFFFZ)V

    return-void
.end method

.method public onClick(IIFFII)V
    .registers 14

    .line 31
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Linfo/flowersoft/theotown/tools/TwoModesTool;->onClick(IIFFII)V

    return-void
.end method

.method public updateMove(FFFFIIFF)Z
    .registers 18

    .line 46
    invoke-static/range {p7 .. p7}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-super/range {v0 .. v8}, Linfo/flowersoft/theotown/tools/TwoModesTool;->updateMove(FFFFIIFF)Z

    move-result p1

    return p1
.end method
