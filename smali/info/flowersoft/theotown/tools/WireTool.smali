###### Class info.flowersoft.theotown.tools.WireTool (info.flowersoft.theotown.tools.WireTool)
.class public Linfo/flowersoft/theotown/tools/WireTool;
.super Linfo/flowersoft/theotown/tools/TwoModesTool;
.source "WireTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/tools/WireTool$ConnectionCandidate;
    }
.end annotation


# instance fields
.field public buildPermission:Z

.field public final connectionCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/WireTool$ConnectionCandidate;",
            ">;"
        }
    .end annotation
.end field

.field public final draft:Linfo/flowersoft/theotown/draft/WireDraft;

.field public price:J


# direct methods
.method public static synthetic $r8$lambda$T1Dak0OWhw475YFq3GWoj8ZC-uI(Linfo/flowersoft/theotown/tools/WireTool;IIII)V
    .registers 6

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/WireTool;->buildPermission:Z

    .line 78
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/WireTool;->build(IIII)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/draft/WireDraft;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/WireTool;->connectionCandidates:Ljava/util/List;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/WireTool;->buildPermission:Z

    .line 35
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/WireTool;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    const/4 v1, 0x1

    .line 37
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->setHasToBeLine(Z)V

    .line 39
    iget p1, p1, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    if-gez p1, :cond_18

    move v0, v1

    :cond_18
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawUnderground:Z

    .line 41
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/WireTool;)Ljava/util/List;
    .registers 1

    .line 23
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/WireTool;->connectionCandidates:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/WireTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 23
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tools/WireTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 23
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method private addCandidate(IIII)V
    .registers 7

    .line 140
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p4}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object p4

    if-eqz p4, :cond_33

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 142
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v1

    add-int/2addr p1, v1

    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-nez p1, :cond_33

    .line 143
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Wire;->getConnectionDir()I

    move-result p1

    invoke-static {p3, p1}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p1

    if-nez p1, :cond_33

    .line 144
    new-instance p1, Linfo/flowersoft/theotown/tools/WireTool$ConnectionCandidate;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/tools/WireTool$ConnectionCandidate;-><init>(Linfo/flowersoft/theotown/tools/WireTool$1;)V

    .line 145
    iput-object p4, p1, Linfo/flowersoft/theotown/tools/WireTool$ConnectionCandidate;->wire:Linfo/flowersoft/theotown/city/objects/Wire;

    .line 146
    iput p3, p1, Linfo/flowersoft/theotown/tools/WireTool$ConnectionCandidate;->dir:I

    .line 147
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/WireTool;->connectionCandidates:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    return-void
.end method

.method private askForConnection(IIII)V
    .registers 13

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->questionListener:Linfo/flowersoft/theotown/city/components/QuestionListener;

    if-eqz v0, :cond_1f

    .line 116
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    new-instance v2, Linfo/flowersoft/theotown/tools/WireTool$1;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Linfo/flowersoft/theotown/tools/WireTool$1;-><init>(Linfo/flowersoft/theotown/tools/WireTool;IIII)V

    move-object p1, v3

    new-instance v5, Linfo/flowersoft/theotown/tools/WireTool$2;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/tools/WireTool$2;-><init>(Linfo/flowersoft/theotown/tools/WireTool;)V

    move-object v4, v2

    const/16 v2, 0x3bf

    const/16 v3, 0x899

    invoke-interface/range {v0 .. v5}, Linfo/flowersoft/theotown/city/components/QuestionListener;->ask(IIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    :cond_1f
    move-object p1, p0

    return-void
.end method

.method private recalculate()V
    .registers 3

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultPower;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultPower;->calculate()V

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 63
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 64
    new-instance v0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/tools/marker/PowerMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method

.method public build(IIII)V
    .registers 21

    move-object/from16 v1, p0

    .line 69
    iget-boolean v0, v1, Linfo/flowersoft/theotown/tools/WireTool;->buildPermission:Z

    const/4 v2, 0x0

    .line 70
    iput-boolean v2, v1, Linfo/flowersoft/theotown/tools/WireTool;->buildPermission:Z

    .line 72
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/WireTool;->isValid(IIII)Z

    move-result v2

    if-nez v2, :cond_14

    iget-boolean v2, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-nez v2, :cond_14

    move-object v9, v1

    goto/16 :goto_c0

    :cond_14
    if-nez v0, :cond_4a

    .line 75
    iget-boolean v0, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz v0, :cond_4a

    .line 76
    iget-object v6, v1, Linfo/flowersoft/theotown/city/components/Tool;->moneyNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

    iget-wide v2, v1, Linfo/flowersoft/theotown/tools/WireTool;->price:J

    long-to-double v2, v2

    invoke-virtual {v1}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v4

    const-wide/16 v7, 0x0

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-int v0, v2

    int-to-long v7, v0

    new-instance v0, Linfo/flowersoft/theotown/tools/WireTool$$ExternalSyntheticLambda0;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/WireTool$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/tools/WireTool;IIII)V

    move-object v9, v1

    iget-object v1, v9, Linfo/flowersoft/theotown/tools/WireTool;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    iget-object v5, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    move-object v1, v6

    const/4 v6, 0x0

    move-object v4, v0

    move-wide v2, v7

    invoke-interface/range {v1 .. v6}, Linfo/flowersoft/theotown/city/components/ResourceNeededListener;->beg(JLjava/lang/Runnable;Ljava/lang/String;Z)V

    return-void

    :cond_4a
    move/from16 v4, p3

    move/from16 v5, p4

    move-object v9, v1

    .line 83
    iget-object v0, v9, Linfo/flowersoft/theotown/tools/WireTool;->connectionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 87
    invoke-virtual {v9}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v10

    iget-wide v0, v9, Linfo/flowersoft/theotown/tools/WireTool;->price:J

    long-to-double v11, v0

    int-to-float v13, v4

    int-to-float v14, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "build wire "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Linfo/flowersoft/theotown/tools/WireTool;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 88
    iget-object v0, v9, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, v9, Linfo/flowersoft/theotown/tools/WireTool;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/WireDraft;IIII)Ljava/util/List;

    .line 90
    iget-object v0, v9, Linfo/flowersoft/theotown/tools/WireTool;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/WireDraft;->connectable:Z

    if-eqz v0, :cond_a7

    if-ne v2, v4, :cond_8d

    if-eq v3, v5, :cond_a7

    :cond_8d
    sub-int v0, v4, v2

    sub-int v1, v5, v3

    .line 92
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v0

    .line 93
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v1

    iget-object v6, v9, Linfo/flowersoft/theotown/tools/WireTool;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    iget v6, v6, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    invoke-direct {v9, v2, v3, v1, v6}, Linfo/flowersoft/theotown/tools/WireTool;->addCandidate(IIII)V

    .line 94
    iget-object v1, v9, Linfo/flowersoft/theotown/tools/WireTool;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    invoke-direct {v9, v4, v5, v0, v1}, Linfo/flowersoft/theotown/tools/WireTool;->addCandidate(IIII)V

    .line 98
    :cond_a7
    invoke-direct {v9}, Linfo/flowersoft/theotown/tools/WireTool;->recalculate()V

    .line 100
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD:I

    invoke-virtual {v9, v0, v4, v5}, Linfo/flowersoft/theotown/tools/TwoModesTool;->playSound(III)V

    .line 101
    invoke-virtual {v9}, Linfo/flowersoft/theotown/tools/BuildTool;->issueMovement()V

    .line 103
    invoke-virtual {v9}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    .line 105
    iget-object v0, v9, Linfo/flowersoft/theotown/tools/WireTool;->connectionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c0

    .line 106
    invoke-direct/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/WireTool;->askForConnection(IIII)V

    :cond_c0
    :goto_c0
    return-void
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 12

    .line 153
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawHelperLines(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 154
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 156
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v6, -0x1

    invoke-virtual {v5, p1, p2, v6}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 158
    invoke-virtual {v5, p3}, Linfo/flowersoft/theotown/city/objects/Wire;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 161
    :cond_19
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-eqz v5, :cond_95

    const/4 v6, 0x1

    if-eq v5, v6, :cond_22

    goto/16 :goto_c1

    .line 171
    :cond_22
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne p1, v5, :cond_4a

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne p2, v5, :cond_4a

    .line 172
    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz v5, :cond_39

    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-nez v5, :cond_39

    iget-object v5, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 173
    :cond_39
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 174
    iget-object v1, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void

    .line 175
    :cond_4a
    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result v4

    if-eqz v4, :cond_c1

    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    .line 176
    invoke-virtual {p0, v4, v5, p1, p2}, Linfo/flowersoft/theotown/tools/WireTool;->isValid(IIII)Z

    move-result v4

    if-nez v4, :cond_5e

    iget-boolean v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz v4, :cond_c1

    .line 177
    :cond_5e
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

    .line 179
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v4, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWire(II)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 180
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawOverlay(Linfo/flowersoft/theotown/city/Drawer;IIII)V

    return-void

    .line 182
    :cond_82
    iget-boolean v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz v1, :cond_8e

    .line 183
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    :goto_88
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v1

    move-object v1, p3

    goto :goto_91

    .line 184
    :cond_8e
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    goto :goto_88

    .line 185
    :goto_91
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawOverlay(Linfo/flowersoft/theotown/city/Drawer;IIII)V

    return-void

    .line 163
    :cond_95
    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    if-eqz v5, :cond_c1

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    if-ne v5, p1, :cond_c1

    iget v6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    if-ne v6, p2, :cond_c1

    .line 164
    iget-object v7, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p0, v5, v6}, Linfo/flowersoft/theotown/tools/WireTool;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_ac

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_ae

    :cond_ac
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    :goto_ae
    invoke-virtual {v7, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 165
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 166
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 215
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ENERGY:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wire:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/WireTool;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 220
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/WireTool;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid(II)Z
    .registers 9

    .line 194
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 195
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/WireTool;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    move v4, p1

    move v5, p2

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/WireDraft;IIII)J

    move-result-wide p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/tools/WireTool;->price:J

    .line 196
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/WireTool;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/WireDraft;IIII)Z

    move-result p1

    return p1
.end method

.method public isValid(IIII)Z
    .registers 13

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    .line 203
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p3, p4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_47

    .line 204
    :cond_14
    invoke-super {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isValid(IIII)Z

    move-result v1

    if-nez v1, :cond_1b

    return v0

    .line 206
    :cond_1b
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/WireTool;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/WireDraft;IIII)J

    move-result-wide p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    iput-wide p1, p0, Linfo/flowersoft/theotown/tools/WireTool;->price:J

    .line 207
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/WireTool;->draft:Linfo/flowersoft/theotown/draft/WireDraft;

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/WireDraft;IIII)Z

    move-result p1

    if-nez p1, :cond_38

    return v0

    .line 208
    :cond_38
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-wide p2, p0, Linfo/flowersoft/theotown/tools/WireTool;->price:J

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    return p1

    :cond_47
    :goto_47
    return v0
.end method

.method public redo(Z)V
    .registers 2

    .line 57
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->redo(Z)V

    .line 58
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/WireTool;->recalculate()V

    return-void
.end method

.method public undo(Z)V
    .registers 2

    .line 51
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->undo(Z)V

    .line 52
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/WireTool;->recalculate()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.WireTool.AnonymousClass1 (info.flowersoft.theotown.tools.WireTool$1)
.class public Linfo/flowersoft/theotown/tools/WireTool$1;
.super Ljava/lang/Object;
.source "WireTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/WireTool;->askForConnection(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/WireTool;

.field public final synthetic val$sx:I

.field public final synthetic val$sy:I

.field public final synthetic val$tx:I

.field public final synthetic val$ty:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/WireTool;IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/WireTool$1;->this$0:Linfo/flowersoft/theotown/tools/WireTool;

    iput p2, p0, Linfo/flowersoft/theotown/tools/WireTool$1;->val$sx:I

    iput p3, p0, Linfo/flowersoft/theotown/tools/WireTool$1;->val$sy:I

    iput p4, p0, Linfo/flowersoft/theotown/tools/WireTool$1;->val$tx:I

    iput p5, p0, Linfo/flowersoft/theotown/tools/WireTool$1;->val$ty:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/WireTool$1;->this$0:Linfo/flowersoft/theotown/tools/WireTool;

    iget v1, p0, Linfo/flowersoft/theotown/tools/WireTool$1;->val$sx:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/WireTool$1;->val$sy:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/WireTool$1;->val$tx:I

    iget v4, p0, Linfo/flowersoft/theotown/tools/WireTool$1;->val$ty:I

    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/WireTool$1;->this$0:Linfo/flowersoft/theotown/tools/WireTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/WireTool;->access$000(Linfo/flowersoft/theotown/tools/WireTool;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/tools/WireTool$ConnectionCandidate;

    .line 124
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/WireTool$1;->this$0:Linfo/flowersoft/theotown/tools/WireTool;

    invoke-static {v2}, Linfo/flowersoft/theotown/tools/WireTool;->access$100(Linfo/flowersoft/theotown/tools/WireTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object v2

    iget-object v3, v1, Linfo/flowersoft/theotown/tools/WireTool$ConnectionCandidate;->wire:Linfo/flowersoft/theotown/city/objects/Wire;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->remove(Ljava/lang/Object;)Z

    .line 125
    iget-object v2, v1, Linfo/flowersoft/theotown/tools/WireTool$ConnectionCandidate;->wire:Linfo/flowersoft/theotown/city/objects/Wire;

    iget v3, v1, Linfo/flowersoft/theotown/tools/WireTool$ConnectionCandidate;->dir:I

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/objects/Wire;->setConnection(I)V

    .line 126
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/WireTool$1;->this$0:Linfo/flowersoft/theotown/tools/WireTool;

    invoke-static {v2}, Linfo/flowersoft/theotown/tools/WireTool;->access$200(Linfo/flowersoft/theotown/tools/WireTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object v2

    iget-object v1, v1, Linfo/flowersoft/theotown/tools/WireTool$ConnectionCandidate;->wire:Linfo/flowersoft/theotown/city/objects/Wire;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 128
    :cond_49
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/WireTool$1;->this$0:Linfo/flowersoft/theotown/tools/WireTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

###### Class info.flowersoft.theotown.tools.WireTool.AnonymousClass2 (info.flowersoft.theotown.tools.WireTool$2)
.class public Linfo/flowersoft/theotown/tools/WireTool$2;
.super Ljava/lang/Object;
.source "WireTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/WireTool;->askForConnection(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/WireTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/WireTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 131
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/WireTool$2;->this$0:Linfo/flowersoft/theotown/tools/WireTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.tools.WireTool.ConnectionCandidate (info.flowersoft.theotown.tools.WireTool$ConnectionCandidate)
.class public Linfo/flowersoft/theotown/tools/WireTool$ConnectionCandidate;
.super Ljava/lang/Object;
.source "WireTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/tools/WireTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionCandidate"
.end annotation


# instance fields
.field public dir:I

.field public wire:Linfo/flowersoft/theotown/city/objects/Wire;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/WireTool$1;)V
    .registers 2

    .line 223
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/WireTool$ConnectionCandidate;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.WireTool$$ExternalSyntheticLambda0 (info.flowersoft.theotown.tools.WireTool$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/tools/WireTool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tools/WireTool;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/WireTool;IIII)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/WireTool$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/tools/WireTool;

    iput p2, p0, Linfo/flowersoft/theotown/tools/WireTool$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/tools/WireTool$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/tools/WireTool$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Linfo/flowersoft/theotown/tools/WireTool$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/WireTool$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/tools/WireTool;

    iget v1, p0, Linfo/flowersoft/theotown/tools/WireTool$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/WireTool$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/WireTool$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Linfo/flowersoft/theotown/tools/WireTool$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tools/WireTool;->$r8$lambda$T1Dak0OWhw475YFq3GWoj8ZC-uI(Linfo/flowersoft/theotown/tools/WireTool;IIII)V

    return-void
.end method
