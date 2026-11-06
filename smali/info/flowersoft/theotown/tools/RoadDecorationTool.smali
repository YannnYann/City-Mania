###### Class info.flowersoft.theotown.tools.RoadDecorationTool (info.flowersoft.theotown.tools.RoadDecorationTool)
.class public Linfo/flowersoft/theotown/tools/RoadDecorationTool;
.super Linfo/flowersoft/theotown/tools/TwoModesTool;
.source "RoadDecorationTool.java"


# instance fields
.field public addUnder:Z

.field public final draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

.field public price:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;-><init>()V

    .line 24
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->setHasToBeLine(Z)V

    .line 27
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v0, Linfo/flowersoft/theotown/tools/RoadDecorationTool$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tools/RoadDecorationTool$1;-><init>(Linfo/flowersoft/theotown/tools/RoadDecorationTool;)V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 54
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/RoadDecorationTool;)Z
    .registers 1

    .line 15
    iget-boolean p0, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->addUnder:Z

    return p0
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/tools/RoadDecorationTool;Z)Z
    .registers 2

    .line 15
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->addUnder:Z

    return p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/RoadDecorationTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 15
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 64
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public build(IIII)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 99
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_f
    sub-int v2, v9, v7

    .line 102
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v11, v2, :cond_9b

    move v12, v1

    const/4 v13, 0x0

    :goto_19
    sub-int v1, v8, v6

    .line 103
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v13, v1, :cond_94

    .line 104
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v2, v1, v13

    .line 105
    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v3, v1, v11

    sub-int v1, v2, v6

    .line 106
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v4, v3, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 107
    iget-object v4, v0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget v4, v4, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->lineStepping:I

    rem-int/2addr v1, v4

    if-lez v1, :cond_42

    goto :goto_8f

    .line 109
    :cond_42
    invoke-virtual {v0, v2, v3}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->getRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    .line 110
    iget-object v4, v0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-virtual {v0, v4, v1}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->canBuildOnRoad(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 111
    iget-object v14, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v15, v0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    const/16 v18, 0x0

    sget-boolean v19, Linfo/flowersoft/theotown/resources/Settings;->multiRoadDecorationSupport:Z

    const/16 v17, -0x1

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v19}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildRoadDecoration(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;ILvm2/LuaValue;Z)V

    .line 112
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v20

    iget-object v1, v0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->price:I

    int-to-double v4, v1

    int-to-float v1, v2

    int-to-float v14, v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "build "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget-object v10, v10, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move/from16 v23, v1

    move-wide/from16 v21, v4

    move/from16 v24, v14

    invoke-virtual/range {v20 .. v25}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 113
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->playSound(IIIII)V

    add-int/lit8 v12, v12, 0x1

    :cond_8f
    :goto_8f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_19

    :cond_94
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move v1, v12

    goto/16 :goto_f

    :cond_9b
    if-lez v1, :cond_a0

    .line 119
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/tools/BuildTool;->issueMovement()V

    .line 121
    :cond_a0
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

.method public final canBuildOnRoad(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 93
    :cond_4
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v1

    if-lez v1, :cond_11

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getTopDecoration()Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v1

    if-ne v1, p1, :cond_11

    return v0

    .line 94
    :cond_11
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRoadDecorationBuildable(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result p1

    return p1
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 12

    .line 175
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget-boolean v4, v4, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->lineTool:Z

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawHelperLines(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 176
    :cond_9
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 178
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-eqz v5, :cond_73

    const/4 v6, 0x1

    if-eq v5, v6, :cond_18

    goto/16 :goto_ae

    .line 190
    :cond_18
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne p1, v5, :cond_40

    iget v6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne p2, v6, :cond_40

    .line 191
    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz v5, :cond_2f

    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-nez v5, :cond_2f

    iget-object v5, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 192
    :cond_2f
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 193
    iget-object v1, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void

    .line 194
    :cond_40
    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, v5, v4, p1, p2}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->isValid(IIII)Z

    move-result v4

    if-eqz v4, :cond_ae

    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 195
    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 196
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget v4, v4, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->lineStepping:I

    rem-int v4, v5, v4

    if-lez v4, :cond_69

    goto :goto_ae

    .line 197
    :cond_69
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawOverlay(Linfo/flowersoft/theotown/city/Drawer;IIII)V

    return-void

    .line 180
    :cond_73
    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    if-eqz v5, :cond_98

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    if-ne v5, p1, :cond_98

    iget v6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    if-ne v6, p2, :cond_98

    .line 181
    iget-object v7, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p0, v5, v6}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_8a

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_8c

    :cond_8a
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    :goto_8c
    invoke-virtual {v7, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 182
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 184
    :cond_98
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 185
    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 186
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    :cond_ae
    :goto_ae
    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 205
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_DECORATION:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 59
    const-string v0, "RoadDecoration"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 210
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRoad(II)Linfo/flowersoft/theotown/city/objects/Road;
    .registers 7

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 70
    :cond_a
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBottomRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    if-nez v2, :cond_13

    return-object v1

    .line 73
    :cond_13
    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->maxLevel:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 74
    iget v2, v2, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->minLevel:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 76
    iget-boolean v3, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->addUnder:Z

    if-eqz v3, :cond_39

    :goto_2b
    if-gt v2, v0, :cond_47

    .line 78
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, p1, p2, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-eqz v3, :cond_36

    return-object v3

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_39
    :goto_39
    if-lt v0, v2, :cond_47

    .line 83
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-eqz v3, :cond_44

    return-object v3

    :cond_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    :cond_47
    return-object v1
.end method

.method public isValid(II)Z
    .registers 5

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    .line 160
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 161
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->getRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    .line 163
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-virtual {p0, p2, p1}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->canBuildOnRoad(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 164
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->price:I

    iput p1, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->price:I

    .line 165
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget p2, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->price:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    return p1

    :cond_2d
    return v0
.end method

.method public isValid(IIII)Z
    .registers 13

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isValid(IIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 137
    :cond_8
    iput v1, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->price:I

    move v0, v1

    move v2, v0

    :goto_c
    sub-int v3, p4, p2

    .line 138
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v0, v3, :cond_59

    move v3, v1

    :goto_15
    sub-int v4, p3, p1

    .line 139
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v3, v4, :cond_56

    .line 140
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v3

    .line 141
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v0

    sub-int v6, v4, p1

    .line 142
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v7, v5, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 143
    iget-object v7, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget v7, v7, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->lineStepping:I

    rem-int/2addr v6, v7

    if-lez v6, :cond_3c

    goto :goto_53

    .line 145
    :cond_3c
    invoke-virtual {p0, v4, v5}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->getRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    .line 146
    iget-object v5, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-virtual {p0, v5, v4}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->canBuildOnRoad(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 147
    iget v4, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->price:I

    iget-object v5, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget v5, v5, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->price:I

    add-int/2addr v4, v5

    iput v4, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->price:I

    add-int/lit8 v2, v2, 0x1

    :cond_53
    :goto_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 153
    :cond_59
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget p2, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->price:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz p1, :cond_6e

    if-lez v2, :cond_6e

    const/4 p1, 0x1

    return p1

    :cond_6e
    return v1
.end method

.method public onClick(IIFFII)V
    .registers 10

    .line 126
    invoke-super/range {p0 .. p6}, Linfo/flowersoft/theotown/tools/TwoModesTool;->onClick(IIFFII)V

    move v0, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 127
    iget v1, p1, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    iget-object v1, p1, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->lineTool:Z

    if-nez v1, :cond_1e

    move p1, p2

    move p2, p3

    move p3, p4

    move p4, p5

    move p5, p6

    move p6, v0

    .line 128
    invoke-virtual/range {p0 .. p6}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->onClick(IIFFII)V

    :cond_1e
    return-void
.end method

###### Class info.flowersoft.theotown.tools.RoadDecorationTool.AnonymousClass1 (info.flowersoft.theotown.tools.RoadDecorationTool$1)
.class public Linfo/flowersoft/theotown/tools/RoadDecorationTool$1;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "RoadDecorationTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RoadDecorationTool;-><init>(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RoadDecorationTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RoadDecorationTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 27
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool$1;->this$0:Linfo/flowersoft/theotown/tools/RoadDecorationTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 30
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE_UNDER:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 35
    const-string v0, "cmdAddUnder"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool$1;->this$0:Linfo/flowersoft/theotown/tools/RoadDecorationTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->access$100(Linfo/flowersoft/theotown/tools/RoadDecorationTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xde5

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPressed()Z
    .registers 2

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool$1;->this$0:Linfo/flowersoft/theotown/tools/RoadDecorationTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->access$000(Linfo/flowersoft/theotown/tools/RoadDecorationTool;)Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadDecorationTool$1;->this$0:Linfo/flowersoft/theotown/tools/RoadDecorationTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->access$000(Linfo/flowersoft/theotown/tools/RoadDecorationTool;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tools/RoadDecorationTool;->access$002(Linfo/flowersoft/theotown/tools/RoadDecorationTool;Z)Z

    return-void
.end method
