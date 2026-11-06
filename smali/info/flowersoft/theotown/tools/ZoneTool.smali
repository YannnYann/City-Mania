###### Class info.flowersoft.theotown.tools.ZoneTool (info.flowersoft.theotown.tools.ZoneTool)
.class public Linfo/flowersoft/theotown/tools/ZoneTool;
.super Linfo/flowersoft/theotown/tools/TwoModesTool;
.source "ZoneTool.java"


# instance fields
.field public price:J

.field public final prices:[I

.field public final zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public static synthetic $r8$lambda$GdQDr_EjvbixXVrzRIcB4FHsdiw(Linfo/flowersoft/theotown/tools/ZoneTool;IIII)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 231
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/ZoneTool;->finallyBuild(IIIIZ)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/draft/ZoneDraft;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;-><init>()V

    const/16 v0, 0x4101

    .line 34
    new-array v0, v0, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->prices:[I

    .line 37
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/ZoneTool$1;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/tools/ZoneTool$1;-><init>(Linfo/flowersoft/theotown/tools/ZoneTool;Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 72
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/ZoneTool;->getRoadDraft()Linfo/flowersoft/theotown/draft/RoadDraft;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 73
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->trafficLights:[I

    if-eqz v0, :cond_29

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/ZoneTool$2;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/tools/ZoneTool$2;-><init>(Linfo/flowersoft/theotown/tools/ZoneTool;Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 108
    :cond_29
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/ZoneTool;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/ZoneTool;->calculatePrices()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/ZoneTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 26
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tools/ZoneTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 26
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method private calculatePrices()V
    .registers 20

    move-object/from16 v0, p0

    .line 175
    iget v1, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_118

    .line 176
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/ZoneTool;->getRoadDraft()Linfo/flowersoft/theotown/draft/RoadDraft;

    move-result-object v1

    .line 177
    iget-object v3, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRoadBuilder()Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object v3

    if-eqz v1, :cond_17

    const/4 v4, 0x0

    .line 178
    invoke-virtual {v3, v1, v4}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    :cond_17
    const/16 v4, -0x40

    :goto_19
    const/16 v5, 0x40

    if-gt v4, v5, :cond_118

    const/16 v6, -0x40

    :goto_1f
    if-gt v6, v5, :cond_113

    if-gtz v6, :cond_26

    rsub-int/lit8 v7, v6, -0x40

    goto :goto_27

    :cond_26
    move v7, v6

    :goto_27
    if-gtz v4, :cond_2c

    rsub-int/lit8 v8, v4, -0x40

    goto :goto_2d

    :cond_2c
    move v8, v4

    :goto_2d
    add-int/lit8 v9, v7, 0x40

    add-int/lit8 v10, v8, 0x40

    .line 186
    iget v11, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    add-int/2addr v11, v7

    .line 187
    iget v12, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    add-int/2addr v12, v8

    .line 189
    iget-object v13, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v13, v11, v12}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v13

    if-eqz v13, :cond_10b

    .line 190
    invoke-static {v7}, Lio/blueflower/stapel2d/util/MathUtil;->signum(I)I

    move-result v13

    neg-int v13, v13

    .line 191
    invoke-static {v8}, Lio/blueflower/stapel2d/util/MathUtil;->signum(I)I

    move-result v14

    neg-int v14, v14

    const/4 v15, 0x0

    if-eqz v13, :cond_57

    .line 193
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->prices:[I

    add-int v16, v9, v13

    mul-int/lit16 v5, v10, 0x81

    add-int v16, v16, v5

    aget v1, v1, v16

    goto :goto_58

    :cond_57
    move v1, v15

    :goto_58
    if-eqz v14, :cond_64

    .line 194
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->prices:[I

    add-int v2, v10, v14

    mul-int/lit16 v2, v2, 0x81

    add-int/2addr v2, v9

    aget v2, v5, v2

    add-int/2addr v1, v2

    :cond_64
    mul-int v2, v13, v14

    if-eqz v2, :cond_72

    .line 195
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->prices:[I

    add-int/2addr v13, v9

    add-int/2addr v14, v10

    mul-int/lit16 v14, v14, 0x81

    add-int/2addr v13, v14

    aget v2, v2, v13

    sub-int/2addr v1, v2

    .line 197
    :cond_72
    invoke-virtual {v0, v11, v12}, Linfo/flowersoft/theotown/tools/ZoneTool;->shouldBuildRoadAt(II)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 198
    invoke-virtual {v3, v11, v12, v11, v12}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 199
    invoke-virtual {v3, v15}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setMaxLevel(I)V

    .line 200
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v2

    if-eqz v2, :cond_8b

    int-to-long v1, v1

    .line 201
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getPrice()J

    move-result-wide v13

    add-long/2addr v1, v13

    long-to-int v1, v1

    :cond_8b
    const/4 v14, 0x1

    goto :goto_ac

    .line 203
    :cond_8d
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v5, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v2, v5, v11, v12}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    move-result v2

    if-eqz v2, :cond_8b

    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v11, v12}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v2

    iget-object v5, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eq v2, v5, :cond_8b

    int-to-long v1, v1

    .line 204
    iget-object v13, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v14, 0x1

    invoke-virtual {v13, v5, v14}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/ZoneDraft;I)J

    move-result-wide v17

    add-long v1, v1, v17

    long-to-int v1, v1

    .line 207
    :goto_ac
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, v14, :cond_d7

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/ZoneTool;->useAutoRoads()Z

    move-result v2

    if-eqz v2, :cond_d7

    iget v2, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int/2addr v2, v7

    invoke-virtual {v0, v2, v12}, Linfo/flowersoft/theotown/tools/ZoneTool;->isTileSuitableForRoad(II)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 208
    iget v2, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int/2addr v2, v7

    invoke-virtual {v3, v2, v12}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setTile(II)V

    .line 209
    invoke-virtual {v3, v15}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setMaxLevel(I)V

    .line 210
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v2

    if-eqz v2, :cond_d7

    int-to-long v1, v1

    .line 211
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getPrice()J

    move-result-wide v12

    add-long/2addr v1, v12

    long-to-int v1, v1

    .line 213
    :cond_d7
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v14, 0x1

    if-ne v2, v14, :cond_103

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/ZoneTool;->useAutoRoads()Z

    move-result v2

    if-eqz v2, :cond_103

    iget v2, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int/2addr v2, v8

    invoke-virtual {v0, v11, v2}, Linfo/flowersoft/theotown/tools/ZoneTool;->isTileSuitableForRoad(II)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 214
    iget v2, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int/2addr v2, v8

    invoke-virtual {v3, v11, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setTile(II)V

    .line 215
    invoke-virtual {v3, v15}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setMaxLevel(I)V

    .line 216
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v2

    if-eqz v2, :cond_103

    int-to-long v1, v1

    .line 217
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getPrice()J

    move-result-wide v7

    add-long/2addr v1, v7

    long-to-int v1, v1

    .line 220
    :cond_103
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->prices:[I

    mul-int/lit16 v10, v10, 0x81

    add-int/2addr v9, v10

    aput v1, v2, v9

    goto :goto_10c

    :cond_10b
    move v14, v2

    :goto_10c
    add-int/lit8 v6, v6, 0x1

    move v2, v14

    const/16 v5, 0x40

    goto/16 :goto_1f

    :cond_113
    move v14, v2

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_19

    :cond_118
    return-void
.end method

.method private isValidFast(IIII)Z
    .registers 10

    const/4 v0, 0x0

    .line 376
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    sub-int v1, p3, p1

    .line 377
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/ZoneTool;->getEffectiveMaxSize()I

    move-result v4

    if-le v2, v4, :cond_1c

    return v0

    .line 378
    :cond_1c
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/ZoneTool;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-virtual {p0, p3, p4}, Linfo/flowersoft/theotown/tools/ZoneTool;->isValid(II)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_46

    .line 380
    :cond_29
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->prices:[I

    add-int/lit8 v1, v1, 0x40

    add-int/lit8 v3, v3, 0x40

    mul-int/lit16 v3, v3, 0x81

    add-int/2addr v1, v3

    aget p1, p1, v1

    int-to-long p1, p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->price:J

    .line 381
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-wide p2, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->price:J

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    return p1

    :cond_46
    :goto_46
    return v0
.end method


# virtual methods
.method public build(IIII)V
    .registers 16

    .line 229
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/ZoneTool;->isValid(IIII)Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-nez v0, :cond_b

    return-void

    .line 230
    :cond_b
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz v0, :cond_39

    .line 231
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Tool;->moneyNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

    iget-wide v2, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->price:J

    long-to-double v2, v2

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-int v0, v2

    int-to-long v2, v0

    new-instance v4, Linfo/flowersoft/theotown/tools/ZoneTool$$ExternalSyntheticLambda0;

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Linfo/flowersoft/theotown/tools/ZoneTool$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/tools/ZoneTool;IIII)V

    move-object p1, v5

    iget-object p2, p1, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v5, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Linfo/flowersoft/theotown/city/components/ResourceNeededListener;->beg(JLjava/lang/Runnable;Ljava/lang/String;Z)V

    return-void

    :cond_39
    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    move-object p1, p0

    const/4 v10, 0x1

    move-object v5, p1

    .line 233
    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/tools/ZoneTool;->finallyBuild(IIIIZ)V

    return-void
.end method

.method public draw(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 317
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/BuildTool;->draw(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 318
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 320
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-eqz v0, :cond_a2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    goto/16 :goto_ce

    .line 330
    :cond_16
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne p1, v0, :cond_3f

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne p2, v1, :cond_3f

    .line 331
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-nez v0, :cond_2d

    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 332
    :cond_2d
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 333
    iget-object p1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto/16 :goto_ce

    :cond_3f
    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    .line 334
    iget p1, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-direct {p0, v0, p1, v3, v4}, Linfo/flowersoft/theotown/tools/ZoneTool;->isValidFast(IIII)Z

    move-result p1

    if-nez p1, :cond_4f

    iget-boolean p1, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz p1, :cond_ce

    :cond_4f
    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/tools/ZoneTool;->isTileInvolved(II)Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 335
    iget-object p1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 336
    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/tools/ZoneTool;->shouldBuildRoadAt(II)Z

    move-result p2

    .line 338
    sget p3, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    if-eqz p2, :cond_69

    .line 341
    iget-boolean p3, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz p3, :cond_66

    .line 342
    sget p3, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_RED_DOTTED:I

    goto :goto_6f

    .line 344
    :cond_66
    sget p3, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_BLUE_DOTTED:I

    goto :goto_6f

    .line 346
    :cond_69
    iget-boolean v0, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz v0, :cond_6f

    .line 347
    sget p3, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    :cond_6f
    :goto_6f
    add-int v0, v3, v4

    .line 350
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_78

    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_7a

    :cond_78
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    :goto_7a
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    if-nez p2, :cond_97

    .line 352
    iget-boolean p2, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-nez p2, :cond_97

    const/16 p2, 0x64

    .line 353
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 354
    iget-object p2, v1, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v0, 0x0

    aget v6, p2, v0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    const/16 p2, 0xff

    .line 355
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_97
    move-object v1, p0

    move v6, p3

    .line 358
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 359
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_ce

    :cond_a2
    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    .line 322
    iget-boolean p1, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    if-eqz p1, :cond_ce

    iget p1, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    if-ne p1, v3, :cond_ce

    iget p2, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    if-ne p2, v4, :cond_ce

    .line 323
    iget-object p3, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/ZoneTool;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_bd

    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_bf

    :cond_bd
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    :goto_bf
    invoke-virtual {p3, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 324
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 325
    iget-object p1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 364
    :cond_ce
    :goto_ce
    invoke-virtual {p0, v2, v3, v4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawAreaTextMarker(Linfo/flowersoft/theotown/city/Drawer;II)V

    return-void
.end method

.method public drawBefore(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 2

    .line 169
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/ZoneTool;->calculatePrices()V

    .line 171
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBefore(Lio/blueflower/stapel2d/drawing/Engine;)V

    return-void
.end method

.method public final finallyBuild(IIIIZ)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 238
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 240
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v3

    iget-wide v4, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->price:J

    long-to-double v4, v4

    int-to-float v6, v1

    int-to-float v7, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "build "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v9, v9, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    sub-int v3, v1, p1

    int-to-float v3, v3

    .line 242
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    sub-int v4, v2, p2

    int-to-float v4, v4

    .line 243
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x1

    if-eqz v3, :cond_3f

    move v6, v3

    goto :goto_40

    :cond_3f
    move v6, v5

    :goto_40
    if-eqz v4, :cond_44

    move v7, v4

    goto :goto_45

    :cond_44
    move v7, v5

    .line 246
    :goto_45
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/ZoneTool;->getRoadDraft()Linfo/flowersoft/theotown/draft/RoadDraft;

    move-result-object v8

    .line 247
    iget-object v9, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRoadBuilder()Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object v9

    if-eqz v8, :cond_55

    const/4 v10, 0x0

    .line 248
    invoke-virtual {v9, v8, v10}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 250
    :cond_55
    new-instance v8, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v8}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 252
    sget-boolean v10, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    .line 253
    sput-boolean v5, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    sub-int v3, p1, v3

    move v11, v3

    :goto_61
    add-int v12, v1, v6

    if-eq v11, v12, :cond_123

    sub-int v12, p2, v4

    move v13, v12

    :goto_68
    add-int v14, v2, v7

    if-eq v13, v14, :cond_11a

    .line 257
    iget-object v14, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v14, v11, v13}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v14

    if-nez v14, :cond_7a

    :cond_74
    :goto_74
    move/from16 v17, v4

    move/from16 v16, v6

    goto/16 :goto_112

    .line 259
    :cond_7a
    invoke-virtual {v0, v11, v13}, Linfo/flowersoft/theotown/tools/ZoneTool;->shouldBuildRoadAt(II)Z

    move-result v14

    if-nez v14, :cond_9b

    sub-int v14, p1, v6

    if-eq v11, v14, :cond_9b

    sub-int v14, p2, v7

    if-ne v13, v14, :cond_89

    goto :goto_9b

    .line 281
    :cond_89
    iget-object v14, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v15, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v14, v15, v11, v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    move-result v14

    if-eqz v14, :cond_74

    .line 282
    iget-object v14, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v15, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v14, v15, v11, v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->markZone(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    goto :goto_74

    .line 260
    :cond_9b
    :goto_9b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/ZoneTool;->useAutoRoads()Z

    move-result v14

    if-eqz v14, :cond_74

    iget-object v14, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v14, v11, v13}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v14

    if-nez v14, :cond_74

    const/4 v14, 0x0

    move v15, v5

    :goto_ab
    const/16 v5, 0x8

    if-gt v15, v5, :cond_105

    .line 263
    invoke-static {v15}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v5

    add-int/2addr v5, v11

    .line 264
    invoke-static {v15}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v16

    move/from16 v17, v4

    add-int v4, v13, v16

    move/from16 v16, v6

    .line 265
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-gt v6, v5, :cond_fe

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-gt v5, v6, :cond_fe

    .line 266
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-gt v6, v4, :cond_fe

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-gt v4, v6, :cond_fe

    .line 267
    invoke-virtual {v0, v5, v4}, Linfo/flowersoft/theotown/tools/ZoneTool;->shouldBuildRoadAt(II)Z

    move-result v6

    if-nez v6, :cond_e4

    sub-int v6, p1, v16

    if-eq v5, v6, :cond_e4

    sub-int v6, p2, v7

    if-ne v4, v6, :cond_fe

    .line 268
    :cond_e4
    invoke-virtual {v0, v11, v13}, Linfo/flowersoft/theotown/tools/ZoneTool;->isTileSuitableForRoad(II)Z

    move-result v6

    if-eqz v6, :cond_fe

    invoke-virtual {v0, v5, v4}, Linfo/flowersoft/theotown/tools/ZoneTool;->isTileSuitableForRoad(II)Z

    move-result v6

    if-eqz v6, :cond_fe

    .line 269
    invoke-virtual {v9, v11, v13, v5, v4}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 270
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 271
    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->build()V

    add-int/lit8 v14, v14, 0x1

    :cond_fe
    mul-int/lit8 v15, v15, 0x2

    move/from16 v6, v16

    move/from16 v4, v17

    goto :goto_ab

    :cond_105
    move/from16 v17, v4

    move/from16 v16, v6

    if-lez v14, :cond_112

    .line 277
    invoke-static {v11, v13}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v4

    invoke-virtual {v8, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_112
    :goto_112
    add-int/2addr v13, v7

    move/from16 v6, v16

    move/from16 v4, v17

    const/4 v5, 0x1

    goto/16 :goto_68

    :cond_11a
    move/from16 v17, v4

    move/from16 v16, v6

    add-int v11, v11, v16

    const/4 v5, 0x1

    goto/16 :goto_61

    .line 288
    :cond_123
    sput-boolean v10, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    .line 290
    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/tools/ZoneTool;->setTrafficLights(Lio/blueflower/stapel2d/util/IntList;)V

    .line 292
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/ZoneTool;->runPostprocessors(IIII)V

    .line 294
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD:I

    invoke-virtual {v0, v3, v1, v2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->playSound(III)V

    .line 295
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->issueMovement()V

    .line 297
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

.method public final getEffectiveMaxSize()I
    .registers 2

    .line 368
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->infiniteRange()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x40

    return v0

    :cond_9
    const/16 v0, 0xe

    return v0
.end method

.method public getIcon()I
    .registers 4

    .line 459
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    aget v0, v1, v2

    return v0

    :cond_a
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v0, v0, v2

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Zone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 464
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRoadDraft()Linfo/flowersoft/theotown/draft/RoadDraft;
    .registers 4

    .line 121
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/ZoneTool;->useAutoRoads()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const-class v2, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eq v0, v1, :cond_43

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 123
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eq v0, v1, :cond_43

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 124
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL1:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v0, v1, :cond_27

    goto :goto_43

    .line 126
    :cond_27
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/city/Zones;->FARM:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v0, v1, :cond_3a

    .line 127
    const-string v0, "$dirt_track_00"

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDraft;

    return-object v0

    .line 129
    :cond_3a
    const-string v0, "$road00"

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDraft;

    return-object v0

    .line 125
    :cond_43
    :goto_43
    const-string v0, "$road01"

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDraft;

    return-object v0

    :cond_4c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;
    .registers 2

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-object v0
.end method

.method public isTileInvolved(II)Z
    .registers 10

    .line 440
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 442
    :cond_8
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_7c

    .line 443
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    .line 444
    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    if-eqz v0, :cond_27

    move v4, v0

    goto :goto_28

    :cond_27
    move v4, v1

    :goto_28
    if-eqz v3, :cond_2c

    move v5, v3

    goto :goto_2d

    :cond_2c
    move v5, v1

    .line 447
    :goto_2d
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/ZoneTool;->shouldBuildRoadAt(II)Z

    move-result v6

    if-eqz v6, :cond_7c

    if-eqz v0, :cond_7c

    if-eqz v3, :cond_7c

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_50

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    .line 449
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gt v0, p2, :cond_50

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p2, v0, :cond_77

    :cond_50
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int/2addr v0, v5

    if-ne p2, v0, :cond_6d

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    .line 450
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gt v0, p1, :cond_6d

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt p1, v0, :cond_6d

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-nez v0, :cond_77

    :cond_6d
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_7c

    iget p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int/2addr p1, v5

    if-ne p2, p1, :cond_7c

    :cond_77
    iget-boolean p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-eqz p1, :cond_7c

    return v1

    :cond_7c
    return v2
.end method

.method public final isTileSuitableForRoad(II)Z
    .registers 5

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 158
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    if-eqz v0, :cond_13

    return v1

    .line 161
    :cond_13
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result p1

    if-eqz p1, :cond_1c

    return v1

    :cond_1c
    const/4 p1, 0x1

    return p1
.end method

.method public isValid(II)Z
    .registers 7

    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    .line 388
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/ZoneDraft;I)J

    move-result-wide v1

    iput-wide v1, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->price:J

    .line 389
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v1, v2, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/ZoneTool;->shouldBuildRoadAt(II)Z

    move-result p1

    if-nez p1, :cond_1f

    return v0

    .line 390
    :cond_1f
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-wide v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->price:J

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    return p1
.end method

.method public isValid(IIII)Z
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const-wide/16 v5, 0x0

    .line 396
    iput-wide v5, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->price:J

    const/4 v5, 0x0

    .line 397
    iput-boolean v5, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    sub-int v6, v3, v1

    .line 399
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, v4, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v9, 0x1

    add-int/2addr v7, v9

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/ZoneTool;->getEffectiveMaxSize()I

    move-result v10

    if-le v7, v10, :cond_2a

    return v5

    :cond_2a
    int-to-float v6, v6

    .line 401
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    float-to-int v6, v6

    int-to-float v7, v8

    .line 402
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    float-to-int v7, v7

    if-eqz v6, :cond_3a

    move v8, v6

    goto :goto_3b

    :cond_3a
    move v8, v9

    :goto_3b
    if-eqz v7, :cond_3e

    move v9, v7

    .line 405
    :cond_3e
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/ZoneTool;->getRoadDraft()Linfo/flowersoft/theotown/draft/RoadDraft;

    move-result-object v10

    .line 406
    iget-object v11, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRoadBuilder()Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object v11

    if-eqz v10, :cond_4e

    const/4 v12, 0x0

    .line 407
    invoke-virtual {v11, v10, v12}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 410
    :cond_4e
    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v10

    if-eqz v10, :cond_e2

    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v10

    if-nez v10, :cond_60

    goto/16 :goto_e2

    :cond_60
    sub-int v6, v1, v6

    move v10, v5

    :goto_63
    add-int v12, v3, v8

    if-eq v6, v12, :cond_bb

    sub-int v12, v2, v7

    :goto_69
    add-int v13, v4, v9

    if-eq v12, v13, :cond_b9

    .line 414
    iget-object v13, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v13, v6, v12}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v13

    if-nez v13, :cond_76

    goto :goto_b7

    .line 416
    :cond_76
    invoke-virtual {v0, v6, v12}, Linfo/flowersoft/theotown/tools/ZoneTool;->shouldBuildRoadAt(II)Z

    move-result v13

    if-nez v13, :cond_9c

    sub-int v13, v1, v8

    if-eq v6, v13, :cond_9c

    sub-int v13, v2, v9

    if-ne v12, v13, :cond_85

    goto :goto_9c

    .line 422
    :cond_85
    iget-object v13, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v14, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v13, v14, v6, v12}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    move-result v13

    if-eqz v13, :cond_b7

    iget-object v13, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v13, v6, v12}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v13

    iget-object v14, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eq v13, v14, :cond_b7

    add-int/lit8 v10, v10, 0x1

    goto :goto_b7

    .line 417
    :cond_9c
    :goto_9c
    invoke-virtual {v11, v6, v12, v6, v12}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 418
    invoke-virtual {v11, v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setMaxLevel(I)V

    .line 419
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/ZoneTool;->useAutoRoads()Z

    move-result v13

    if-eqz v13, :cond_b7

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v13

    if-eqz v13, :cond_b7

    .line 420
    iget-wide v13, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->price:J

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getPrice()J

    move-result-wide v15

    add-long/2addr v13, v15

    iput-wide v13, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->price:J

    :cond_b7
    :goto_b7
    add-int/2addr v12, v9

    goto :goto_69

    :cond_b9
    add-int/2addr v6, v8

    goto :goto_63

    .line 428
    :cond_bb
    iget-wide v3, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->price:J

    iget-object v6, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v7, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v6, v7, v10}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/ZoneDraft;I)J

    move-result-wide v6

    add-long/2addr v3, v6

    iput-wide v3, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->price:J

    .line 430
    iget-object v3, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v4, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v3, v4, v1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    move-result v1

    if-nez v1, :cond_d3

    return v5

    .line 434
    :cond_d3
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v1

    iget-wide v2, v0, Linfo/flowersoft/theotown/tools/ZoneTool;->price:J

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    return v1

    :cond_e2
    :goto_e2
    return v5
.end method

.method public final runPostprocessors(IIII)V
    .registers 5

    .line 0
    return-void
.end method

.method public final setTrafficLights(Lio/blueflower/stapel2d/util/IntList;)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 301
    :goto_2
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 302
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    .line 303
    invoke-static {v2}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v3

    .line 304
    invoke-static {v2}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v2

    .line 306
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v3, v2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 307
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->shouldHaveTrafficLights()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 308
    sget-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->autoTrafficLights:Z

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/objects/Road;->setTrafficLights(Z)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2a
    return-void
.end method

.method public final shouldBuildRoadAt(II)Z
    .registers 10

    .line 140
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/ZoneTool;->useAutoRoads()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5c

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/ZoneTool;->isTileSuitableForRoad(II)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5c

    .line 144
    :cond_e
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 145
    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 146
    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    .line 147
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    iget v6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    float-to-int v5, v5

    if-eqz v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move v4, v2

    :goto_3b
    if-eqz v5, :cond_3e

    goto :goto_3f

    :cond_3e
    move v5, v2

    .line 150
    :goto_3f
    sget v6, Linfo/flowersoft/theotown/resources/Settings;->roadZoneWidth:I

    add-int/2addr v6, v2

    rem-int/2addr v0, v6

    if-eqz v0, :cond_5b

    sget v0, Linfo/flowersoft/theotown/resources/Settings;->roadZoneHeight:I

    add-int/2addr v0, v2

    rem-int/2addr v3, v0

    if-eqz v3, :cond_5b

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz v0, :cond_5a

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int/2addr v0, v4

    if-eq p1, v0, :cond_5b

    iget p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int/2addr p1, v5

    if-ne p2, p1, :cond_5a

    goto :goto_5b

    :cond_5a
    return v1

    :cond_5b
    :goto_5b
    return v2

    :cond_5c
    :goto_5c
    return v1
.end method

.method public final useAutoRoads()Z
    .registers 3

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->autoRoad:Z

    if-eqz v1, :cond_10

    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->autoRoadForZones:Z

    if-eqz v1, :cond_10

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->rci:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.tools.ZoneTool.AnonymousClass1 (info.flowersoft.theotown.tools.ZoneTool$1)
.class public Linfo/flowersoft/theotown/tools/ZoneTool$1;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "ZoneTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/ZoneTool;-><init>(Linfo/flowersoft/theotown/draft/ZoneDraft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/ZoneTool;

.field public final synthetic val$zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/ZoneTool;Linfo/flowersoft/theotown/draft/ZoneDraft;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 39
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/ZoneTool$1;->this$0:Linfo/flowersoft/theotown/tools/ZoneTool;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/ZoneTool$1;->val$zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 42
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_AUTOROAD:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 47
    const-string v0, "cmdAutoRoadGrid"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool$1;->this$0:Linfo/flowersoft/theotown/tools/ZoneTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/ZoneTool;->access$100(Linfo/flowersoft/theotown/tools/ZoneTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xd5b

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPressed()Z
    .registers 2

    .line 58
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoRoadForZones:Z

    return v0
.end method

.method public isVisible()Z
    .registers 3

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool$1;->val$zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->autoRoad:Z

    if-eqz v1, :cond_c

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->rci:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 52
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoRoadForZones:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoRoadForZones:Z

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool$1;->this$0:Linfo/flowersoft/theotown/tools/ZoneTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/ZoneTool;->access$000(Linfo/flowersoft/theotown/tools/ZoneTool;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.ZoneTool.AnonymousClass2 (info.flowersoft.theotown.tools.ZoneTool$2)
.class public Linfo/flowersoft/theotown/tools/ZoneTool$2;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "ZoneTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/ZoneTool;-><init>(Linfo/flowersoft/theotown/draft/ZoneDraft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/ZoneTool;

.field public final synthetic val$zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/ZoneTool;Linfo/flowersoft/theotown/draft/ZoneDraft;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 74
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/ZoneTool$2;->this$0:Linfo/flowersoft/theotown/tools/ZoneTool;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/ZoneTool$2;->val$zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 77
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoTrafficLights:Z

    if-eqz v0, :cond_7

    .line 78
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRAFFIC_LIGHTS_ON:I

    return v0

    :cond_7
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRAFFIC_LIGHTS_OFF:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 83
    const-string v0, "cmdTrafficLightsOff"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool$2;->this$0:Linfo/flowersoft/theotown/tools/ZoneTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/ZoneTool;->access$200(Linfo/flowersoft/theotown/tools/ZoneTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x9b6

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPressed()Z
    .registers 2

    .line 93
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoTrafficLights:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool$2;->val$zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->autoRoad:Z

    if-eqz v0, :cond_c

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoRoadForZones:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 88
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoTrafficLights:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoTrafficLights:Z

    return-void
.end method

###### Class info.flowersoft.theotown.tools.ZoneTool$$ExternalSyntheticLambda0 (info.flowersoft.theotown.tools.ZoneTool$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/tools/ZoneTool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tools/ZoneTool;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/ZoneTool;IIII)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/ZoneTool$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/tools/ZoneTool;

    iput p2, p0, Linfo/flowersoft/theotown/tools/ZoneTool$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/tools/ZoneTool$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/tools/ZoneTool$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Linfo/flowersoft/theotown/tools/ZoneTool$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/ZoneTool$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/tools/ZoneTool;

    iget v1, p0, Linfo/flowersoft/theotown/tools/ZoneTool$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/ZoneTool$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/ZoneTool$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Linfo/flowersoft/theotown/tools/ZoneTool$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tools/ZoneTool;->$r8$lambda$GdQDr_EjvbixXVrzRIcB4FHsdiw(Linfo/flowersoft/theotown/tools/ZoneTool;IIII)V

    return-void
.end method
