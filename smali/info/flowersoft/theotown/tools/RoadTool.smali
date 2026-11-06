###### Class info.flowersoft.theotown.tools.RoadTool (info.flowersoft.theotown.tools.RoadTool)
.class public Linfo/flowersoft/theotown/tools/RoadTool;
.super Linfo/flowersoft/theotown/tools/TwoModesTool;
.source "RoadTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;
    }
.end annotation


# instance fields
.field public final METRO_MARKER:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public buildPermission:Z

.field public calculatedPos:I

.field public final connectionCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;",
            ">;"
        }
    .end annotation
.end field

.field public currentLevel:I

.field public decorationRoads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/RoadDraft;",
            ">;"
        }
    .end annotation
.end field

.field public decorations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public diamondPrice:I

.field public final draft:Linfo/flowersoft/theotown/draft/RoadDraft;

.field public fixedDiamondPrice:I

.field public invertedLanes:Z

.field public final lanes:Lio/blueflower/stapel2d/util/IntList;

.field public levelMode:I

.field public price:J

.field public final redoLevelHistory:Lio/blueflower/stapel2d/util/IntList;

.field public singleLaneMode:Z

.field public startLevel:I

.field public final tileToPrice:Lcom/badlogic/gdx/utils/IntIntMap;

.field public tunnelTiles:I

.field public final undoLevelHistory:Lio/blueflower/stapel2d/util/IntList;

.field public zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;


# direct methods
.method public static synthetic $r8$lambda$7A0kmV5v5roUJsICE21f-71We7o(Linfo/flowersoft/theotown/tools/RoadTool;IIII)V
    .registers 6

    const/4 v0, 0x1

    .line 475
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->buildPermission:Z

    .line 476
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/RoadTool;->build(IIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$UhJtsxSt_bmmxFIb1RXI-B3CNDc()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$ZrVofE8jYRoLF42enG5A8X04AXE(Linfo/flowersoft/theotown/tools/RoadTool;IIII)V
    .registers 5

    .line 727
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 728
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->connectionCandidates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;

    .line 729
    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object p3

    iget-object p4, p2, Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;->road:Linfo/flowersoft/theotown/city/objects/Road;

    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/city/RoadList;->remove(Ljava/lang/Object;)Z

    .line 730
    iget-object p3, p2, Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;->road:Linfo/flowersoft/theotown/city/objects/Road;

    iget p4, p2, Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;->dir:I

    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/city/objects/Road;->setConnection(I)V

    .line 731
    iget-object p3, p2, Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;->road:Linfo/flowersoft/theotown/city/objects/Road;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->shouldHaveTrafficLights()Z

    move-result p3

    if-eqz p3, :cond_36

    .line 732
    iget-object p3, p2, Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;->road:Linfo/flowersoft/theotown/city/objects/Road;

    sget-boolean p4, Linfo/flowersoft/theotown/resources/Settings;->autoTrafficLights:Z

    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/city/objects/Road;->setTrafficLights(Z)V

    .line 734
    :cond_36
    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object p3

    iget-object p2, p2, Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;->road:Linfo/flowersoft/theotown/city/objects/Road;

    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/city/RoadList;->add(Linfo/flowersoft/theotown/city/objects/Road;)Z

    goto :goto_9

    .line 736
    :cond_42
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

.method public static synthetic $r8$lambda$kshPAxL6PcGYT3jGLBLUQcbWsN0(Linfo/flowersoft/theotown/tools/RoadTool;IIIII)V
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    const/4 p1, 0x1

    .line 469
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->buildPermission:Z

    .line 470
    invoke-virtual {p0, p2, p3, p4, p5}, Linfo/flowersoft/theotown/tools/RoadTool;->build(IIII)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/draft/RoadDraft;)V
    .registers 8

    .line 84
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;-><init>()V

    .line 53
    const-string v0, "$metro_marker00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->METRO_MARKER:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 59
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->levelMode:I

    const/4 v1, -0x1

    .line 64
    iput v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->calculatedPos:I

    .line 65
    new-instance v1, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->tileToPrice:Lcom/badlogic/gdx/utils/IntIntMap;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->connectionCandidates:Ljava/util/List;

    .line 71
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->singleLaneMode:Z

    .line 77
    new-instance v1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->undoLevelHistory:Lio/blueflower/stapel2d/util/IntList;

    .line 78
    new-instance v1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->redoLevelHistory:Lio/blueflower/stapel2d/util/IntList;

    .line 80
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->buildPermission:Z

    .line 85
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 86
    iget v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->minLevel:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->maxLevel:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->setHasToBeLine(Z)V

    .line 89
    iget v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->setLineWidth(I)V

    .line 91
    iget v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    if-le v1, v0, :cond_cc

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->decorations:Ljava/util/List;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->decorationRoads:Ljava/util/List;

    .line 94
    iget-object v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->decorationBuildingIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    sget-object v3, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Draft;

    .line 96
    instance-of v4, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v4, :cond_90

    .line 97
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->decorations:Ljava/util/List;

    check-cast v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 98
    :cond_90
    instance-of v4, v3, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v4, :cond_9c

    .line 99
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->decorationRoads:Ljava/util/List;

    check-cast v3, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 101
    :cond_9c
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find decoration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for road "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Road Tool"

    invoke-interface {v3, v4, v2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    .line 104
    :cond_bf
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->decorationRoads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cc

    .line 105
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->decorations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 109
    :cond_cc
    iget-boolean v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->autoJoin:Z

    if-eqz v1, :cond_de

    iget-boolean v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->devoted:Z

    if-nez v1, :cond_de

    .line 110
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v2, Linfo/flowersoft/theotown/tools/RoadTool$1;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/tools/RoadTool$1;-><init>(Linfo/flowersoft/theotown/tools/RoadTool;)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 139
    :cond_de
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->trafficLights:[I

    if-eqz v2, :cond_f3

    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->experimentalFeatures:Z

    if-eqz v2, :cond_f3

    .line 141
    new-instance v2, Linfo/flowersoft/theotown/tools/RoadTool$2;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/tools/RoadTool$2;-><init>(Linfo/flowersoft/theotown/tools/RoadTool;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_f3
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/RoadDraft;->hasDecorations()Z

    move-result v2

    if-eqz v2, :cond_101

    .line 170
    new-instance v2, Linfo/flowersoft/theotown/tools/RoadTool$3;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/tools/RoadTool$3;-><init>(Linfo/flowersoft/theotown/tools/RoadTool;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_101
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Ljava/util/List;)V

    .line 200
    iget v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    if-le v1, v0, :cond_11c

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->decorationRoads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 201
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v2, Linfo/flowersoft/theotown/tools/RoadTool$4;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/tools/RoadTool$4;-><init>(Linfo/flowersoft/theotown/tools/RoadTool;)V

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 231
    :cond_11c
    iget v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->maxLevel:I

    if-lez v1, :cond_12d

    iget v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->minLevel:I

    if-gtz v1, :cond_12d

    .line 232
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_BRIDGE:I

    const-string v2, "cmdRoadBridge"

    const/16 v3, 0xd54

    invoke-virtual {p0, v1, v2, v0, v3}, Linfo/flowersoft/theotown/tools/RoadTool;->addModeAction(ILjava/lang/String;II)V

    .line 235
    :cond_12d
    iget v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->minLevel:I

    if-gez v0, :cond_13f

    iget v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->maxLevel:I

    if-ltz v0, :cond_13f

    .line 236
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_CONSTANT:I

    const/4 v1, 0x5

    const/16 v2, 0x448

    const-string v3, "cmdRoadConstant"

    invoke-virtual {p0, v0, v3, v1, v2}, Linfo/flowersoft/theotown/tools/RoadTool;->addModeAction(ILjava/lang/String;II)V

    .line 240
    :cond_13f
    iget v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->minLevel:I

    iget v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->maxLevel:I

    if-ge v0, v1, :cond_154

    .line 241
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/RoadTool$5;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/tools/RoadTool$5;-><init>(Linfo/flowersoft/theotown/tools/RoadTool;Linfo/flowersoft/theotown/draft/RoadDraft;)V

    new-instance v2, Linfo/flowersoft/theotown/tools/RoadTool$6;

    invoke-direct {v2, p0, p1}, Linfo/flowersoft/theotown/tools/RoadTool$6;-><init>(Linfo/flowersoft/theotown/tools/RoadTool;Linfo/flowersoft/theotown/draft/RoadDraft;)V

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 324
    :cond_154
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 44
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 44
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 44
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 44
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$1200(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 44
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/draft/RoadDraft;
    .registers 1

    .line 44
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    return-object p0
.end method

.method public static synthetic access$1400(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 44
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 44
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/tools/RoadTool;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->singleLaneMode:Z

    return p0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/tools/RoadTool;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->singleLaneMode:Z

    return p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/tools/RoadTool;)I
    .registers 1

    .line 44
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RoadTool;->getRoadWidth()I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/tools/RoadTool;)V
    .registers 1

    .line 44
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RoadTool;->resetCalculation()V

    return-void
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 44
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/tools/RoadTool;)I
    .registers 1

    .line 44
    iget p0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->levelMode:I

    return p0
.end method

.method public static synthetic access$702(Linfo/flowersoft/theotown/tools/RoadTool;I)I
    .registers 2

    .line 44
    iput p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->levelMode:I

    return p1
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 44
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 44
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method private askForConnection(IIII)V
    .registers 13

    .line 722
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->questionListener:Linfo/flowersoft/theotown/city/components/QuestionListener;

    if-eqz v0, :cond_1d

    .line 723
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    new-instance v2, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda2;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/tools/RoadTool;IIII)V

    new-instance v5, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda3;-><init>()V

    move-object v4, v2

    const/16 v2, 0x883

    const/16 v3, 0x6fb

    invoke-interface/range {v0 .. v5}, Linfo/flowersoft/theotown/city/components/QuestionListener;->ask(IIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public final addCandidate(IIII)V
    .registers 8

    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    .line 684
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_55

    .line 685
    :cond_18
    invoke-static {p4}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 686
    invoke-static {p4}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 687
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_55

    .line 688
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 690
    iget p2, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez p2, :cond_55

    .line 692
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getConnectionDir()I

    move-result p2

    invoke-static {p4, p2}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p2

    if-nez p2, :cond_55

    iget-object p2, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean p2, p2, Linfo/flowersoft/theotown/draft/RoadDraft;->connectable:Z

    if-eqz p2, :cond_55

    .line 694
    new-instance p2, Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;-><init>(Linfo/flowersoft/theotown/tools/RoadTool$1;)V

    .line 695
    iput-object p1, p2, Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;->road:Linfo/flowersoft/theotown/city/objects/Road;

    .line 696
    iput p4, p2, Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;->dir:I

    .line 697
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->connectionCandidates:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    return-void
.end method

.method public final addModeAction(ILjava/lang/String;II)V
    .registers 12

    .line 377
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/RoadTool$8;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/RoadTool$8;-><init>(Linfo/flowersoft/theotown/tools/RoadTool;ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    return-void
.end method

.method public allowsDiagonal()Z
    .registers 4

    .line 1166
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v2, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->allowDiagonal:Z

    if-nez v2, :cond_f

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalRoad:Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v2, :cond_2a

    :cond_f
    iget v2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    if-eqz v2, :cond_25

    .line 1168
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/RoadDraft;->hasBridge()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalRoad:Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/RoadDraft;->hasBridge()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_25
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->diagonalRoadTool:Z

    if-eqz v0, :cond_2a

    return v1

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 354
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 355
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    .line 357
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->showTrafficMarkerInRoadTool:Z

    if-eqz v0, :cond_16

    new-instance v0, Linfo/flowersoft/theotown/tools/RoadTool$7;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/tools/RoadTool$7;-><init>(Linfo/flowersoft/theotown/tools/RoadTool;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    :cond_16
    return-void
.end method

.method public build(IIII)V
    .registers 33

    move-object/from16 v0, p0

    .line 455
    iget-boolean v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->buildPermission:Z

    const/4 v8, 0x0

    .line 456
    iput-boolean v8, v0, Linfo/flowersoft/theotown/tools/RoadTool;->buildPermission:Z

    .line 458
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->resetCalculation()V

    .line 459
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/RoadTool;->isValid(IIII)Z

    move-result v2

    if-nez v2, :cond_16

    iget-boolean v2, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-nez v2, :cond_16

    goto/16 :goto_4d8

    :cond_16
    const/4 v9, 0x1

    if-nez v1, :cond_a8

    .line 461
    iput v8, v0, Linfo/flowersoft/theotown/tools/RoadTool;->fixedDiamondPrice:I

    .line 462
    iget v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    if-lez v1, :cond_71

    .line 463
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object v1

    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getTunnelPriceFactor(I)I

    move-result v1

    .line 464
    iget v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    add-int/2addr v2, v1

    sub-int/2addr v2, v9

    div-int/2addr v2, v1

    iput v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->fixedDiamondPrice:I

    .line 466
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/resources/Features;->FEATURE_FREETUNNELS00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/LazyGetter;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 467
    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/Tool;->diamondNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

    iget v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->fixedDiamondPrice:I

    int-to-long v11, v1

    new-instance v13, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v1, v0

    move-object v0, v13

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/tools/RoadTool;IIIII)V

    move-object v0, v1

    iget-object v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v14, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-boolean v1, v7, Linfo/flowersoft/theotown/draft/FeatureDraft;->buyable:Z

    if-eqz v1, :cond_6c

    .line 471
    invoke-virtual {v7}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v1

    if-nez v1, :cond_6c

    move v15, v9

    goto :goto_6d

    :cond_6c
    move v15, v8

    .line 467
    :goto_6d
    invoke-interface/range {v10 .. v15}, Linfo/flowersoft/theotown/city/components/ResourceNeededListener;->beg(JLjava/lang/Runnable;Ljava/lang/String;Z)V

    return-void

    .line 473
    :cond_71
    iget-boolean v1, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz v1, :cond_a8

    .line 474
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/Tool;->moneyNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

    iget-wide v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->price:J

    long-to-double v1, v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v3

    const-wide/16 v7, 0x0

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-int v1, v1

    int-to-long v7, v1

    new-instance v5, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda1;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v1, v0

    move-object v0, v5

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/tools/RoadTool;IIII)V

    move-object v5, v0

    move-object v0, v1

    iget-object v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    move-wide v3, v7

    const/4 v7, 0x0

    move-object v2, v6

    move-object v6, v1

    invoke-interface/range {v2 .. v7}, Linfo/flowersoft/theotown/city/components/ResourceNeededListener;->beg(JLjava/lang/Runnable;Ljava/lang/String;Z)V

    return-void

    :cond_a8
    const/16 v7, 0x8

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 482
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIIIIII)V

    move v7, v1

    move v10, v2

    move v11, v3

    move v12, v4

    .line 484
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v1

    iget-wide v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->price:J

    long-to-double v2, v2

    int-to-float v4, v11

    int-to-float v5, v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "build road "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v13, v13, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 485
    iget v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->fixedDiamondPrice:I

    if-lez v1, :cond_100

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v1

    iget v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->fixedDiamondPrice:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->spendDiamonds(ILjava/lang/String;)V

    .line 486
    :cond_100
    iget v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tunnelTiles:I

    if-lez v1, :cond_117

    iget-object v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelDiamondPrice:I

    if-lez v1, :cond_117

    .line 487
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object v1

    iget v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tunnelTiles:I

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->consumeFreeTunnels(I)I

    .line 490
    :cond_117
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRoadBuilder()Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object v13

    .line 491
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->getRoadWidth()I

    move-result v1

    .line 493
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->connectionCandidates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 495
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/RoadDraft;->buildZone:Z

    if-eqz v3, :cond_145

    .line 496
    iget-object v3, v0, Linfo/flowersoft/theotown/tools/RoadTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/RoadDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setZone(Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    .line 497
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v2, v7, v10, v11, v12}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setArea(IIII)V

    .line 498
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->isBuildable()Z

    move-result v2

    if-eqz v2, :cond_145

    .line 499
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->build()V

    .line 503
    :cond_145
    iget v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    const/4 v14, 0x0

    if-ne v1, v9, :cond_208

    .line 506
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v13, v1, v14}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    if-eq v7, v11, :cond_1be

    if-eq v10, v12, :cond_1be

    .line 507
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->allowsDiagonal()Z

    move-result v1

    if-eqz v1, :cond_1be

    .line 508
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalRoad:Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v1, :cond_162

    .line 509
    invoke-virtual {v13, v1, v14}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    :cond_162
    sub-int v1, v11, v7

    sub-int v3, v12, v10

    .line 513
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_172

    move v4, v9

    goto :goto_173

    :cond_172
    move v4, v8

    .line 514
    :goto_173
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int v14, v1, v5

    .line 515
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int v15, v3, v1

    move v3, v2

    move/from16 v16, v4

    move v1, v7

    move v2, v10

    :goto_184
    if-ne v1, v11, :cond_188

    if-eq v2, v12, :cond_4a1

    :cond_188
    if-eqz v16, :cond_18e

    add-int v3, v1, v14

    move v4, v2

    goto :goto_192

    :cond_18e
    add-int v3, v2, v15

    move v4, v3

    move v3, v1

    .line 523
    :goto_192
    invoke-virtual {v13, v1, v2, v3, v4}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 524
    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/tools/RoadTool;->setBuilderMode(I)V

    .line 525
    invoke-virtual {v13, v8}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v5

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v13, v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tools/RoadTool;->logModification(IIIIII)V

    .line 526
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->build()V

    .line 527
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v13, v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v1

    .line 528
    invoke-virtual {v0, v7, v10, v13}, Linfo/flowersoft/theotown/tools/RoadTool;->setTrafficLights(IILinfo/flowersoft/theotown/city/modifier/RoadBuilder;)V

    xor-int/lit8 v16, v16, 0x1

    move v2, v3

    move v3, v1

    move v1, v2

    move v2, v4

    goto :goto_184

    .line 535
    :cond_1be
    invoke-virtual {v13, v7, v10, v11, v12}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 536
    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/tools/RoadTool;->setBuilderMode(I)V

    .line 537
    invoke-virtual {v13, v8}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v5

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v13, v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v6

    move v1, v7

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tools/RoadTool;->logModification(IIIIII)V

    .line 538
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->build()V

    .line 539
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v13, v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v3

    .line 540
    invoke-virtual {v0, v7, v10, v13}, Linfo/flowersoft/theotown/tools/RoadTool;->setTrafficLights(IILinfo/flowersoft/theotown/city/modifier/RoadBuilder;)V

    .line 541
    invoke-virtual {v13, v8}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v1

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDir()I

    move-result v2

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v2

    invoke-virtual {v0, v7, v10, v1, v2}, Linfo/flowersoft/theotown/tools/RoadTool;->addCandidate(IIII)V

    .line 542
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v13, v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v1

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDir()I

    move-result v2

    invoke-virtual {v0, v11, v12, v1, v2}, Linfo/flowersoft/theotown/tools/RoadTool;->addCandidate(IIII)V

    goto/16 :goto_4a1

    .line 545
    :cond_208
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/RoadTool;->calculateLanes(IIII)V

    move v15, v2

    move v1, v8

    .line 546
    :goto_20d
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_4a0

    .line 547
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    mul-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    .line 548
    iget-object v4, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    .line 549
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    .line 550
    iget-object v6, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v6, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    .line 551
    iget-object v6, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    sub-int/2addr v6, v9

    const/4 v14, 0x2

    if-ne v1, v6, :cond_250

    iget-object v6, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    rem-int/2addr v6, v14

    if-ne v6, v9, :cond_250

    move v6, v9

    goto :goto_251

    :cond_250
    move v6, v8

    :goto_251
    move/from16 v17, v9

    if-eqz v6, :cond_2de

    .line 552
    iget-object v9, v0, Linfo/flowersoft/theotown/tools/RoadTool;->decorations:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2de

    if-ne v4, v3, :cond_266

    sub-int v6, v5, v2

    .line 553
    :goto_261
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto :goto_269

    :cond_266
    sub-int v6, v3, v4

    goto :goto_261

    :goto_269
    add-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v2

    sub-int/2addr v3, v4

    .line 554
    invoke-static {v5, v3}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v3

    move v5, v8

    :goto_272
    if-ge v5, v6, :cond_2d9

    .line 556
    invoke-virtual {v13, v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v9

    if-nez v9, :cond_2cf

    .line 557
    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v9, v2

    .line 558
    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v14

    mul-int/2addr v14, v5

    add-int/2addr v14, v4

    .line 559
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/RoadTool;->decorations:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v25, v3

    rem-int v3, v5, v18

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 560
    iget-object v8, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    move/from16 v26, v5

    iget-boolean v5, v8, Linfo/flowersoft/theotown/draft/ZoneDraft;->rci:Z

    if-eqz v5, :cond_2a3

    .line 561
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v5, v8, v9, v14}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->markZone(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    .line 563
    :cond_2a3
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v8, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v8, v8

    rem-int v24, v26, v8

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v19, v3

    move-object/from16 v18, v5

    move/from16 v20, v9

    move/from16 v21, v14

    .line 564
    invoke-virtual/range {v18 .. v24}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;IIZZI)Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    move-result-object v3

    move-object/from16 v5, v19

    if-nez v3, :cond_2d3

    .line 566
    iget-object v3, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v8, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v8, v8

    rem-int v22, v26, v8

    const/16 v23, 0x0

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v23}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    goto :goto_2d3

    :cond_2cf
    move/from16 v25, v3

    move/from16 v26, v5

    :cond_2d3
    :goto_2d3
    add-int/lit8 v5, v26, 0x1

    move/from16 v3, v25

    const/4 v8, 0x0

    goto :goto_272

    :cond_2d9
    move v5, v8

    const/4 v9, 0x0

    move v8, v1

    goto/16 :goto_494

    :cond_2de
    if-eqz v6, :cond_326

    .line 570
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/RoadTool;->decorationRoads:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_326

    .line 571
    iget-object v6, v0, Linfo/flowersoft/theotown/tools/RoadTool;->decorationRoads:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/RoadDraft;

    const/4 v9, 0x0

    invoke-virtual {v13, v6, v9}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 572
    invoke-virtual {v13, v2, v4, v5, v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 573
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/RoadTool;->setBuilderMode(I)V

    .line 574
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->build()V

    .line 576
    invoke-virtual {v0, v2, v4, v13}, Linfo/flowersoft/theotown/tools/RoadTool;->setTrafficLights(IILinfo/flowersoft/theotown/city/modifier/RoadBuilder;)V

    .line 578
    invoke-virtual {v13, v8}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v6

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDir()I

    move-result v8

    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v8

    invoke-virtual {v0, v2, v4, v6, v8}, Linfo/flowersoft/theotown/tools/RoadTool;->addCandidate(IIII)V

    .line 579
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v13, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v2

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDir()I

    move-result v4

    invoke-virtual {v0, v5, v3, v2, v4}, Linfo/flowersoft/theotown/tools/RoadTool;->addCandidate(IIII)V

    :cond_321
    move v8, v1

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_494

    :cond_326
    if-nez v6, :cond_321

    .line 581
    iget-object v6, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v6, v6, Linfo/flowersoft/theotown/draft/RoadDraft;->allowCrossing:Z

    if-nez v6, :cond_438

    sub-int v6, v5, v2

    sub-int v8, v3, v4

    .line 582
    invoke-static {v6, v8}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v8

    .line 583
    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->axis(I)I

    move-result v9

    .line 584
    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v18

    .line 585
    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v19

    .line 586
    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v8

    .line 587
    iget-object v14, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/City;->isLeftSideTraffic()Z

    move-result v14

    if-eqz v14, :cond_352

    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v8

    :cond_352
    add-int/2addr v6, v3

    sub-int/2addr v6, v4

    .line 588
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v14, v6, 0x1

    .line 591
    iget-object v7, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    const/4 v10, 0x0

    invoke-virtual {v13, v7, v10}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 592
    invoke-virtual {v13, v2, v4, v5, v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 593
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/RoadTool;->setBuilderMode(I)V

    .line 594
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move/from16 v21, v2

    move v7, v4

    move v10, v5

    move v4, v3

    move v5, v7

    const/4 v2, 0x0

    move/from16 v3, v21

    :goto_372
    move/from16 v22, v4

    if-ge v2, v14, :cond_430

    .line 596
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    move/from16 v23, v5

    invoke-virtual {v13, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v5

    invoke-virtual {v4, v3, v7, v5}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    if-lez v2, :cond_3c5

    if-ge v2, v6, :cond_3c5

    if-eqz v4, :cond_3c5

    .line 599
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v5

    move/from16 v24, v3

    not-int v3, v8

    and-int/2addr v3, v5

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/city/objects/Road;->alignTo(I)V

    .line 600
    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v3

    add-int v3, v24, v3

    .line 601
    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v5

    add-int/2addr v5, v7

    move/from16 v25, v6

    .line 602
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v3, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_3c2

    .line 603
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    move/from16 v26, v7

    iget v7, v4, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    invoke-virtual {v6, v3, v5, v7}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-eqz v3, :cond_3ca

    .line 604
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v5

    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v6

    not-int v6, v6

    and-int/2addr v5, v6

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/city/objects/Road;->alignTo(I)V

    goto :goto_3ca

    :cond_3c2
    :goto_3c2
    move/from16 v26, v7

    goto :goto_3ca

    :cond_3c5
    move/from16 v24, v3

    move/from16 v25, v6

    goto :goto_3c2

    .line 608
    :cond_3ca
    :goto_3ca
    iget v3, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    add-int/lit8 v5, v3, -0x1

    if-ne v2, v5, :cond_3f6

    sub-int v3, v14, v3

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_3f6

    if-eqz v4, :cond_3f6

    .line 610
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v3

    invoke-static {v9, v3}, Linfo/flowersoft/theotown/city/Direction;->union(II)I

    move-result v3

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v3

    const/4 v5, 0x2

    if-le v3, v5, :cond_3f6

    .line 611
    iget v3, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    add-int/lit8 v5, v3, -0x1

    mul-int v5, v5, v18

    add-int v21, v21, v5

    add-int/lit8 v3, v3, -0x1

    mul-int v3, v3, v19

    add-int v5, v23, v3

    goto :goto_3f8

    :cond_3f6
    move/from16 v5, v23

    .line 615
    :goto_3f8
    iget v3, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    sub-int v6, v14, v3

    if-ne v2, v6, :cond_421

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_421

    if-eqz v4, :cond_421

    .line 617
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v3

    invoke-static {v9, v3}, Linfo/flowersoft/theotown/city/Direction;->union(II)I

    move-result v3

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_422

    .line 618
    iget v3, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    add-int/lit8 v6, v3, -0x1

    mul-int v6, v6, v18

    sub-int/2addr v10, v6

    add-int/lit8 v3, v3, -0x1

    mul-int v3, v3, v19

    sub-int v3, v22, v3

    goto :goto_424

    :cond_421
    const/4 v4, 0x2

    :cond_422
    move/from16 v3, v22

    :goto_424
    add-int v6, v24, v18

    add-int v7, v26, v19

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    move v3, v6

    move/from16 v6, v25

    goto/16 :goto_372

    :cond_430
    move/from16 v23, v5

    move v5, v10

    move/from16 v2, v21

    move/from16 v3, v23

    goto :goto_43d

    :cond_438
    move/from16 v27, v4

    move v4, v3

    move/from16 v3, v27

    .line 627
    :goto_43d
    iget-object v6, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    const/4 v9, 0x0

    invoke-virtual {v13, v6, v9}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 628
    invoke-virtual {v13, v2, v3, v5, v4}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 629
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/RoadTool;->setBuilderMode(I)V

    move v6, v1

    move v1, v2

    move v2, v3

    move v3, v5

    const/4 v8, 0x0

    .line 631
    invoke-virtual {v13, v8}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v5

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v13, v7}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v7

    move v8, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tools/RoadTool;->logModification(IIIIII)V

    .line 633
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->build()V

    if-nez v8, :cond_470

    .line 634
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v13, v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v15

    .line 636
    :cond_470
    invoke-virtual {v0, v1, v2, v13}, Linfo/flowersoft/theotown/tools/RoadTool;->setTrafficLights(IILinfo/flowersoft/theotown/city/modifier/RoadBuilder;)V

    const/4 v5, 0x0

    .line 638
    invoke-virtual {v13, v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v6

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDir()I

    move-result v7

    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v7

    invoke-virtual {v0, v1, v2, v6, v7}, Linfo/flowersoft/theotown/tools/RoadTool;->addCandidate(IIII)V

    .line 639
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v13, v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v1

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDir()I

    move-result v2

    invoke-virtual {v0, v3, v4, v1, v2}, Linfo/flowersoft/theotown/tools/RoadTool;->addCandidate(IIII)V

    :goto_494
    add-int/lit8 v1, v8, 0x1

    move/from16 v7, p1

    move/from16 v10, p2

    move v8, v5

    move-object v14, v9

    move/from16 v9, v17

    goto/16 :goto_20d

    :cond_4a0
    move v3, v15

    .line 644
    :cond_4a1
    :goto_4a1
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    move-result v1

    if-eqz v1, :cond_4ae

    .line 645
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->undoLevelHistory:Lio/blueflower/stapel2d/util/IntList;

    iget v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 648
    :cond_4ae
    iget v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    if-ltz v1, :cond_4b4

    if-gez v3, :cond_4c3

    :cond_4b4
    iget-object v1, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result v1

    if-eqz v1, :cond_4c3

    .line 649
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v2, "underground_build"

    invoke-interface {v1, v2}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    .line 652
    :cond_4c3
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD:I

    invoke-virtual {v0, v1, v11, v12}, Linfo/flowersoft/theotown/tools/TwoModesTool;->playSound(III)V

    .line 653
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->issueMovement()V

    .line 655
    iput v3, v0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    .line 657
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->connectionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d8

    .line 658
    invoke-direct/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/RoadTool;->askForConnection(IIII)V

    :cond_4d8
    :goto_4d8
    return-void
.end method

.method public final calculateLanes(IIII)V
    .registers 12

    .line 1080
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    sub-int v0, p3, p1

    sub-int v1, p4, p2

    .line 1083
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1084
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1085
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RoadTool;->getRoadWidth()I

    move-result v2

    .line 1087
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_135

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-le v3, v4, :cond_135

    .line 1088
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1089
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1090
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1091
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v0, v1, :cond_8c

    move p2, v5

    .line 1093
    :goto_38
    div-int/lit8 v0, v2, 0x2

    if-ge p2, v0, :cond_6b

    .line 1094
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1095
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    add-int v1, v4, p2

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1096
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1097
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1098
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1099
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    sub-int v1, p4, p2

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1100
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1101
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_38

    .line 1103
    :cond_6b
    rem-int/lit8 p2, v2, 0x2

    if-ne p2, v6, :cond_84

    .line 1104
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1105
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    add-int/2addr v4, v0

    invoke-virtual {p2, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1106
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1107
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_84
    if-eq v3, p1, :cond_88

    move p1, v6

    goto :goto_89

    :cond_88
    move p1, v5

    .line 1109
    :goto_89
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->invertedLanes:Z

    goto :goto_e0

    :cond_8c
    move p1, v5

    .line 1111
    :goto_8d
    div-int/lit8 v0, v2, 0x2

    if-ge p1, v0, :cond_c0

    .line 1112
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    sub-int v1, p3, p1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1113
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1114
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1115
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1116
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    add-int v1, v3, p1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1117
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1118
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1119
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_8d

    .line 1121
    :cond_c0
    rem-int/lit8 p1, v2, 0x2

    if-ne p1, v6, :cond_d9

    .line 1122
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1123
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1124
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 1125
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_d9
    if-eq v4, p2, :cond_dd

    move p1, v6

    goto :goto_de

    :cond_dd
    move p1, v5

    .line 1127
    :goto_de
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->invertedLanes:Z

    :goto_e0
    if-le v2, v6, :cond_135

    .line 1130
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->isLeftSideTraffic()Z

    move-result p1

    if-eqz p1, :cond_135

    iget-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_135

    .line 1131
    :goto_f2
    div-int/lit8 p1, v2, 0x2

    mul-int/lit8 p1, p1, 0x2

    if-ge v5, p1, :cond_135

    iget-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    if-ge v5, p1, :cond_135

    .line 1132
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    mul-int/lit8 p2, v5, 0x4

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    .line 1133
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 p4, p2, 0x1

    invoke-virtual {p3, p4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p3

    .line 1134
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {v0, p2, v3}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 1135
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {v0, p4, v3}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 1136
    iget-object p4, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p4, v1, p1}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 1137
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p2, p3}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f2

    :cond_135
    return-void
.end method

.method public cancel(IIII)V
    .registers 5

    .line 823
    invoke-super {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->cancel(IIII)V

    .line 824
    iget p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    iput p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    return-void
.end method

.method public drawBefore(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 2

    .line 829
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBefore(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 830
    iget p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    if-gez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/BuildTool;->drawUndergroundRoad:Z

    .line 831
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawUnderground:Z

    return-void
.end method

.method public drawBuildingMarker(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 7

    .line 705
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/BuildTool;->drawBuildingMarker(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 707
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 709
    iget-boolean p2, p0, Linfo/flowersoft/theotown/tools/BuildTool;->drawUndergroundRoad:Z

    if-eqz p2, :cond_46

    .line 710
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p2

    const-string v0, "metro"

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_46

    .line 711
    iget-object p2, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v0, 0xff

    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 712
    iget-object p2, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 713
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 714
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    .line 715
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result p1

    neg-int p1, p1

    mul-int/lit8 p1, p1, 0xc

    int-to-float p1, p1

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->METRO_MARKER:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 713
    invoke-virtual {p3, p2, v0, p1, v1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_46
    return-void
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 17

    move-object/from16 v1, p3

    .line 745
    iget-object v6, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 746
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 748
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawHelperLines(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 750
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/16 v9, 0x32

    if-eqz v0, :cond_110

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1f

    goto/16 :goto_152

    .line 768
    :cond_1f
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne v0, p1, :cond_5c

    iget v3, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne v3, p2, :cond_5c

    .line 769
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-nez v0, :cond_34

    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 770
    :cond_34
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    move-object v3, v1

    .line 771
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 772
    iget p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    if-eqz p1, :cond_152

    .line 773
    invoke-virtual {v6, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 774
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget p2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    iget v0, v3, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    add-int/2addr p2, v0

    mul-int/lit8 p2, p2, -0xc

    int-to-float p2, p2

    sget v0, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    invoke-virtual {v3, p1, v8, p2, v0}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 775
    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void

    :cond_5c
    move-object v3, v1

    .line 777
    iget v6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, v0, v6, p1, p2}, Linfo/flowersoft/theotown/tools/RoadTool;->isValid(IIII)Z

    move-result v0

    if-nez v0, :cond_ea

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz v0, :cond_6b

    goto/16 :goto_ea

    .line 782
    :cond_6b
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RoadTool;->getRoadWidth()I

    move-result v0

    .line 783
    iget v6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int v6, p1, v6

    .line 784
    iget v7, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int v7, p2, v7

    .line 785
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-nez v8, :cond_87

    move v8, v2

    goto :goto_88

    :cond_87
    const/4 v8, 0x0

    .line 786
    :goto_88
    iget-object v9, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v9

    iget v10, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget v11, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {v9, v10, v11}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v9

    iget v10, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    add-int/2addr v9, v10

    .line 787
    iget-object v10, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v10

    iget v11, p0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    add-int/2addr v10, v11

    if-ne v0, v2, :cond_db

    if-eqz v8, :cond_db

    .line 789
    iget v12, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    if-eq v12, v11, :cond_db

    .line 790
    invoke-static {v6, v7}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result p1

    iget p2, v3, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result p1

    .line 791
    iget p2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    iget v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    if-ge p2, v0, :cond_c2

    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result p1

    .line 792
    :cond_c2
    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    sub-int/2addr v10, v9

    .line 795
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/2addr v10, p1

    .line 796
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    return-void

    :cond_db
    if-le v0, v2, :cond_152

    if-eqz v8, :cond_152

    .line 813
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    const/4 v5, -0x1

    move-object v0, p0

    move v2, p1

    move-object v1, v3

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawOverlay(Linfo/flowersoft/theotown/city/Drawer;IIII)V

    return-void

    .line 778
    :cond_ea
    :goto_ea
    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 779
    iget-boolean v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-eqz v1, :cond_109

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    :goto_102
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v1

    move-object/from16 v1, p3

    goto :goto_10c

    :cond_109
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    goto :goto_102

    .line 780
    :goto_10c
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawOverlay(Linfo/flowersoft/theotown/city/Drawer;IIII)V

    return-void

    .line 753
    :cond_110
    iget-boolean v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetHover:Z

    if-eqz v1, :cond_152

    .line 754
    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetX:I

    if-ne v1, p1, :cond_152

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetY:I

    if-ne v5, p2, :cond_152

    .line 755
    invoke-virtual {p0, v1, v5}, Linfo/flowersoft/theotown/tools/RoadTool;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_125

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_127

    :cond_125
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    :goto_127
    invoke-virtual {v6, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 756
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 757
    iget p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    if-eqz p1, :cond_14d

    .line 758
    invoke-virtual {v6, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 759
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget p2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    iget v2, v1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    add-int/2addr p2, v2

    mul-int/lit8 p2, p2, -0xc

    int-to-float p2, p2

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    invoke-virtual {v1, p1, v8, p2, v2}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 760
    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 762
    :cond_14d
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_152
    :goto_152
    return-void
.end method

.method public drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z
    .registers 14

    .line 836
    iget v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    if-ne p4, v0, :cond_b

    .line 837
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 840
    :cond_b
    iget-boolean v0, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    const/4 v1, 0x0

    .line 841
    iput-boolean v1, p3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 843
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p1, p2, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p4

    if-nez p4, :cond_19

    return v1

    .line 846
    :cond_19
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result v1

    invoke-virtual {p4, p3, v1}, Linfo/flowersoft/theotown/city/objects/Road;->draw(Linfo/flowersoft/theotown/city/Drawer;Z)V

    .line 847
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    invoke-virtual {v1, p1, p2, p4, p3}, Linfo/flowersoft/theotown/components/DefaultTraffic;->drawRoad(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 848
    invoke-virtual {p4, p3}, Linfo/flowersoft/theotown/city/objects/Road;->drawForeground(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 850
    iget-object v1, p4, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 851
    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWay:Z

    if-eqz v1, :cond_54

    iget v1, p4, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v1, :cond_54

    .line 852
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v2, p4, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_ARROWS:I

    .line 853
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Road;->getFrame()I

    move-result v4

    div-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x4

    iget v5, p3, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    sub-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    .line 852
    invoke-virtual {p3, v1, v4, v2, v3}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 856
    :cond_54
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v6

    .line 858
    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v8, 0x1

    if-eqz v1, :cond_ac

    if-eq v1, v8, :cond_68

    move-object v3, p3

    goto/16 :goto_c1

    .line 863
    :cond_68
    iget p4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne p1, p4, :cond_7a

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne p2, v1, :cond_7a

    .line 864
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v3, p3

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    goto :goto_c1

    :cond_7a
    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v3, p3

    .line 866
    iget p1, v2, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, p4, p1, v4, v5}, Linfo/flowersoft/theotown/tools/RoadTool;->isValid(IIII)Z

    move-result p1

    if-nez p1, :cond_90

    iget-boolean p1, v2, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    if-nez p1, :cond_90

    .line 867
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_RED:I

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    goto :goto_c1

    .line 869
    :cond_90
    iget-object p1, v3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    add-int p2, v4, v5

    .line 870
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_9b

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_9d

    :cond_9b
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    :goto_9d
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 871
    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 872
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_c1

    :cond_ac
    move v4, p1

    move v5, p2

    move-object v3, p3

    .line 860
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result p2

    iget p3, v3, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {p2, p3}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result p2

    add-int v7, p1, p2

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 879
    :goto_c1
    iput-boolean v0, v3, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    return v8
.end method

.method public getIcon()I
    .registers 2

    .line 1146
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRAFFIC:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Road:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .line 1151
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 1152
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v2, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->minLevel:I

    iget v3, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->maxLevel:I

    if-ne v2, v3, :cond_14

    .line 1153
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1155
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRoadWidth()I
    .registers 2

    .line 373
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->singleLaneMode:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    return v0
.end method

.method public isValid(II)Z
    .registers 7

    const/4 v0, 0x0

    .line 885
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    .line 886
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 888
    :cond_c
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRoadBuilder()Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object v1

    .line 889
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 890
    invoke-virtual {v1, p1, p2, p1, p2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 891
    iget v2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    iput v2, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    .line 892
    iput p1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    .line 893
    iput p2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    .line 894
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/RoadTool;->setBuilderMode(I)V

    .line 895
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result p1

    if-nez p1, :cond_2d

    return v0

    .line 896
    :cond_2d
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getPrice()J

    move-result-wide p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->price:J

    .line 897
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-wide v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->price:J

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    return p1
.end method

.method public isValid(IIII)Z
    .registers 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    .line 925
    iput v5, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tunnelTiles:I

    .line 926
    iput-boolean v5, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    .line 927
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-nez v6, :cond_23

    :cond_1f
    move/from16 v17, v5

    goto/16 :goto_33c

    .line 928
    :cond_23
    invoke-super/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isValid(IIII)Z

    move-result v6

    if-nez v6, :cond_2a

    return v5

    .line 930
    :cond_2a
    invoke-static/range {p1 .. p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v6

    .line 931
    invoke-static/range {p3 .. p4}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v7

    .line 932
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->getRoadWidth()I

    move-result v8

    .line 933
    iget v9, v0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    iget v10, v0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-lez v9, :cond_43

    add-int/lit8 v9, v9, 0x2

    .line 936
    :cond_43
    iget v10, v0, Linfo/flowersoft/theotown/tools/RoadTool;->calculatedPos:I

    if-eq v10, v6, :cond_4e

    .line 937
    iput v6, v0, Linfo/flowersoft/theotown/tools/RoadTool;->calculatedPos:I

    .line 938
    iget-object v6, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tileToPrice:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    .line 941
    :cond_4e
    iget-object v6, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tileToPrice:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v10, -0x2

    invoke-virtual {v6, v7, v10}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v6

    int-to-long v10, v6

    const-wide/16 v12, -0x2

    cmp-long v6, v10, v12

    const-wide/16 v12, 0x0

    if-eqz v6, :cond_70

    cmp-long v1, v10, v12

    if-gez v1, :cond_63

    return v5

    .line 944
    :cond_63
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    return v1

    .line 947
    :cond_70
    iget-object v6, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRoadBuilder()Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object v6

    .line 948
    iget-object v10, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 950
    iput v5, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    .line 952
    iget-object v10, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v14, v10, Linfo/flowersoft/theotown/draft/RoadDraft;->buildZone:Z

    if-eqz v14, :cond_a0

    .line 953
    iget-object v12, v0, Linfo/flowersoft/theotown/tools/RoadTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    iget-object v10, v10, Linfo/flowersoft/theotown/draft/RoadDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v12, v10}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setZone(Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    .line 954
    iget-object v10, v0, Linfo/flowersoft/theotown/tools/RoadTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v10, v1, v2, v3, v4}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setArea(IIII)V

    .line 955
    iget-object v10, v0, Linfo/flowersoft/theotown/tools/RoadTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->isBuildable()Z

    move-result v10

    if-eqz v10, :cond_9f

    .line 956
    iget-object v10, v0, Linfo/flowersoft/theotown/tools/RoadTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->getPrice()J

    move-result-wide v12

    goto :goto_a0

    :cond_9f
    return v5

    :cond_a0
    :goto_a0
    const/4 v14, 0x1

    if-ne v8, v14, :cond_1a5

    if-eq v1, v3, :cond_15c

    if-eq v2, v4, :cond_15c

    .line 963
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->allowsDiagonal()Z

    move-result v8

    if-eqz v8, :cond_15c

    .line 964
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalRoad:Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v8, :cond_b6

    invoke-virtual {v6, v8, v11}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    :cond_b6
    sub-int v8, v3, v1

    sub-int v11, v4, v2

    .line 967
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v15

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v15, v10, :cond_c6

    move v10, v14

    goto :goto_c7

    :cond_c6
    move v10, v5

    .line 968
    :goto_c7
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v15

    div-int/2addr v8, v15

    .line 969
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v15

    div-int/2addr v11, v15

    move v15, v1

    move v14, v2

    move/from16 v17, v5

    :goto_d5
    if-ne v15, v3, :cond_d9

    if-eq v14, v4, :cond_2e7

    :cond_d9
    if-eqz v10, :cond_e5

    add-int v18, v15, v8

    move/from16 v19, v8

    move/from16 v8, v18

    move/from16 v18, v10

    move v10, v14

    goto :goto_f0

    :cond_e5
    add-int v18, v14, v11

    move/from16 v19, v18

    move/from16 v18, v10

    move/from16 v10, v19

    move/from16 v19, v8

    move v8, v15

    .line 978
    :goto_f0
    invoke-virtual {v6, v15, v14, v8, v10}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 979
    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/tools/RoadTool;->setBuilderMode(I)V

    if-ne v15, v1, :cond_fe

    if-ne v14, v2, :cond_fe

    .line 980
    invoke-virtual {v6, v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getAbsoluteLevel(I)I

    move-result v17

    :cond_fe
    move/from16 v14, v17

    .line 981
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v15

    if-eqz v15, :cond_154

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v15

    if-lt v15, v9, :cond_154

    .line 982
    invoke-virtual {v6, v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getAbsoluteLevel(I)I

    move-result v15

    move/from16 v20, v8

    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getAbsoluteLevel(I)I

    move-result v8

    if-ne v15, v8, :cond_154

    const/4 v5, 0x0

    .line 983
    invoke-virtual {v6, v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getAbsoluteLevel(I)I

    move-result v8

    if-eq v8, v14, :cond_121

    goto :goto_154

    .line 988
    :cond_121
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getPrice()J

    move-result-wide v21

    add-long v12, v12, v21

    .line 990
    iget v5, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDiamondPrice()I

    move-result v8

    add-int/2addr v5, v8

    iput v5, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    const/4 v5, 0x0

    .line 991
    :goto_131
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v8

    if-ge v5, v8, :cond_148

    .line 992
    invoke-virtual {v6, v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v8

    if-gez v8, :cond_145

    iget v8, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tunnelTiles:I

    const/16 v16, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tunnelTiles:I

    :cond_145
    add-int/lit8 v5, v5, 0x1

    goto :goto_131

    :cond_148
    xor-int/lit8 v5, v18, 0x1

    move/from16 v17, v14

    move/from16 v8, v19

    move/from16 v15, v20

    move v14, v10

    move v10, v5

    const/4 v5, 0x0

    goto :goto_d5

    .line 984
    :cond_154
    :goto_154
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tileToPrice:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v2, -0x1

    invoke-virtual {v1, v7, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    const/4 v5, 0x0

    return v5

    .line 1000
    :cond_15c
    invoke-virtual {v6, v1, v2, v3, v4}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 1001
    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/tools/RoadTool;->setBuilderMode(I)V

    .line 1002
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v1

    if-eqz v1, :cond_19c

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v1

    if-ge v1, v9, :cond_16f

    goto :goto_19c

    .line 1007
    :cond_16f
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getPrice()J

    move-result-wide v1

    add-long/2addr v12, v1

    .line 1009
    iget v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDiamondPrice()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    if-gez v1, :cond_184

    const v1, 0x7fffffff

    .line 1010
    iput v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    :cond_184
    const/4 v1, 0x0

    .line 1012
    :goto_185
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_2e7

    .line 1013
    invoke-virtual {v6, v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v2

    if-gez v2, :cond_199

    iget v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tunnelTiles:I

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tunnelTiles:I

    :cond_199
    add-int/lit8 v1, v1, 0x1

    goto :goto_185

    .line 1003
    :cond_19c
    :goto_19c
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tileToPrice:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v2, -0x1

    invoke-virtual {v1, v7, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    :goto_1a2
    const/16 v17, 0x0

    return v17

    .line 1017
    :cond_1a5
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/RoadTool;->calculateLanes(IIII)V

    .line 1018
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e7

    const/4 v1, 0x0

    .line 1019
    :goto_1b1
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_2e7

    .line 1020
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    mul-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    .line 1021
    iget-object v4, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    .line 1022
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v8, v3, 0x2

    invoke-virtual {v5, v8}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    .line 1023
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v8, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    .line 1024
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    if-ne v1, v8, :cond_29f

    iget-object v8, v0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    rem-int/lit8 v8, v8, 0x2

    if-ne v8, v10, :cond_29f

    .line 1025
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/RoadTool;->decorations:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_29f

    if-ne v4, v3, :cond_204

    sub-int v8, v5, v2

    .line 1026
    :goto_1ff
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    goto :goto_207

    :cond_204
    sub-int v8, v3, v4

    goto :goto_1ff

    :goto_207
    add-int/2addr v8, v10

    sub-int/2addr v5, v2

    sub-int/2addr v3, v4

    .line 1027
    invoke-static {v5, v3}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v3

    .line 1028
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/RoadTool;->decorations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v10, v5, [I

    const/4 v11, 0x0

    :goto_217
    if-ge v11, v8, :cond_283

    .line 1030
    invoke-virtual {v6, v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v14

    if-nez v14, :cond_278

    .line 1031
    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v14

    mul-int/2addr v14, v11

    add-int/2addr v14, v2

    .line 1032
    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v15

    mul-int/2addr v15, v11

    add-int/2addr v15, v4

    move/from16 p1, v3

    .line 1033
    iget-object v3, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v14, v15}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v3

    move-object/from16 p2, v3

    .line 1034
    iget-object v3, v0, Linfo/flowersoft/theotown/tools/RoadTool;->decorations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v18

    move/from16 p3, v8

    rem-int v8, v11, v18

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz p2, :cond_251

    .line 1036
    invoke-virtual/range {p2 .. p2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v8

    invoke-virtual {v8, v3}, Linfo/flowersoft/theotown/draft/Draft;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27c

    :cond_251
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/16 v23, 0x1

    const/16 v24, -0x1

    const/16 v22, 0x1

    move-object/from16 v19, v3

    move-object/from16 v18, v8

    move/from16 v20, v14

    move/from16 v21, v15

    .line 1037
    invoke-virtual/range {v18 .. v24}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;IIZZI)Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    move-result-object v3

    if-nez v3, :cond_27c

    .line 1038
    iget-object v3, v0, Linfo/flowersoft/theotown/tools/RoadTool;->decorations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, v11, v3

    aget v8, v10, v3

    const/16 v16, 0x1

    add-int/lit8 v8, v8, 0x1

    aput v8, v10, v3

    goto :goto_27c

    :cond_278
    move/from16 p1, v3

    move/from16 p3, v8

    :cond_27c
    :goto_27c
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, p1

    move/from16 v8, p3

    goto :goto_217

    :cond_283
    const/4 v2, 0x0

    :goto_284
    if-ge v2, v5, :cond_29c

    .line 1043
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v3

    iget-object v4, v0, Linfo/flowersoft/theotown/tools/RoadTool;->decorations:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/BuildingDraft;

    aget v8, v10, v2

    invoke-virtual {v3, v4, v8}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/BuildingDraft;I)J

    move-result-wide v3

    add-long/2addr v12, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_284

    :cond_29c
    const/16 v16, 0x1

    goto :goto_2db

    .line 1046
    :cond_29f
    invoke-virtual {v6, v2, v4, v5, v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 1047
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/RoadTool;->setBuilderMode(I)V

    .line 1048
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v2

    if-eqz v2, :cond_2df

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v2

    if-ge v2, v9, :cond_2b2

    goto :goto_2df

    .line 1052
    :cond_2b2
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getPrice()J

    move-result-wide v2

    add-long/2addr v12, v2

    .line 1053
    iget v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDiamondPrice()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    const/4 v2, 0x0

    .line 1055
    :goto_2c1
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_29c

    .line 1056
    invoke-virtual {v6, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v3

    if-gez v3, :cond_2d6

    iget v3, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tunnelTiles:I

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tunnelTiles:I

    goto :goto_2d8

    :cond_2d6
    const/16 v16, 0x1

    :goto_2d8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c1

    :goto_2db
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1b1

    .line 1049
    :cond_2df
    :goto_2df
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tileToPrice:Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v2, -0x1

    invoke-virtual {v1, v7, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    goto/16 :goto_1a2

    .line 1063
    :cond_2e7
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelDiamondPrice:I

    if-lez v1, :cond_316

    iget v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tunnelTiles:I

    if-lez v2, :cond_316

    iget v3, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    if-lez v3, :cond_316

    .line 1064
    div-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tunnelTiles:I

    .line 1065
    iget v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getFreeTunnels()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, v0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v3, v3, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelDiamondPrice:I

    mul-int/2addr v1, v3

    sub-int/2addr v2, v1

    iput v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    :cond_316
    const-wide/32 v1, 0x7fffffff

    cmp-long v3, v12, v1

    if-lez v3, :cond_31e

    move-wide v12, v1

    .line 1072
    :cond_31e
    iget v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    const/4 v5, 0x0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->diamondPrice:I

    .line 1073
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->tileToPrice:Lcom/badlogic/gdx/utils/IntIntMap;

    long-to-int v2, v12

    invoke-virtual {v1, v7, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .line 1074
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v1

    iput-wide v12, v0, Linfo/flowersoft/theotown/tools/RoadTool;->price:J

    invoke-virtual {v1, v12, v13}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->notBuildableBecauseOfPrice:Z

    return v1

    :goto_33c
    return v17
.end method

.method public final logModification(IIIIII)V
    .registers 7

    .line 0
    return-void
.end method

.method public onClick(IIFFII)V
    .registers 10

    .line 903
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RoadTool;->resetCalculation()V

    .line 905
    invoke-super/range {p0 .. p6}, Linfo/flowersoft/theotown/tools/TwoModesTool;->onClick(IIFFII)V

    move v0, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 907
    iget v1, p1, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    iget-object v1, p1, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->singlePlacement:Z

    if-eqz v1, :cond_21

    move p1, p2

    move p2, p3

    move p3, p4

    move p4, p5

    move p5, p6

    move p6, v0

    .line 908
    invoke-super/range {p0 .. p6}, Linfo/flowersoft/theotown/tools/TwoModesTool;->onClick(IIFFII)V

    :cond_21
    return-void
.end method

.method public redo(Z)V
    .registers 4

    .line 344
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->redoLevelHistory:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 345
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->undoLevelHistory:Lio/blueflower/stapel2d/util/IntList;

    iget v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 346
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->redoLevelHistory:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    .line 348
    :cond_1d
    iget v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    iput v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    .line 349
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->redo(Z)V

    return-void
.end method

.method public final resetCalculation()V
    .registers 2

    .line 919
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->tileToPrice:Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    const/4 v0, -0x1

    .line 920
    iput v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->calculatedPos:I

    return-void
.end method

.method public final setBuilderMode(I)V
    .registers 9

    .line 412
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RoadTool;->getRoadWidth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1c

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    if-lt p1, v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    iget-boolean v3, p0, Linfo/flowersoft/theotown/tools/RoadTool;->invertedLanes:Z

    xor-int/2addr v0, v3

    if-eqz v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 413
    :goto_1d
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->isLeftSideTraffic()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    if-le v3, v2, :cond_2f

    move v3, v2

    goto :goto_30

    :cond_2f
    move v3, v1

    :goto_30
    xor-int/2addr v0, v3

    .line 414
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    const/4 v4, 0x4

    div-int/2addr v3, v4

    const/4 v5, 0x2

    if-le v3, v2, :cond_52

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    div-int/2addr v3, v4

    rem-int/2addr v3, v5

    if-ne v3, v2, :cond_52

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/RoadTool;->lanes:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    div-int/2addr v3, v4

    sub-int/2addr v3, v2

    if-ne p1, v3, :cond_52

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->invertedLanes:Z

    .line 415
    :cond_52
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRoadBuilder()Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object p1

    .line 417
    iget v3, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    iget v6, p0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    invoke-virtual {p1, v3, v6, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevelStartTarget(IIZ)V

    .line 419
    iget v3, p0, Linfo/flowersoft/theotown/tools/RoadTool;->levelMode:I

    if-eq v3, v2, :cond_b1

    if-eq v3, v5, :cond_ad

    const/4 v6, 0x3

    if-eq v3, v6, :cond_98

    if-eq v3, v4, :cond_83

    const/4 v0, 0x5

    if-eq v3, v0, :cond_6e

    goto :goto_c8

    .line 447
    :cond_6e
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    add-int/2addr v0, v1

    .line 448
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setAbsoluteLevels(I)V

    return-void

    .line 439
    :cond_83
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v3

    if-lt v3, v5, :cond_c8

    if-eqz v0, :cond_94

    .line 441
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevel(II)V

    return-void

    .line 443
    :cond_94
    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevel(II)V

    return-void

    .line 431
    :cond_98
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v3

    if-lt v3, v5, :cond_c8

    if-eqz v0, :cond_a4

    .line 433
    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevel(II)V

    return-void

    .line 435
    :cond_a4
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v2, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevel(II)V

    return-void

    .line 428
    :cond_ad
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLevels(I)V

    return-void

    .line 423
    :cond_b1
    iget v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    iget v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    if-eq v0, v1, :cond_bb

    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-nez v0, :cond_c8

    :cond_bb
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->maxLevel:I

    if-ge v1, v0, :cond_c8

    add-int/2addr v1, v2

    .line 424
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->lineWidth:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setInnerLevels(II)V

    :cond_c8
    :goto_c8
    return-void
.end method

.method public final setTrafficLights(IILinfo/flowersoft/theotown/city/modifier/RoadBuilder;)V
    .registers 12

    .line 667
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDir()I

    move-result v0

    .line 668
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v1

    .line 669
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v0

    .line 670
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_33

    mul-int v4, v3, v1

    add-int/2addr v4, p1

    mul-int v5, v3, v0

    add-int/2addr v5, p2

    .line 676
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p3, v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getRelativeLevel(I)I

    move-result v7

    invoke-virtual {v6, v4, v5, v7}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 677
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Road;->shouldHaveTrafficLights()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 678
    sget-boolean v5, Linfo/flowersoft/theotown/resources/Settings;->autoTrafficLights:Z

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/city/objects/Road;->setTrafficLights(Z)V

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_33
    return-void
.end method

.method public unbind()V
    .registers 2

    .line 367
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->undoLevelHistory:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 368
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->redoLevelHistory:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 369
    invoke-super {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->unbind()V

    return-void
.end method

.method public undo(Z)V
    .registers 4

    .line 334
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->undoLevelHistory:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 335
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->redoLevelHistory:Lio/blueflower/stapel2d/util/IntList;

    iget v1, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 336
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->undoLevelHistory:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    .line 338
    :cond_1d
    iget v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    iput v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    .line 339
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->undo(Z)V

    return-void
.end method

.method public updateMove(FFFFIIFF)Z
    .registers 10

    .line 914
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->singlePlacement:Z

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 915
    :cond_8
    invoke-super/range {p0 .. p8}, Linfo/flowersoft/theotown/tools/TwoModesTool;->updateMove(FFFFIIFF)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.tools.RoadTool.AnonymousClass1 (info.flowersoft.theotown.tools.RoadTool$1)
.class public Linfo/flowersoft/theotown/tools/RoadTool$1;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "RoadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RoadTool;-><init>(Linfo/flowersoft/theotown/draft/RoadDraft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RoadTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RoadTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 110
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool$1;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 113
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROADAUTOJOIN:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 118
    const-string v0, "cmdAutoJoinRoad"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 133
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$1;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$000(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x83e

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPressed()Z
    .registers 2

    .line 128
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 123
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RoadTool.AnonymousClass2 (info.flowersoft.theotown.tools.RoadTool$2)
.class public Linfo/flowersoft/theotown/tools/RoadTool$2;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "RoadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RoadTool;-><init>(Linfo/flowersoft/theotown/draft/RoadDraft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RoadTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RoadTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 141
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool$2;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 144
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoTrafficLights:Z

    if-eqz v0, :cond_7

    .line 145
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRAFFIC_LIGHTS_ON:I

    return v0

    :cond_7
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRAFFIC_LIGHTS_OFF:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 150
    const-string v0, "cmdTrafficLightsOff"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 165
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$2;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$100(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;

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

    .line 160
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoTrafficLights:Z

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 155
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoTrafficLights:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoTrafficLights:Z

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RoadTool.AnonymousClass3 (info.flowersoft.theotown.tools.RoadTool$3)
.class public Linfo/flowersoft/theotown/tools/RoadTool$3;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "RoadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RoadTool;-><init>(Linfo/flowersoft/theotown/draft/RoadDraft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RoadTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RoadTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool$3;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 173
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_DECORATION:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 178
    const-string v0, "cmdRoadAutoDecorations"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$3;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$200(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x783

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPressed()Z
    .registers 2

    .line 188
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoRoadDecorations:Z

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 183
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoRoadDecorations:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->autoRoadDecorations:Z

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RoadTool.AnonymousClass4 (info.flowersoft.theotown.tools.RoadTool$4)
.class public Linfo/flowersoft/theotown/tools/RoadTool$4;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "RoadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RoadTool;-><init>(Linfo/flowersoft/theotown/draft/RoadDraft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RoadTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RoadTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool$4;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 204
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_SINGLELANE:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 209
    const-string v0, "cmdSingleLane"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 226
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$4;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$600(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x8b2

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPressed()Z
    .registers 2

    .line 221
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$4;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$300(Linfo/flowersoft/theotown/tools/RoadTool;)Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 214
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$4;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$300(Linfo/flowersoft/theotown/tools/RoadTool;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tools/RoadTool;->access$302(Linfo/flowersoft/theotown/tools/RoadTool;Z)Z

    .line 215
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$4;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$400(Linfo/flowersoft/theotown/tools/RoadTool;)I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->setLineWidth(I)V

    .line 216
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$4;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$500(Linfo/flowersoft/theotown/tools/RoadTool;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RoadTool.AnonymousClass5 (info.flowersoft.theotown.tools.RoadTool$5)
.class public Linfo/flowersoft/theotown/tools/RoadTool$5;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "RoadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RoadTool;-><init>(Linfo/flowersoft/theotown/draft/RoadDraft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RoadTool;

.field public final synthetic val$draft:Linfo/flowersoft/theotown/draft/RoadDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RoadTool;Linfo/flowersoft/theotown/draft/RoadDraft;)V
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

    .line 241
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool$5;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/RoadTool$5;->val$draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotkey()Linfo/flowersoft/theotown/input/KeyAction;
    .registers 2

    .line 279
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->TOOL_ROAD_DOWN:Linfo/flowersoft/theotown/input/KeyAction;

    return-object v0
.end method

.method public getIcon()I
    .registers 3

    .line 244
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$5;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iget v0, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 245
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_DOWN:I

    return v0

    .line 247
    :cond_a
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEVEL_DOWN:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 253
    const-string v0, "cmdRoadLevelDown"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 270
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$5;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iget v1, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 271
    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$800(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xbcc

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 273
    :cond_16
    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$900(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xb9a

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 4

    .line 264
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$5;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iget v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RoadTool$5;->val$draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/RoadDraft;->minLevel:I

    if-le v1, v2, :cond_1f

    iget v1, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 265
    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$700(Linfo/flowersoft/theotown/tools/RoadTool;)I

    move-result v0

    if-eq v0, v2, :cond_1f

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$5;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$700(Linfo/flowersoft/theotown/tools/RoadTool;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1f

    :cond_1e
    return v2

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 258
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$5;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iget v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    .line 259
    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$500(Linfo/flowersoft/theotown/tools/RoadTool;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RoadTool.AnonymousClass6 (info.flowersoft.theotown.tools.RoadTool$6)
.class public Linfo/flowersoft/theotown/tools/RoadTool$6;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "RoadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RoadTool;-><init>(Linfo/flowersoft/theotown/draft/RoadDraft;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RoadTool;

.field public final synthetic val$draft:Linfo/flowersoft/theotown/draft/RoadDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RoadTool;Linfo/flowersoft/theotown/draft/RoadDraft;)V
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

    .line 281
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool$6;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/RoadTool$6;->val$draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotkey()Linfo/flowersoft/theotown/input/KeyAction;
    .registers 2

    .line 319
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->TOOL_ROAD_UP:Linfo/flowersoft/theotown/input/KeyAction;

    return-object v0
.end method

.method public getIcon()I
    .registers 3

    .line 284
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$6;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iget v0, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 285
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_UP:I

    return v0

    .line 287
    :cond_a
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEVEL_UP:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 293
    const-string v0, "cmdRoadLevelUp"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 310
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$6;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iget v1, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 311
    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$1000(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x255

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 313
    :cond_16
    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$1100(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x85a

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 4

    .line 304
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$6;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iget v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RoadTool$6;->val$draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/RoadDraft;->maxLevel:I

    if-ge v1, v2, :cond_1f

    iget v1, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 305
    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$700(Linfo/flowersoft/theotown/tools/RoadTool;)I

    move-result v0

    if-eq v0, v2, :cond_1f

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$6;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$700(Linfo/flowersoft/theotown/tools/RoadTool;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1f

    :cond_1e
    return v2

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 298
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$6;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iget v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    .line 299
    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$500(Linfo/flowersoft/theotown/tools/RoadTool;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RoadTool.AnonymousClass7 (info.flowersoft.theotown.tools.RoadTool$7)
.class public Linfo/flowersoft/theotown/tools/RoadTool$7;
.super Linfo/flowersoft/theotown/tools/marker/TrafficMarker;
.source "RoadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RoadTool;->bind(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RoadTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RoadTool;Linfo/flowersoft/theotown/city/City;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 357
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool$7;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public overlayAlpha(II)F
    .registers 5

    .line 360
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$7;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$1200(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RoadTool$7;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iget v1, v1, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_13

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.tools.RoadTool.AnonymousClass8 (info.flowersoft.theotown.tools.RoadTool$8)
.class public Linfo/flowersoft/theotown/tools/RoadTool$8;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "RoadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RoadTool;->addModeAction(ILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RoadTool;

.field public final synthetic val$icon:I

.field public final synthetic val$id:Ljava/lang/String;

.field public final synthetic val$level:I

.field public final synthetic val$name:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RoadTool;ILjava/lang/String;II)V
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

    .line 377
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iput p2, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->val$icon:I

    iput-object p3, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->val$id:Ljava/lang/String;

    iput p4, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->val$level:I

    iput p5, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->val$name:I

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 380
    iget v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->val$icon:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 384
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->val$id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 406
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$1400(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->val$name:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPressed()Z
    .registers 3

    .line 397
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$700(Linfo/flowersoft/theotown/tools/RoadTool;)I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->val$level:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .registers 4

    .line 401
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$1300(Linfo/flowersoft/theotown/tools/RoadTool;)Linfo/flowersoft/theotown/draft/RoadDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/RoadDraft;->hasBridge()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iget v1, v0, Linfo/flowersoft/theotown/tools/RoadTool;->startLevel:I

    iget v2, v0, Linfo/flowersoft/theotown/tools/RoadTool;->currentLevel:I

    if-eq v1, v2, :cond_18

    iget v0, v0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 388
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$700(Linfo/flowersoft/theotown/tools/RoadTool;)I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->val$level:I

    if-ne v0, v1, :cond_11

    .line 389
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tools/RoadTool;->access$702(Linfo/flowersoft/theotown/tools/RoadTool;I)I

    goto :goto_16

    .line 391
    :cond_11
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tools/RoadTool;->access$702(Linfo/flowersoft/theotown/tools/RoadTool;I)I

    .line 393
    :goto_16
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$8;->this$0:Linfo/flowersoft/theotown/tools/RoadTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RoadTool;->access$500(Linfo/flowersoft/theotown/tools/RoadTool;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RoadTool.ConnectionCandidate (info.flowersoft.theotown.tools.RoadTool$ConnectionCandidate)
.class public Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;
.super Ljava/lang/Object;
.source "RoadTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/tools/RoadTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionCandidate"
.end annotation


# instance fields
.field public dir:I

.field public road:Linfo/flowersoft/theotown/city/objects/Road;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/RoadTool$1;)V
    .registers 2

    .line 1159
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/RoadTool$ConnectionCandidate;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RoadTool$$ExternalSyntheticLambda0 (info.flowersoft.theotown.tools.RoadTool$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tools/RoadTool;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/RoadTool;IIIII)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iput p2, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;->f$4:I

    iput p6, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iget v1, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;->f$4:I

    iget v5, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda0;->f$5:I

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/RoadTool;->$r8$lambda$kshPAxL6PcGYT3jGLBLUQcbWsN0(Linfo/flowersoft/theotown/tools/RoadTool;IIIII)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RoadTool$$ExternalSyntheticLambda1 (info.flowersoft.theotown.tools.RoadTool$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tools/RoadTool;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/RoadTool;IIII)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iput p2, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda1;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iget v1, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda1;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tools/RoadTool;->$r8$lambda$7A0kmV5v5roUJsICE21f-71We7o(Linfo/flowersoft/theotown/tools/RoadTool;IIII)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RoadTool$$ExternalSyntheticLambda2 (info.flowersoft.theotown.tools.RoadTool$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/tools/RoadTool;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/tools/RoadTool;IIII)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iput p2, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda2;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/tools/RoadTool;

    iget v1, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda2;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda2;->f$3:I

    iget v4, p0, Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda2;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tools/RoadTool;->$r8$lambda$ZrVofE8jYRoLF42enG5A8X04AXE(Linfo/flowersoft/theotown/tools/RoadTool;IIII)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RoadTool$$ExternalSyntheticLambda3 (info.flowersoft.theotown.tools.RoadTool$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/tools/RoadTool$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/tools/RoadTool;->$r8$lambda$UhJtsxSt_bmmxFIb1RXI-B3CNDc()V

    return-void
.end method
