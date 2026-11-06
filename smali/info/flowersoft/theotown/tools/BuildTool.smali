###### Class info.flowersoft.theotown.tools.BuildTool (info.flowersoft.theotown.tools.BuildTool)
.class public abstract Linfo/flowersoft/theotown/tools/BuildTool;
.super Linfo/flowersoft/theotown/tools/DefaultTool;
.source "BuildTool.java"


# instance fields
.field public final TILE_HIGHLIGHT:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public addedUndoButton:Z

.field public coloring:Linfo/flowersoft/theotown/city/miniatureview/MarkerMiniatureViewColoring;

.field public currentCityState:Linfo/flowersoft/theotown/city/modifier/CityReverter;

.field public drawUndergroundRoad:Z

.field public marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

.field public maxToolRadius:I

.field public minToolRadius:I

.field public movement:J

.field public final redoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/modifier/CityReverter;",
            ">;"
        }
    .end annotation
.end field

.field public final tempColor:Lio/blueflower/stapel2d/drawing/Color;

.field public toolRadius:I

.field public final undoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/modifier/CityReverter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 68
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/DefaultTool;-><init>()V

    .line 47
    const-string v0, "$anim_ui_tilehighlight00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->TILE_HIGHLIGHT:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->undoList:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->redoList:Ljava/util/List;

    .line 66
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0}, Lio/blueflower/stapel2d/drawing/Color;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->tempColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 69
    new-instance v0, Linfo/flowersoft/theotown/city/miniatureview/MarkerMiniatureViewColoring;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/miniatureview/MarkerMiniatureViewColoring;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->coloring:Linfo/flowersoft/theotown/city/miniatureview/MarkerMiniatureViewColoring;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->useZoneSetting:Z

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/BuildTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 43
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/BuildTool;)Ljava/util/List;
    .registers 1

    .line 43
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->undoList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tools/BuildTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 43
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/tools/BuildTool;)Ljava/util/List;
    .registers 1

    .line 43
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->redoList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/tools/BuildTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 43
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/tools/BuildTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 43
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
.method public addRadiusActionButtons(III)V
    .registers 4

    .line 239
    iput p1, p0, Linfo/flowersoft/theotown/tools/BuildTool;->toolRadius:I

    .line 240
    iput p2, p0, Linfo/flowersoft/theotown/tools/BuildTool;->minToolRadius:I

    .line 241
    iput p3, p0, Linfo/flowersoft/theotown/tools/BuildTool;->maxToolRadius:I

    .line 242
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance p2, Linfo/flowersoft/theotown/tools/BuildTool$3;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/tools/BuildTool$3;-><init>(Linfo/flowersoft/theotown/tools/BuildTool;)V

    new-instance p3, Linfo/flowersoft/theotown/tools/BuildTool$4;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/tools/BuildTool$4;-><init>(Linfo/flowersoft/theotown/tools/BuildTool;)V

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    return-void
.end method

.method public addUndoButton()V
    .registers 4

    .line 172
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->toolHistory:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->addedUndoButton:Z

    if-eqz v0, :cond_9

    goto :goto_1b

    :cond_9
    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->addedUndoButton:Z

    .line 175
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/BuildTool$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/tools/BuildTool$1;-><init>(Linfo/flowersoft/theotown/tools/BuildTool;)V

    new-instance v2, Linfo/flowersoft/theotown/tools/BuildTool$2;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/tools/BuildTool$2;-><init>(Linfo/flowersoft/theotown/tools/BuildTool;)V

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public canRedo()Z
    .registers 4

    .line 90
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->canRevert()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->hasHistory()Z

    move-result v0

    if-eqz v0, :cond_23

    return v2

    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public canUndo()Z
    .registers 4

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/modifier/CityReverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->canRevert()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->hasHistory()Z

    move-result v0

    if-eqz v0, :cond_23

    return v2

    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public captureState(IIII)V
    .registers 13

    const/16 v7, 0x8

    move v5, p3

    move v6, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 129
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIIIIII)V

    return-void
.end method

.method public captureState(IIIIIII)V
    .registers 17

    .line 133
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->toolHistory:Z

    if-nez v0, :cond_5

    return-void

    .line 134
    :cond_5
    new-instance v1, Linfo/flowersoft/theotown/city/modifier/CityReverter;

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/city/modifier/CityReverter;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/BuildTool;->currentCityState:Linfo/flowersoft/theotown/city/modifier/CityReverter;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 135
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->begin(IIIIIII)V

    return-void
.end method

.method public clearRedo()V
    .registers 2

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public draw(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 28

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v1, p3

    .line 307
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 308
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/Drawer;->isTileVisible()Z

    move-result v6

    .line 309
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v8, -0x1

    if-eqz v7, :cond_27

    .line 310
    iget-object v9, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, v2, v3, v8}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v9

    goto :goto_28

    :cond_27
    move-object v9, v5

    :goto_28
    if-eqz v9, :cond_3b

    .line 311
    iget v10, v9, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v10, :cond_36

    iget v11, v1, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    invoke-static {v10, v11}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v10

    if-eqz v10, :cond_3b

    :cond_36
    iget-boolean v10, v0, Linfo/flowersoft/theotown/tools/BuildTool;->drawUndergroundRoad:Z

    if-nez v10, :cond_3b

    move-object v9, v5

    .line 313
    :cond_3b
    iget-boolean v10, v0, Linfo/flowersoft/theotown/tools/BuildTool;->drawUndergroundRoad:Z

    const/4 v11, -0x2

    if-eqz v10, :cond_49

    if-eqz v7, :cond_49

    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v10, v2, v3, v11}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v10

    goto :goto_4a

    :cond_49
    move-object v10, v5

    :goto_4a
    const/4 v12, 0x0

    if-eqz v7, :cond_54

    .line 314
    iget-object v13, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v13, v2, v3, v12}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v13

    goto :goto_55

    :cond_54
    move-object v13, v5

    :goto_55
    const/4 v14, 0x1

    if-eqz v7, :cond_61

    .line 315
    iget-object v15, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v15, v2, v3, v14}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v15

    :goto_5e
    move/from16 v16, v14

    goto :goto_63

    :cond_61
    move-object v15, v5

    goto :goto_5e

    :goto_63
    const/4 v14, 0x2

    if-eqz v7, :cond_6c

    .line 316
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v2, v3, v14}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v5

    :cond_6c
    move-object/from16 v17, v5

    .line 317
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v5

    .line 318
    iget-object v14, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v14, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v14

    move/from16 v18, v12

    .line 319
    iget-object v12, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v12, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v12

    .line 320
    iget-object v11, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 321
    iget-boolean v8, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    move-object/from16 v20, v5

    if-eqz v6, :cond_124

    .line 324
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->hasFence(II)Z

    move-result v5

    if-eqz v5, :cond_97

    if-nez v14, :cond_97

    .line 325
    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFenceBG(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;)V

    :cond_97
    if-eqz v9, :cond_a1

    if-nez v14, :cond_a1

    const/4 v5, -0x1

    .line 330
    invoke-virtual {v0, v2, v3, v1, v5}, Linfo/flowersoft/theotown/tools/BuildTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    move-result v9

    goto :goto_a3

    :cond_a1
    move/from16 v9, v18

    :goto_a3
    if-nez v9, :cond_af

    if-eqz v10, :cond_af

    if-nez v14, :cond_af

    const/4 v10, -0x2

    .line 333
    invoke-virtual {v0, v2, v3, v1, v10}, Linfo/flowersoft/theotown/tools/BuildTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    move-result v9

    goto :goto_b0

    :cond_af
    const/4 v10, -0x2

    :goto_b0
    if-eqz v9, :cond_b4

    goto/16 :goto_125

    :cond_b4
    if-nez v13, :cond_cb

    if-nez v14, :cond_cb

    if-nez v12, :cond_cb

    .line 339
    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/tools/DefaultTool;->calculatePollutionColor(II)V

    .line 340
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->colorBuf:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 341
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/BuildTool;->drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 342
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_125

    :cond_cb
    if-eqz v13, :cond_10e

    .line 344
    iget-object v5, v13, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v5, v5, Linfo/flowersoft/theotown/draft/RoadDraft;->drawGround:Z

    if-nez v5, :cond_d7

    iget v5, v1, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    if-eqz v5, :cond_e7

    .line 345
    :cond_d7
    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/tools/DefaultTool;->calculatePollutionColor(II)V

    .line 346
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->colorBuf:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 347
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/BuildTool;->drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 348
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 350
    :cond_e7
    iget-object v5, v13, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v9, v5, Linfo/flowersoft/theotown/draft/RoadDraft;->drawGround:Z

    if-eqz v9, :cond_f9

    iget v9, v13, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v9, :cond_f9

    iget-boolean v9, v5, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterBorders:Z

    if-eqz v9, :cond_f6

    goto :goto_f9

    :cond_f6
    :goto_f6
    move/from16 v5, v18

    goto :goto_10a

    .line 351
    :cond_f9
    :goto_f9
    iget-object v5, v5, Linfo/flowersoft/theotown/draft/RoadDraft;->waterBorderFrames:[I

    if-eqz v5, :cond_100

    aget v5, v5, v18

    goto :goto_106

    :cond_100
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundBorders:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v5, v5, v18

    .line 352
    :goto_106
    invoke-virtual {v0, v2, v3, v1, v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawWaterGroundBorders(IILinfo/flowersoft/theotown/city/Drawer;I)V

    goto :goto_f6

    .line 354
    :goto_10a
    invoke-virtual {v0, v2, v3, v1, v5}, Linfo/flowersoft/theotown/tools/BuildTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    goto :goto_125

    :cond_10e
    if-nez v14, :cond_125

    .line 356
    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/tools/DefaultTool;->calculatePollutionColor(II)V

    .line 357
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->colorBuf:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 358
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/BuildTool;->drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 359
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 360
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawZone(IILinfo/flowersoft/theotown/city/Drawer;)V

    goto :goto_125

    :cond_124
    const/4 v10, -0x2

    :cond_125
    :goto_125
    if-nez v14, :cond_17a

    if-eqz v6, :cond_17a

    .line 365
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/components/LODController;->drawGrid()Z

    move-result v5

    if-eqz v5, :cond_166

    .line 366
    sget-boolean v5, Linfo/flowersoft/theotown/resources/Settings;->darkBuildTool:Z

    if-eqz v5, :cond_14a

    .line 367
    iget-object v5, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v9, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 368
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_TILE:I

    move-object/from16 v9, v20

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    goto :goto_15e

    :cond_14a
    move-object/from16 v9, v20

    .line 370
    iget-object v0, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 371
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_TILE:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 373
    :goto_15e
    iget-object v5, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v12, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_168

    :cond_166
    move-object/from16 v9, v20

    .line 375
    :goto_168
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    if-eqz v5, :cond_17c

    const/4 v5, 0x0

    .line 376
    iput-boolean v5, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 377
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/BuildTool;->drawMarkerOverlay(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 378
    iput-boolean v8, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 379
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_17c

    :cond_17a
    move-object/from16 v9, v20

    :cond_17c
    :goto_17c
    if-eqz v14, :cond_414

    .line 383
    iget v12, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v14, v2, v3, v12}, Linfo/flowersoft/theotown/city/objects/Building;->isPivot(III)Z

    move-result v12

    if-eqz v12, :cond_414

    .line 384
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v6

    .line 386
    invoke-virtual {v0, v2, v3, v14, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingFenceBG(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 388
    iget-object v12, v0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    if-eqz v12, :cond_255

    invoke-interface {v12, v2, v3}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->markBuilding(II)Z

    move-result v12

    if-eqz v12, :cond_255

    .line 389
    iget-boolean v10, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawGround:Z

    if-eqz v10, :cond_224

    .line 390
    iget-boolean v10, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    if-nez v10, :cond_1b1

    .line 391
    iget-boolean v10, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterBorders:Z

    if-eqz v10, :cond_1ae

    iget-boolean v10, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsWater:Z

    if-nez v10, :cond_1ae

    iget-boolean v6, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsLand:Z

    if-eqz v6, :cond_1ae

    .line 392
    invoke-virtual {v0, v2, v3, v14, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingWaterGroundBorders(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 394
    :cond_1ae
    invoke-virtual {v0, v2, v3, v14, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingTerrainGroundBorders(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 396
    :cond_1b1
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v2, v3}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v6

    .line 397
    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10, v2, v3}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v10

    .line 398
    iget v12, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v14, v12}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    :goto_1c5
    if-ltz v12, :cond_231

    const/4 v13, 0x0

    .line 399
    :goto_1c8
    iget v5, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v14, v5}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v5

    if-ge v13, v5, :cond_218

    .line 400
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    move/from16 v19, v6

    add-int v6, v13, v19

    move/from16 v20, v10

    add-int v10, v12, v20

    invoke-virtual {v5, v6, v10}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v5

    move/from16 v21, v12

    .line 401
    iget-object v12, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v12, v6, v10}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v6

    .line 402
    invoke-virtual {v1, v5, v6}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 406
    iget-object v10, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->colorBuf:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 407
    invoke-virtual {v0, v5, v6, v1}, Linfo/flowersoft/theotown/tools/BuildTool;->drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 409
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1fa

    sget-object v10, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_1fc

    :cond_1fa
    sget-object v10, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    :goto_1fc
    invoke-virtual {v11, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 410
    invoke-virtual {v0, v5, v6, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawZone(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 412
    sget-object v10, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/4 v10, 0x0

    .line 413
    iput-boolean v10, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 414
    invoke-virtual {v0, v5, v6, v1}, Linfo/flowersoft/theotown/tools/BuildTool;->drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 415
    iput-boolean v8, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v19

    move/from16 v10, v20

    move/from16 v12, v21

    goto :goto_1c8

    :cond_218
    move/from16 v19, v6

    move/from16 v20, v10

    move/from16 v21, v12

    .line 417
    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    add-int/lit8 v12, v21, -0x1

    goto :goto_1c5

    .line 420
    :cond_224
    iget-boolean v5, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterGround:Z

    if-eqz v5, :cond_22b

    invoke-virtual {v0, v2, v3, v14, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingWaterGround(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 421
    :cond_22b
    invoke-virtual {v0, v2, v3, v14, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingWaterGroundBorders(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 422
    invoke-virtual {v0, v2, v3, v14, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingTerrainGroundBorders(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 425
    :cond_231
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    invoke-interface {v5, v2, v3}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->getBuildingIntensity(II)F

    move-result v5

    .line 426
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v8, v0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    iget-object v10, v0, Linfo/flowersoft/theotown/tools/BuildTool;->tempColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 427
    invoke-interface {v8, v2, v3, v10}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v8

    invoke-static {v5, v6, v8}, Lio/blueflower/stapel2d/drawing/Colors;->interpolateLight(FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    .line 426
    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 428
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 429
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/BuildTool;->drawBuildingMarker(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 430
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto/16 :goto_40f

    .line 432
    :cond_255
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v2, v3}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v5

    .line 433
    iget-object v12, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v12, v2, v3}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v12

    .line 435
    iget-boolean v13, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawGround:Z

    if-eqz v13, :cond_2cf

    .line 436
    iget-boolean v13, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    if-nez v13, :cond_27b

    .line 437
    iget-boolean v13, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterBorders:Z

    if-eqz v13, :cond_278

    iget-boolean v13, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsWater:Z

    if-nez v13, :cond_278

    iget-boolean v6, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsLand:Z

    if-eqz v6, :cond_278

    .line 438
    invoke-virtual {v0, v2, v3, v14, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingWaterGroundBorders(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 440
    :cond_278
    invoke-virtual {v0, v2, v3, v14, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingTerrainGroundBorders(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 442
    :cond_27b
    iget v6, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v14, v6}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_283
    if-ltz v6, :cond_2c2

    const/4 v13, 0x0

    .line 443
    :goto_286
    iget v10, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v14, v10}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v10

    if-ge v13, v10, :cond_2b8

    .line 444
    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    move/from16 v21, v5

    add-int v5, v13, v21

    move/from16 v22, v6

    add-int v6, v22, v12

    invoke-virtual {v10, v5, v6}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v10

    move/from16 v23, v12

    .line 445
    iget-object v12, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v12, v5, v6}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v5

    .line 446
    invoke-virtual {v1, v10, v5}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 450
    iget-object v6, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->colorBuf:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 451
    invoke-virtual {v0, v10, v5, v1}, Linfo/flowersoft/theotown/tools/BuildTool;->drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v12, v23

    goto :goto_286

    :cond_2b8
    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v12

    add-int/lit8 v6, v22, -0x1

    const/4 v10, -0x2

    goto :goto_283

    :cond_2c2
    move/from16 v21, v5

    move/from16 v23, v12

    .line 454
    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 455
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_2d9

    :cond_2cf
    move/from16 v21, v5

    move/from16 v23, v12

    .line 457
    invoke-virtual {v0, v2, v3, v14, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingWaterGroundBorders(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 458
    invoke-virtual {v0, v2, v3, v14, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingTerrainGroundBorders(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 461
    :goto_2d9
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    if-eqz v5, :cond_35b

    invoke-interface {v5, v2, v3}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->ignoreBuilding(II)Z

    move-result v5

    if-nez v5, :cond_2e5

    goto/16 :goto_35b

    .line 482
    :cond_2e5
    iget v5, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v14, v5}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_2ed
    if-ltz v5, :cond_357

    const/4 v6, 0x0

    .line 483
    :goto_2f0
    iget v10, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v14, v10}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v10

    if-ge v6, v10, :cond_352

    .line 484
    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    add-int v12, v6, v21

    add-int v13, v5, v23

    invoke-virtual {v10, v12, v13}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v10

    move/from16 v22, v5

    .line 485
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v12, v13}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v5

    .line 486
    invoke-virtual {v1, v10, v5}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 489
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_31d

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->isDestroyed()Z

    move-result v12

    if-eqz v12, :cond_31a

    goto :goto_31d

    :cond_31a
    sget-object v12, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_31f

    :cond_31d
    :goto_31d
    sget-object v12, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    :goto_31f
    invoke-virtual {v11, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 490
    invoke-virtual {v0, v10, v5, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawZone(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 491
    sget-object v12, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/4 v12, 0x0

    .line 492
    iput-boolean v12, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 494
    iget-boolean v12, v0, Linfo/flowersoft/theotown/tools/BuildTool;->drawUndergroundRoad:Z

    if-eqz v12, :cond_345

    if-eqz v7, :cond_345

    const/4 v13, -0x2

    :goto_334
    const/4 v12, -0x1

    if-gt v13, v12, :cond_345

    .line 496
    iget-object v12, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v12, v10, v5, v13}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v12

    if-eqz v12, :cond_342

    .line 498
    invoke-virtual {v0, v10, v5, v1, v13}, Linfo/flowersoft/theotown/tools/BuildTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    :cond_342
    add-int/lit8 v13, v13, 0x1

    goto :goto_334

    .line 503
    :cond_345
    invoke-virtual {v0, v10, v5, v1}, Linfo/flowersoft/theotown/tools/BuildTool;->drawMarkerOverlay(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 504
    invoke-virtual {v0, v10, v5, v1}, Linfo/flowersoft/theotown/tools/BuildTool;->drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 505
    iput-boolean v8, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v22

    goto :goto_2f0

    :cond_352
    move/from16 v22, v5

    add-int/lit8 v5, v22, -0x1

    goto :goto_2ed

    .line 508
    :cond_357
    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    goto :goto_3bc

    .line 462
    :cond_35b
    :goto_35b
    iget v5, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v14, v5}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_363
    if-ltz v5, :cond_3b9

    const/4 v6, 0x0

    .line 463
    :goto_366
    iget v10, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v14, v10}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v10

    if-ge v6, v10, :cond_3b4

    .line 464
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_37e

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->isDestroyed()Z

    move-result v10

    if-eqz v10, :cond_37b

    goto :goto_37e

    :cond_37b
    sget-object v10, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_380

    :cond_37e
    :goto_37e
    sget-object v10, Lio/blueflower/stapel2d/drawing/Colors;->DARK_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    :goto_380
    invoke-virtual {v11, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 465
    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    add-int v12, v6, v21

    add-int v13, v5, v23

    invoke-virtual {v10, v12, v13}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v10

    move/from16 v19, v5

    .line 466
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v12, v13}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v5

    .line 467
    invoke-virtual {v1, v10, v5}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 471
    invoke-virtual {v0, v10, v5, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawZone(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 473
    sget-object v12, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/4 v12, 0x0

    .line 474
    iput-boolean v12, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 475
    iget-object v12, v0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    if-eqz v12, :cond_3aa

    invoke-virtual {v0, v10, v5, v1}, Linfo/flowersoft/theotown/tools/BuildTool;->drawMarkerOverlay(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 476
    :cond_3aa
    invoke-virtual {v0, v10, v5, v1}, Linfo/flowersoft/theotown/tools/BuildTool;->drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 477
    iput-boolean v8, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v19

    goto :goto_366

    :cond_3b4
    move/from16 v19, v5

    add-int/lit8 v5, v19, -0x1

    goto :goto_363

    .line 480
    :cond_3b9
    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 510
    :goto_3bc
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 512
    invoke-virtual {v0, v14}, Linfo/flowersoft/theotown/tools/BuildTool;->drawBuildingOpaque(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v5

    if-eqz v5, :cond_3ce

    .line 513
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 514
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/BuildTool;->drawBuildingMarker(IILinfo/flowersoft/theotown/city/Drawer;)V

    goto :goto_40f

    .line 515
    :cond_3ce
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/components/LODController;->drawTransparentBuildMode()Z

    move-result v5

    if-eqz v5, :cond_40c

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v12, 0x0

    .line 516
    invoke-virtual {v1, v12}, Linfo/flowersoft/theotown/city/Drawer;->getYFactor(I)F

    move-result v6

    mul-float/2addr v6, v5

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v5, v5

    mul-float/2addr v5, v5

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    const v6, 0x3e4ccccd    # 0.2f

    add-float/2addr v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    .line 521
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 522
    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 523
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 524
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/BuildTool;->drawBuildingMarker(IILinfo/flowersoft/theotown/city/Drawer;)V

    const/16 v5, 0xff

    .line 525
    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    goto :goto_40f

    .line 527
    :cond_40c
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/BuildTool;->drawBuildingMarker(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 531
    :goto_40f
    invoke-virtual {v0, v2, v3, v14, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingFenceFG(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    const/4 v12, 0x0

    goto :goto_41e

    :cond_414
    const/4 v12, 0x0

    if-eqz v6, :cond_41e

    .line 533
    iput-boolean v12, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 534
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/BuildTool;->drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 535
    iput-boolean v8, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 538
    :cond_41e
    :goto_41e
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v2, v3, v12}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v5

    if-eqz v5, :cond_429

    .line 540
    invoke-virtual {v0, v2, v3, v5, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawWire(IILinfo/flowersoft/theotown/city/objects/Wire;Linfo/flowersoft/theotown/city/Drawer;)V

    :cond_429
    if-eqz v9, :cond_42e

    .line 544
    invoke-virtual {v0, v2, v3, v9, v1}, Linfo/flowersoft/theotown/tools/BuildTool;->drawTree(IILinfo/flowersoft/theotown/city/objects/Tree;Linfo/flowersoft/theotown/city/Drawer;)V

    :cond_42e
    const/16 v5, 0x96

    if-eqz v15, :cond_440

    .line 548
    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move/from16 v6, v16

    .line 549
    invoke-virtual {v0, v2, v3, v1, v6}, Linfo/flowersoft/theotown/tools/BuildTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    const/16 v6, 0xff

    .line 550
    invoke-virtual {v11, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    goto :goto_442

    :cond_440
    const/16 v6, 0xff

    .line 553
    :goto_442
    iget-object v8, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object v8

    if-eqz v8, :cond_453

    .line 554
    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 555
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawRail(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 556
    invoke-virtual {v11, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_453
    if-eqz v17, :cond_45f

    .line 560
    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/4 v8, 0x2

    .line 561
    invoke-virtual {v0, v2, v3, v1, v8}, Linfo/flowersoft/theotown/tools/BuildTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    .line 562
    invoke-virtual {v11, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 565
    :cond_45f
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v8, 0x1

    invoke-virtual {v6, v2, v3, v8}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v6

    if-eqz v6, :cond_46b

    .line 567
    invoke-virtual {v0, v2, v3, v6, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawWire(IILinfo/flowersoft/theotown/city/objects/Wire;Linfo/flowersoft/theotown/city/Drawer;)V

    :cond_46b
    if-eqz v7, :cond_48b

    const/4 v6, 0x3

    .line 571
    :goto_46e
    iget v8, v7, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-gt v6, v8, :cond_48b

    .line 572
    iget-object v8, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v2, v3, v6}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v8

    if-nez v8, :cond_47d

    const/16 v8, 0xff

    goto :goto_488

    .line 575
    :cond_47d
    invoke-virtual {v11, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 576
    invoke-virtual {v0, v2, v3, v1, v6}, Linfo/flowersoft/theotown/tools/BuildTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    const/16 v8, 0xff

    .line 577
    invoke-virtual {v11, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :goto_488
    add-int/lit8 v6, v6, 0x1

    goto :goto_46e

    .line 581
    :cond_48b
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->hasFence(II)Z

    move-result v5

    if-eqz v5, :cond_496

    .line 582
    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFenceFG(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;)V

    :cond_496
    return-void
.end method

.method public drawBuildingMarker(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 4

    .line 0
    return-void
.end method

.method public drawBuildingOpaque(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 2

    .line 587
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result p1

    return p1
.end method

.method public drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 4

    .line 614
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public drawMarkerOverlay(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 13

    .line 637
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    invoke-interface {v0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->useOverlay(II)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 638
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 639
    iget-boolean v0, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    const/4 v1, 0x0

    .line 640
    iput-boolean v1, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 641
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    invoke-interface {v1, p1, p2}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->overlayTempAlpha(II)F

    move-result v1

    .line 642
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    invoke-interface {v2, p1, p2}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->getTempIntensity(II)F

    move-result v2

    .line 643
    iget-object v7, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 646
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getMarkerBackgroundColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v3

    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v6, p0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    iget-object v8, p0, Linfo/flowersoft/theotown/tools/BuildTool;->tempColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 647
    invoke-interface {v6, p1, p2, v8}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    invoke-static {v2, v4, v6}, Lio/blueflower/stapel2d/drawing/Colors;->interpolateLight(FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    .line 646
    invoke-static {v1, v3, v2}, Lio/blueflower/stapel2d/drawing/Colors;->interpolateLight(FLio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    .line 645
    invoke-virtual {v7, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v1, 0x80

    .line 648
    invoke-virtual {v7, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 649
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_WHITE:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    const/16 p1, 0xff

    .line 650
    invoke-virtual {v7, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 651
    iput-boolean v0, v2, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    :cond_53
    return-void
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 4

    .line 0
    return-void
.end method

.method public drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z
    .registers 7

    .line 619
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 620
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, p2, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p4

    .line 621
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v0

    invoke-virtual {p4, p3, v0}, Linfo/flowersoft/theotown/city/objects/Road;->draw(Linfo/flowersoft/theotown/city/Drawer;Z)V

    .line 622
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    invoke-virtual {v0, p1, p2, p4, p3}, Linfo/flowersoft/theotown/components/DefaultTraffic;->drawRoad(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 623
    invoke-virtual {p4, p3}, Linfo/flowersoft/theotown/city/objects/Road;->drawForeground(Linfo/flowersoft/theotown/city/Drawer;)V

    const/4 p1, 0x1

    return p1
.end method

.method public drawTree(IILinfo/flowersoft/theotown/city/objects/Tree;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 8

    .line 599
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Tree;->isBurning()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    if-eqz v0, :cond_10

    invoke-interface {v0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->markTree(II)Z

    move-result v0

    if-nez v0, :cond_27

    .line 600
    :cond_10
    iget-object v0, p4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getTreeTransparency()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 601
    iget v1, p4, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    rsub-int/lit8 v0, v0, -0x10

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {p4, v1, v0, v2, v2}, Linfo/flowersoft/theotown/city/Drawer;->setClipRect(IIII)V

    .line 604
    :cond_27
    invoke-super {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTree(IILinfo/flowersoft/theotown/city/objects/Tree;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 605
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/Drawer;->resetClipping()V

    .line 606
    iget-object p1, p4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public endCaptureState()Z
    .registers 4

    .line 139
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->toolHistory:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 141
    :cond_6
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->currentCityState:Linfo/flowersoft/theotown/city/modifier/CityReverter;

    if-eqz v0, :cond_34

    .line 142
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->end()V

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->currentCityState:Linfo/flowersoft/theotown/city/modifier/CityReverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->canRevert()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->undoList:Ljava/util/List;

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/BuildTool;->currentCityState:Linfo/flowersoft/theotown/city/modifier/CityReverter;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_2b

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->undoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2b
    const/4 v1, 0x1

    :cond_2c
    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->currentCityState:Linfo/flowersoft/theotown/city/modifier/CityReverter;

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_34
    return v1
.end method

.method public getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;
    .registers 3

    .line 164
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    return-object v0
.end method

.method public getMarker()Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;
    .registers 2

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    return-object v0
.end method

.method public getMarkerBackgroundColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 633
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->darkBuildTool:Z

    if-eqz v0, :cond_7

    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0

    :cond_7
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getMiniatureColor(Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/city/Tiles;IIIZ)V
    .registers 14

    .line 629
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->coloring:Linfo/flowersoft/theotown/city/miniatureview/MarkerMiniatureViewColoring;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/miniatureview/MarkerMiniatureViewColoring;->getMiniatureColor(Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/city/Tiles;IIIZ)V

    return-void
.end method

.method public getTreeTransparency()I
    .registers 2

    .line 0
    const/16 v0, 0x78

    return v0
.end method

.method public hasHistory()Z
    .registers 2

    .line 82
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public issueMovement()V
    .registers 1

    .line 0
    return-void
.end method

.method public final redo()V
    .registers 2

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->redo(Z)V

    return-void
.end method

.method public redo(Z)V
    .registers 3

    .line 113
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->canRedo()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 114
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BuildTool;->redoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/modifier/CityReverter;

    .line 115
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->revert()V

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->undoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    return-void
.end method

.method public setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V
    .registers 3

    .line 159
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->coloring:Linfo/flowersoft/theotown/city/miniatureview/MarkerMiniatureViewColoring;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/miniatureview/MarkerMiniatureViewColoring;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method

.method public unbind()V
    .registers 2

    .line 75
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->currentCityState:Linfo/flowersoft/theotown/city/modifier/CityReverter;

    .line 78
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->unbind()V

    return-void
.end method

.method public final undo()V
    .registers 2

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->undo(Z)V

    return-void
.end method

.method public undo(Z)V
    .registers 3

    .line 102
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->canUndo()Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez p1, :cond_f

    .line 104
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v0, "tool_undo"

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    .line 106
    :cond_f
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BuildTool;->undoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/modifier/CityReverter;

    .line 107
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/CityReverter;->revert()V

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->redoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method public update()V
    .registers 1

    .line 663
    invoke-super {p0}, Linfo/flowersoft/theotown/tools/DefaultTool;->update()V

    .line 665
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->updateMovement()V

    return-void
.end method

.method public updateMovement()V
    .registers 8

    .line 668
    iget-wide v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->movement:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_40

    .line 670
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-wide v4, p0, Linfo/flowersoft/theotown/tools/BuildTool;->movement:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_17

    .line 673
    iput-wide v2, p0, Linfo/flowersoft/theotown/tools/BuildTool;->movement:J

    move v0, v1

    .line 676
    :cond_17
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v2

    .line 677
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    .line 678
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v5

    mul-float/2addr v5, v4

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v3, v3

    float-to-double v5, v5

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 681
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v5, v0

    add-double/2addr v3, v5

    double-to-float v0, v3

    .line 683
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v1

    invoke-virtual {v2, v1, v0}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    :cond_40
    return-void
.end method

###### Class info.flowersoft.theotown.tools.BuildTool.AnonymousClass1 (info.flowersoft.theotown.tools.BuildTool$1)
.class public Linfo/flowersoft/theotown/tools/BuildTool$1;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "BuildTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BuildTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BuildTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 175
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildTool$1;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotkey()Linfo/flowersoft/theotown/input/KeyAction;
    .registers 2

    .line 203
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->TOOL_UNDO:Linfo/flowersoft/theotown/input/KeyAction;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .line 178
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BACKWARD:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 183
    const-string v0, "cmdUndoUndo"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildTool$1;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-static {v1}, Linfo/flowersoft/theotown/tools/BuildTool;->access$000(Linfo/flowersoft/theotown/tools/BuildTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0xb3

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildTool$1;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-static {v1}, Linfo/flowersoft/theotown/tools/BuildTool;->access$100(Linfo/flowersoft/theotown/tools/BuildTool;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 198
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool$1;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->canUndo()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool$1;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->undo()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.BuildTool.AnonymousClass2 (info.flowersoft.theotown.tools.BuildTool$2)
.class public Linfo/flowersoft/theotown/tools/BuildTool$2;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "BuildTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BuildTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BuildTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 205
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildTool$2;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotkey()Linfo/flowersoft/theotown/input/KeyAction;
    .registers 2

    .line 233
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->TOOL_REDO:Linfo/flowersoft/theotown/input/KeyAction;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .line 208
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_FORWARD:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 213
    const-string v0, "cmdUndoRedo"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildTool$2;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-static {v1}, Linfo/flowersoft/theotown/tools/BuildTool;->access$200(Linfo/flowersoft/theotown/tools/BuildTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x4f

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildTool$2;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-static {v1}, Linfo/flowersoft/theotown/tools/BuildTool;->access$300(Linfo/flowersoft/theotown/tools/BuildTool;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 228
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool$2;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->canRedo()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 218
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool$2;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->redo()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.BuildTool.AnonymousClass3 (info.flowersoft.theotown.tools.BuildTool$3)
.class public Linfo/flowersoft/theotown/tools/BuildTool$3;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "BuildTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BuildTool;->addRadiusActionButtons(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BuildTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BuildTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 242
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildTool$3;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotkey()Linfo/flowersoft/theotown/input/KeyAction;
    .registers 2

    .line 270
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->TOOL_SMALLER:Linfo/flowersoft/theotown/input/KeyAction;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .line 245
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_MINUS:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 250
    const-string v0, "cmdMinus"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool$3;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->access$400(Linfo/flowersoft/theotown/tools/BuildTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x71c

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 3

    .line 260
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool$3;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    iget v1, v0, Linfo/flowersoft/theotown/tools/BuildTool;->toolRadius:I

    iget v0, v0, Linfo/flowersoft/theotown/tools/BuildTool;->minToolRadius:I

    if-le v1, v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 4

    .line 255
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool$3;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    iget v1, v0, Linfo/flowersoft/theotown/tools/BuildTool;->toolRadius:I

    add-int/lit8 v1, v1, -0x1

    iget v2, v0, Linfo/flowersoft/theotown/tools/BuildTool;->minToolRadius:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/tools/BuildTool;->toolRadius:I

    return-void
.end method

###### Class info.flowersoft.theotown.tools.BuildTool.AnonymousClass4 (info.flowersoft.theotown.tools.BuildTool$4)
.class public Linfo/flowersoft/theotown/tools/BuildTool$4;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "BuildTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BuildTool;->addRadiusActionButtons(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BuildTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BuildTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 272
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildTool$4;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotkey()Linfo/flowersoft/theotown/input/KeyAction;
    .registers 2

    .line 300
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->TOOL_BIGGER:Linfo/flowersoft/theotown/input/KeyAction;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .line 275
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 280
    const-string v0, "cmdPlus"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 295
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool$4;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->access$500(Linfo/flowersoft/theotown/tools/BuildTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x97e

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 3

    .line 290
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool$4;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    iget v1, v0, Linfo/flowersoft/theotown/tools/BuildTool;->toolRadius:I

    iget v0, v0, Linfo/flowersoft/theotown/tools/BuildTool;->maxToolRadius:I

    if-ge v1, v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 4

    .line 285
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildTool$4;->this$0:Linfo/flowersoft/theotown/tools/BuildTool;

    iget v1, v0, Linfo/flowersoft/theotown/tools/BuildTool;->toolRadius:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, Linfo/flowersoft/theotown/tools/BuildTool;->maxToolRadius:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/tools/BuildTool;->toolRadius:I

    return-void
.end method
