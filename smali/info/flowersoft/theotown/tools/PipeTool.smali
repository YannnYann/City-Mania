###### Class info.flowersoft.theotown.tools.PipeTool (info.flowersoft.theotown.tools.PipeTool)
.class public Linfo/flowersoft/theotown/tools/PipeTool;
.super Linfo/flowersoft/theotown/tools/TwoModesTool;
.source "PipeTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/tools/PipeTool$ConnectionCandidate;
    }
.end annotation


# instance fields
.field public buildPermission:Z

.field public final connectionCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/PipeTool$ConnectionCandidate;",
            ">;"
        }
    .end annotation
.end field

.field public final draft:Linfo/flowersoft/theotown/draft/PipeDraft;

.field public price:J


# direct methods
.method public static synthetic $r8$lambda$BxdM8coIGnitBZYo4u0DXbRV7YY(Linfo/flowersoft/theotown/tools/PipeTool;IIII)V
    .registers 6

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/PipeTool;->buildPermission:Z

    .line 80
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/PipeTool;->build(IIII)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/draft/PipeDraft;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/PipeTool;->connectionCandidates:Ljava/util/List;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/PipeTool;->buildPermission:Z

    .line 36
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/PipeTool;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->setHasToBeLine(Z)V

    .line 40
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawUnderground:Z

    .line 42
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/PipeTool;)Ljava/util/List;
    .registers 1

    .line 25
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/PipeTool;->connectionCandidates:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/PipeTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 25
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tools/PipeTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 25
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method private recalculate()V
    .registers 3

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultWater;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWater;->calculate()V

    return-void
.end method


# virtual methods
.method public final addCandidate(III)V
    .registers 7

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 142
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 143
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v2

    add-int/2addr p1, v2

    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-nez p1, :cond_33

    .line 144
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Pipe;->getConnectionDir()I

    move-result p1

    invoke-static {p3, p1}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p1

    if-nez p1, :cond_33

    .line 145
    new-instance p1, Linfo/flowersoft/theotown/tools/PipeTool$ConnectionCandidate;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/tools/PipeTool$ConnectionCandidate;-><init>(Linfo/flowersoft/theotown/tools/PipeTool$1;)V

    .line 146
    iput-object v0, p1, Linfo/flowersoft/theotown/tools/PipeTool$ConnectionCandidate;->pipe:Linfo/flowersoft/theotown/city/objects/Pipe;

    .line 147
    iput p3, p1, Linfo/flowersoft/theotown/tools/PipeTool$ConnectionCandidate;->dir:I

    .line 148
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/PipeTool;->connectionCandidates:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    return-void
.end method

.method public final askForConnection(IIII)V
    .registers 13

    .line 114
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->questionListener:Linfo/flowersoft/theotown/city/components/QuestionListener;

    if-eqz v0, :cond_1f

    .line 115
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    new-instance v2, Linfo/flowersoft/theotown/tools/PipeTool$1;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Linfo/flowersoft/theotown/tools/PipeTool$1;-><init>(Linfo/flowersoft/theotown/tools/PipeTool;IIII)V

    move-object p1, v3

    new-instance v5, Linfo/flowersoft/theotown/tools/PipeTool$2;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/tools/PipeTool$2;-><init>(Linfo/flowersoft/theotown/tools/PipeTool;)V

    move-object v4, v2

    const/16 v2, 0x3bf

    const/16 v3, 0x899

    invoke-interface/range {v0 .. v5}, Linfo/flowersoft/theotown/city/components/QuestionListener;->ask(IIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    :cond_1f
    move-object p1, p0

    return-void
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 47
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 49
    new-instance v0, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method

.method public build(IIII)V
    .registers 21

    move-object/from16 v1, p0

    .line 71
    iget-boolean v0, v1, Linfo/flowersoft/theotown/tools/PipeTool;->buildPermission:Z

    const/4 v2, 0x0

    .line 72
    iput-boolean v2, v1, Linfo/flowersoft/theotown/tools/PipeTool;->buildPermission:Z

    .line 74
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/PipeTool;->isValid(IIII)Z

    move-result v2

    if-nez v2, :cond_14

    iget-boolean v2, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-nez v2, :cond_14

    move-object v9, v1

    goto/16 :goto_b2

    :cond_14
    if-nez v0, :cond_4a

    .line 77
    iget-boolean v0, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz v0, :cond_4a

    .line 78
    iget-object v6, v1, Linfo/flowersoft/theotown/city/components/Tool;->moneyNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

    iget-wide v2, v1, Linfo/flowersoft/theotown/tools/PipeTool;->price:J

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

    new-instance v0, Linfo/flowersoft/theotown/tools/PipeTool$$ExternalSyntheticLambda0;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/PipeTool$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/tools/PipeTool;IIII)V

    move-object v9, v1

    iget-object v1, v9, Linfo/flowersoft/theotown/tools/PipeTool;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

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

    .line 85
    iget-object v0, v9, Linfo/flowersoft/theotown/tools/PipeTool;->connectionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 88
    invoke-virtual {v9}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v10

    iget-wide v0, v9, Linfo/flowersoft/theotown/tools/PipeTool;->price:J

    long-to-double v11, v0

    int-to-float v13, v4

    int-to-float v14, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "build pipe "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Linfo/flowersoft/theotown/tools/PipeTool;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 89
    iget-object v0, v9, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, v9, Linfo/flowersoft/theotown/tools/PipeTool;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)Ljava/util/List;

    if-ne v2, v4, :cond_87

    if-eq v3, v5, :cond_99

    :cond_87
    sub-int v0, v4, v2

    sub-int v1, v5, v3

    .line 92
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v0

    .line 93
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v1

    invoke-virtual {v9, v2, v3, v1}, Linfo/flowersoft/theotown/tools/PipeTool;->addCandidate(III)V

    .line 94
    invoke-virtual {v9, v4, v5, v0}, Linfo/flowersoft/theotown/tools/PipeTool;->addCandidate(III)V

    .line 97
    :cond_99
    invoke-direct {v9}, Linfo/flowersoft/theotown/tools/PipeTool;->recalculate()V

    .line 99
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD_WATER:I

    invoke-virtual {v9, v0, v4, v5}, Linfo/flowersoft/theotown/tools/TwoModesTool;->playSound(III)V

    .line 100
    invoke-virtual {v9}, Linfo/flowersoft/theotown/tools/BuildTool;->issueMovement()V

    .line 102
    invoke-virtual {v9}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    .line 104
    iget-object v0, v9, Linfo/flowersoft/theotown/tools/PipeTool;->connectionCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b2

    .line 105
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/PipeTool;->askForConnection(IIII)V

    :cond_b2
    :goto_b2
    return-void
.end method

.method public drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 239
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v4

    if-nez v4, :cond_11

    return-void

    .line 244
    :cond_11
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getMarker()Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    move-result-object v5

    invoke-interface {v5, v1, v2}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->markBuilding(II)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 245
    iget-object v5, v3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 246
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result v6

    .line 247
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v7

    .line 248
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v8

    .line 249
    iget-object v9, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9, v1, v2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v9

    .line 250
    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10, v1, v2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v10

    .line 251
    iget v11, v3, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v4, v11}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v11

    .line 252
    iget v12, v3, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v4, v12}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_43
    if-ltz v4, :cond_6a

    const/4 v12, 0x0

    :goto_46
    if-ge v12, v11, :cond_65

    .line 256
    iget-object v13, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    add-int v14, v12, v9

    add-int v15, v4, v10

    invoke-virtual {v13, v14, v15}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v13

    move/from16 v16, v4

    .line 257
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v14, v15}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v4

    .line 258
    invoke-virtual {v3, v13, v4}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 259
    invoke-virtual {v0, v13, v4, v3}, Linfo/flowersoft/theotown/tools/PipeTool;->drawZone(IILinfo/flowersoft/theotown/city/Drawer;)V

    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v16

    goto :goto_46

    :cond_65
    move/from16 v16, v4

    add-int/lit8 v4, v16, -0x1

    goto :goto_43

    .line 262
    :cond_6a
    invoke-virtual {v5, v6, v7, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 263
    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 266
    :cond_70
    invoke-super/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 7

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 227
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundBorders:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p0, p1, p2, p3, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawWaterGroundBorders(IILinfo/flowersoft/theotown/city/Drawer;I)V

    .line 228
    iget-boolean p1, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 229
    iput-boolean v2, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 230
    invoke-virtual {v0, p3}, Linfo/flowersoft/theotown/city/objects/Pipe;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 231
    iput-boolean p1, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    return-void

    .line 233
    :cond_1c
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/BuildTool;->drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public drawMarkerOverlay(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 5

    .line 292
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v0

    if-nez v0, :cond_b

    .line 293
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/BuildTool;->drawMarkerOverlay(IILinfo/flowersoft/theotown/city/Drawer;)V

    :cond_b
    return-void
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 12

    .line 154
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 155
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawHelperLines(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 157
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-eqz v5, :cond_89

    const/4 v6, 0x1

    if-eq v5, v6, :cond_16

    goto/16 :goto_b5

    .line 167
    :cond_16
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne p1, v5, :cond_3e

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne p2, v5, :cond_3e

    .line 168
    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz v5, :cond_2d

    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-nez v5, :cond_2d

    iget-object v5, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 169
    :cond_2d
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 170
    iget-object v1, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void

    .line 171
    :cond_3e
    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result v4

    if-eqz v4, :cond_b5

    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    .line 172
    invoke-virtual {p0, v4, v5, p1, p2}, Linfo/flowersoft/theotown/tools/PipeTool;->isValid(IIII)Z

    move-result v4

    if-nez v4, :cond_52

    iget-boolean v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz v4, :cond_b5

    .line 173
    :cond_52
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

    .line 175
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v4, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isPipe(II)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 176
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawOverlay(Linfo/flowersoft/theotown/city/Drawer;IIII)V

    return-void

    .line 178
    :cond_76
    iget-boolean v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz v1, :cond_82

    .line 179
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    :goto_7c
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v1

    move-object v1, p3

    goto :goto_85

    .line 180
    :cond_82
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    goto :goto_7c

    .line 181
    :goto_85
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawOverlay(Linfo/flowersoft/theotown/city/Drawer;IIII)V

    return-void

    .line 159
    :cond_89
    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    if-eqz v5, :cond_b5

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    if-ne v5, p1, :cond_b5

    iget v6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    if-ne v6, p2, :cond_b5

    .line 160
    iget-object v7, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p0, v5, v6}, Linfo/flowersoft/theotown/tools/PipeTool;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_a0

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_a2

    :cond_a0
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    :goto_a2
    invoke-virtual {v7, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 161
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 162
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_b5
    :goto_b5
    return-void
.end method

.method public drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z
    .registers 6

    .line 207
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v0

    if-eqz v0, :cond_1c

    if-nez p4, :cond_1c

    .line 210
    iget-object p1, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 p2, 0xff

    .line 211
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 212
    iget-boolean p1, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    const/4 p2, 0x0

    .line 213
    iput-boolean p2, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 214
    invoke-virtual {v0, p3}, Linfo/flowersoft/theotown/city/objects/Pipe;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 215
    iput-boolean p1, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    goto :goto_1f

    .line 217
    :cond_1c
    invoke-super {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/BuildTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    :goto_1f
    const/4 p1, 0x1

    return p1
.end method

.method public drawZone(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 5

    .line 190
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 193
    iget-object p1, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 p2, 0xff

    .line 194
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 195
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 196
    iget-boolean p1, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    const/4 p2, 0x0

    .line 197
    iput-boolean p2, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 198
    invoke-virtual {v0, p3}, Linfo/flowersoft/theotown/city/objects/Pipe;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 199
    iput-boolean p1, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    return-void

    .line 201
    :cond_1f
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawZone(IILinfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 299
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_WATER:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pipe:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/PipeTool;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 304
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/PipeTool;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid(II)Z
    .registers 9

    .line 271
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 272
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/PipeTool;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    move v4, p1

    move v5, p2

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)J

    move-result-wide p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/tools/PipeTool;->price:J

    .line 273
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/PipeTool;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)Z

    move-result p1

    return p1
.end method

.method public isValid(IIII)Z
    .registers 13

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    .line 280
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p3, p4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_47

    .line 281
    :cond_14
    invoke-super {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isValid(IIII)Z

    move-result v1

    if-nez v1, :cond_1b

    return v0

    .line 283
    :cond_1b
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/PipeTool;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)J

    move-result-wide p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    iput-wide p1, p0, Linfo/flowersoft/theotown/tools/PipeTool;->price:J

    .line 284
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/PipeTool;->draft:Linfo/flowersoft/theotown/draft/PipeDraft;

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)Z

    move-result p1

    if-nez p1, :cond_38

    return v0

    .line 285
    :cond_38
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-wide p2, p0, Linfo/flowersoft/theotown/tools/PipeTool;->price:J

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

    .line 60
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->redo(Z)V

    .line 61
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/PipeTool;->recalculate()V

    return-void
.end method

.method public undo(Z)V
    .registers 2

    .line 54
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->undo(Z)V

    .line 55
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/PipeTool;->recalculate()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.PipeTool.AnonymousClass1 (info.flowersoft.theotown.tools.PipeTool$1)
.class public Linfo/flowersoft/theotown/tools/PipeTool$1;
.super Ljava/lang/Object;
.source "PipeTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/PipeTool;->askForConnection(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/PipeTool;

.field public final synthetic val$sx:I

.field public final synthetic val$sy:I

.field public final synthetic val$tx:I

.field public final synthetic val$ty:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/PipeTool;IIII)V
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

    .line 118
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/PipeTool$1;->this$0:Linfo/flowersoft/theotown/tools/PipeTool;

    iput p2, p0, Linfo/flowersoft/theotown/tools/PipeTool$1;->val$sx:I

    iput p3, p0, Linfo/flowersoft/theotown/tools/PipeTool$1;->val$sy:I

    iput p4, p0, Linfo/flowersoft/theotown/tools/PipeTool$1;->val$tx:I

    iput p5, p0, Linfo/flowersoft/theotown/tools/PipeTool$1;->val$ty:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/PipeTool$1;->this$0:Linfo/flowersoft/theotown/tools/PipeTool;

    iget v1, p0, Linfo/flowersoft/theotown/tools/PipeTool$1;->val$sx:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/PipeTool$1;->val$sy:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/PipeTool$1;->val$tx:I

    iget v4, p0, Linfo/flowersoft/theotown/tools/PipeTool$1;->val$ty:I

    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/PipeTool$1;->this$0:Linfo/flowersoft/theotown/tools/PipeTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/PipeTool;->access$000(Linfo/flowersoft/theotown/tools/PipeTool;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/tools/PipeTool$ConnectionCandidate;

    .line 124
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/PipeTool$1;->this$0:Linfo/flowersoft/theotown/tools/PipeTool;

    invoke-static {v2}, Linfo/flowersoft/theotown/tools/PipeTool;->access$100(Linfo/flowersoft/theotown/tools/PipeTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v2

    iget-object v3, v1, Linfo/flowersoft/theotown/tools/PipeTool$ConnectionCandidate;->pipe:Linfo/flowersoft/theotown/city/objects/Pipe;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->remove(Ljava/lang/Object;)Z

    .line 125
    iget-object v2, v1, Linfo/flowersoft/theotown/tools/PipeTool$ConnectionCandidate;->pipe:Linfo/flowersoft/theotown/city/objects/Pipe;

    iget v3, v1, Linfo/flowersoft/theotown/tools/PipeTool$ConnectionCandidate;->dir:I

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/objects/Pipe;->setConnection(I)V

    .line 126
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/PipeTool$1;->this$0:Linfo/flowersoft/theotown/tools/PipeTool;

    invoke-static {v2}, Linfo/flowersoft/theotown/tools/PipeTool;->access$200(Linfo/flowersoft/theotown/tools/PipeTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v2

    iget-object v1, v1, Linfo/flowersoft/theotown/tools/PipeTool$ConnectionCandidate;->pipe:Linfo/flowersoft/theotown/city/objects/Pipe;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 129
    :cond_49
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/PipeTool$1;->this$0:Linfo/flowersoft/theotown/tools/PipeTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

###### Class info.flowersoft.theotown.tools.PipeTool.AnonymousClass2 (info.flowersoft.theotown.tools.PipeTool$2)
.class public Linfo/flowersoft/theotown/tools/PipeTool$2;
.super Ljava/lang/Object;
.source "PipeTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/PipeTool;->askForConnection(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/PipeTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/PipeTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 132
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/PipeTool$2;->this$0:Linfo/flowersoft/theotown/tools/PipeTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.tools.PipeTool.ConnectionCandidate (info.flowersoft.theotown.tools.PipeTool$ConnectionCandidate)
.class public Linfo/flowersoft/theotown/tools/PipeTool$ConnectionCandidate;
.super Ljava/lang/Object;
.source "PipeTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/tools/PipeTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionCandidate"
.end annotation


# instance fields
.field public dir:I

.field public pipe:Linfo/flowersoft/theotown/city/objects/Pipe;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/PipeTool$1;)V
    .registers 2

    .line 307
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/PipeTool$ConnectionCandidate;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.PipeTool$$ExternalSyntheticLambda0 (info.flowersoft.theotown.tools.PipeTool$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/tools/PipeTool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tools/PipeTool;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/PipeTool;IIII)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/PipeTool$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/tools/PipeTool;

    iput p2, p0, Linfo/flowersoft/theotown/tools/PipeTool$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/tools/PipeTool$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/tools/PipeTool$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Linfo/flowersoft/theotown/tools/PipeTool$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/PipeTool$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/tools/PipeTool;

    iget v1, p0, Linfo/flowersoft/theotown/tools/PipeTool$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/PipeTool$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/PipeTool$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Linfo/flowersoft/theotown/tools/PipeTool$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tools/PipeTool;->$r8$lambda$BxdM8coIGnitBZYo4u0DXbRV7YY(Linfo/flowersoft/theotown/tools/PipeTool;IIII)V

    return-void
.end method
