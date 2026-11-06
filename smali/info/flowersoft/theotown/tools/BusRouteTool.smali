###### Class info.flowersoft.theotown.tools.BusRouteTool (info.flowersoft.theotown.tools.BusRouteTool)
.class public Linfo/flowersoft/theotown/tools/BusRouteTool;
.super Linfo/flowersoft/theotown/tools/BuildTool;
.source "BusRouteTool.java"


# instance fields
.field public final ROUTE_FRAMES:[I

.field public final game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

.field public pendingBusStop:Linfo/flowersoft/theotown/city/objects/BusStop;

.field public roadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

.field public final stage:I

.field public final tmpActiveStages:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/minigame/BusIdleGame;ILjava/lang/Runnable;)V
    .registers 6

    .line 56
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/BuildTool;-><init>()V

    .line 43
    const-string v0, "$anim_busroutetool_routealignment00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 44
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 43
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->ROUTE_FRAMES:[I

    .line 49
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->tmpActiveStages:Lio/blueflower/stapel2d/util/IntList;

    .line 57
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    .line 58
    iput p2, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->stage:I

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/BusRouteTool$1;

    invoke-direct {v1, p0, p1, p2}, Linfo/flowersoft/theotown/tools/BusRouteTool$1;-><init>(Linfo/flowersoft/theotown/tools/BusRouteTool;Linfo/flowersoft/theotown/minigame/BusIdleGame;I)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 91
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/BusRouteTool$2;

    invoke-direct {v1, p0, p1, p2}, Linfo/flowersoft/theotown/tools/BusRouteTool$2;-><init>(Linfo/flowersoft/theotown/tools/BusRouteTool;Linfo/flowersoft/theotown/minigame/BusIdleGame;I)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/BusRouteTool$3;

    invoke-direct {v1, p0, p3, p1, p2}, Linfo/flowersoft/theotown/tools/BusRouteTool$3;-><init>(Linfo/flowersoft/theotown/tools/BusRouteTool;Ljava/lang/Runnable;Linfo/flowersoft/theotown/minigame/BusIdleGame;I)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;
    .registers 1

    .line 41
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->roadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/BusRouteTool;I)Linfo/flowersoft/theotown/city/MapArea;
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getArea(I)Linfo/flowersoft/theotown/city/MapArea;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/tools/BusRouteTool;Linfo/flowersoft/theotown/city/objects/BusStop;)I
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getBusStopAbsLevel(Linfo/flowersoft/theotown/city/objects/BusStop;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/minigame/BusIdleGame;
    .registers 1

    .line 41
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 41
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 41
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 41
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 41
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 41
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 41
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/tools/BusRouteTool;)I
    .registers 1

    .line 41
    iget p0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->stage:I

    return p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/objects/BusStop;
    .registers 1

    .line 41
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->pendingBusStop:Linfo/flowersoft/theotown/city/objects/BusStop;

    return-object p0
.end method

.method public static synthetic access$902(Linfo/flowersoft/theotown/tools/BusRouteTool;Linfo/flowersoft/theotown/city/objects/BusStop;)Linfo/flowersoft/theotown/city/objects/BusStop;
    .registers 2

    .line 41
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->pendingBusStop:Linfo/flowersoft/theotown/city/objects/BusStop;

    return-object p1
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 158
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 160
    new-instance v0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v2, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->stage:I

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getStageCar(I)Linfo/flowersoft/theotown/draft/CarDraft;

    move-result-object v1

    iget-wide v1, v1, Linfo/flowersoft/theotown/draft/CarDraft;->flags:J

    invoke-direct {v0, p1, v1, v2}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;-><init>(Linfo/flowersoft/theotown/city/City;J)V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->roadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    const/4 p1, -0x1

    .line 163
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getArea(I)Linfo/flowersoft/theotown/city/MapArea;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->addStation(Linfo/flowersoft/theotown/city/MapArea;)V

    const/4 p1, 0x0

    .line 166
    :goto_1d
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->stage:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathLength(I)I

    move-result v0

    if-ge p1, v0, :cond_33

    .line 167
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->roadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getArea(I)Linfo/flowersoft/theotown/city/MapArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->addStation(Linfo/flowersoft/theotown/city/MapArea;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    .line 170
    :cond_33
    new-instance p1, Linfo/flowersoft/theotown/tools/BusRouteTool$4;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/tools/BusRouteTool$4;-><init>(Linfo/flowersoft/theotown/tools/BusRouteTool;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method

.method public drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 343
    invoke-super/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/BuildTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    .line 344
    iget-object v10, v3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v4, 0xff

    .line 345
    invoke-virtual {v10, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 347
    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getBusStop(II)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v5

    .line 348
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    move/from16 v7, p4

    invoke-virtual {v6, v1, v2, v7}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v6

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v5, :cond_153

    if-eqz v6, :cond_153

    .line 350
    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/tools/BusRouteTool;->isValidBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)Z

    move-result v7

    if-eqz v7, :cond_153

    .line 351
    iget-object v7, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->tmpActiveStages:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    const/4 v15, 0x0

    move v7, v15

    .line 352
    :goto_31
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/minigame/IdleGame;->countStages()I

    move-result v8

    if-ge v7, v8, :cond_4b

    .line 353
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v9, v6, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    invoke-virtual {v8, v7, v1, v2, v9}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->pathContains(IIII)I

    move-result v8

    if-ltz v8, :cond_48

    .line 354
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->tmpActiveStages:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v8, v7}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    .line 358
    :cond_4b
    iget v6, v6, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    neg-int v7, v6

    mul-int/lit8 v7, v7, 0xc

    .line 359
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v9, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->stage:I

    invoke-virtual {v8, v9, v1, v2, v6}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->pathContains(IIII)I

    move-result v6

    if-ltz v6, :cond_63

    .line 362
    iget v8, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->stage:I

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getFriendlyStageColor(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v8

    invoke-virtual {v10, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 364
    :cond_63
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v8

    const v11, 0x9269

    mul-int/2addr v1, v11

    int-to-long v11, v1

    add-long/2addr v8, v11

    const v1, 0x54d05

    mul-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v8, v1

    const-wide/16 v1, 0xfa0

    rem-long/2addr v8, v1

    long-to-float v1, v8

    const/high16 v2, 0x457a0000    # 4000.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const-wide v8, 0x3fc99999a0000000L    # 0.20000000298023224

    mul-double/2addr v1, v8

    const-wide v8, 0x3fe99999a0000000L    # 0.800000011920929

    add-double/2addr v1, v8

    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v8

    double-to-int v1, v1

    invoke-virtual {v10, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 365
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, v7

    iget-object v8, v0, Linfo/flowersoft/theotown/tools/BuildTool;->TILE_HIGHLIGHT:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v8, v8, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v8, v8, v15

    invoke-virtual {v3, v1, v14, v2, v8}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 366
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 367
    invoke-virtual {v10, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    if-ltz v6, :cond_115

    .line 370
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v4, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->stage:I

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathLength(I)I

    move-result v1

    sub-int/2addr v1, v13

    if-ge v6, v1, :cond_c7

    .line 371
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_BLUE:I

    invoke-virtual {v3, v1, v14, v2, v4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_ce

    .line 373
    :cond_c7
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_WHITE:I

    invoke-virtual {v3, v1, v14, v2, v4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 376
    :goto_ce
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v8, v1, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    .line 377
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v13

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v1, v3, Linfo/flowersoft/theotown/city/Drawer;->x:F

    const/high16 v6, 0x41800000    # 16.0f

    iget v9, v3, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr v9, v6

    add-float v6, v1, v9

    iget v1, v3, Linfo/flowersoft/theotown/city/Drawer;->y:F

    iget-object v9, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->tmpActiveStages:Lio/blueflower/stapel2d/util/IntList;

    .line 378
    invoke-virtual {v9}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v11, v3, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v9, v11

    sub-float/2addr v1, v9

    invoke-virtual {v10}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v9

    mul-float/2addr v2, v9

    add-float/2addr v1, v2

    sget-object v9, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f800000    # 1.0f

    move/from16 v16, v7

    move v7, v1

    move/from16 v1, v16

    .line 377
    invoke-virtual/range {v4 .. v12}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    goto :goto_129

    :cond_115
    move v1, v7

    .line 380
    iget-object v4, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->pendingBusStop:Linfo/flowersoft/theotown/city/objects/BusStop;

    if-ne v4, v5, :cond_122

    .line 381
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    invoke-virtual {v3, v4, v14, v2, v5}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_129

    .line 383
    :cond_122
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    invoke-virtual {v3, v4, v14, v2, v5}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 386
    :goto_129
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->tmpActiveStages:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v15, v2, :cond_14c

    .line 387
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->tmpActiveStages:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v15}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getFriendlyStageColor(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v10, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 388
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    mul-int/lit8 v4, v15, -0x2

    add-int/2addr v4, v1

    int-to-float v4, v4

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_BLOB:I

    invoke-virtual {v3, v2, v14, v4, v5}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_129

    .line 390
    :cond_14c
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto/16 :goto_1cf

    :cond_153
    if-eqz v6, :cond_1cf

    .line 393
    iget-object v5, v6, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 394
    iget-boolean v5, v5, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWay:Z

    if-eqz v5, :cond_186

    iget v5, v6, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v5, :cond_186

    .line 395
    iget-object v5, v3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v7, 0x64

    invoke-virtual {v5, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 396
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v7, v6, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    neg-int v7, v7

    mul-int/lit8 v7, v7, 0xc

    int-to-float v7, v7

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_ARROWS:I

    .line 397
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Road;->getFrame()I

    move-result v9

    div-int/lit8 v9, v9, 0x10

    add-int/lit8 v9, v9, 0x4

    iget v11, v3, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    sub-int/2addr v9, v11

    rem-int/lit8 v9, v9, 0x4

    add-int/2addr v8, v9

    .line 396
    invoke-virtual {v3, v5, v14, v7, v8}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 398
    iget-object v5, v3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 401
    :cond_186
    iget-object v4, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->roadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    iget v5, v6, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    const/4 v7, -0x1

    invoke-virtual {v4, v1, v2, v5, v7}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->getAlignmentOrDefault(IIII)I

    move-result v1

    if-ltz v1, :cond_1cf

    .line 404
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v1

    .line 406
    iget v2, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->stage:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getFriendlyStageColor(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v10, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 407
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/BusRouteTool;->ROUTE_FRAMES:[I

    array-length v4, v2

    rem-int/2addr v1, v4

    aget v1, v2, v1

    .line 408
    iget v2, v6, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v2, :cond_1ba

    .line 409
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v4, v6, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    mul-int/lit8 v4, v4, 0xc

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v14, v4, v1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_1ca

    .line 411
    :cond_1ba
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v4

    or-int/2addr v2, v4

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v2

    .line 412
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v5, v6, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    invoke-static {v3, v4, v5, v2, v1}, Linfo/flowersoft/theotown/city/objects/Ground;->drawFrameOnCustomSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;III)V

    .line 414
    :goto_1ca
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_1cf
    :goto_1cf
    return v13
.end method

.method public final getArea(I)Linfo/flowersoft/theotown/city/MapArea;
    .registers 7

    .line 327
    new-instance v0, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    if-ltz p1, :cond_2e

    .line 328
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v2, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->stage:I

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathLength(I)I

    move-result v1

    if-lt p1, v1, :cond_12

    goto :goto_2e

    .line 332
    :cond_12
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v2, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->stage:I

    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathX(II)I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v3, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->stage:I

    invoke-virtual {v2, v3, p1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathY(II)I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v4, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->stage:I

    invoke-virtual {v3, v4, p1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathLevel(II)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    return-object v0

    .line 329
    :cond_2e
    :goto_2e
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    const/4 v1, 0x0

    .line 330
    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;Z)V

    return-object v0
.end method

.method public final getArea(Linfo/flowersoft/theotown/city/objects/BusStop;)Linfo/flowersoft/theotown/city/MapArea;
    .registers 5

    .line 321
    new-instance v0, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 322
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v2

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getBusStopAbsLevel(Linfo/flowersoft/theotown/city/objects/BusStop;)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    return-object v0
.end method

.method public final getBusStop(II)Linfo/flowersoft/theotown/city/objects/BusStop;
    .registers 8

    .line 247
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 250
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 251
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBottomRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    goto :goto_19

    :cond_18
    move-object v2, v1

    :goto_19
    if-eqz v0, :cond_3a

    if-nez v2, :cond_1e

    goto :goto_3a

    .line 255
    :cond_1e
    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    :goto_20
    iget v3, v2, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lt v0, v3, :cond_3a

    if-nez v1, :cond_3a

    .line 256
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 258
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v1

    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_3a
    :goto_3a
    return-object v1
.end method

.method public final getBusStopAbsLevel(Linfo/flowersoft/theotown/city/objects/BusStop;)I
    .registers 5

    .line 312
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/BusStop;->level:I

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final getFriendlyStageColor(I)Lio/blueflower/stapel2d/drawing/Color;
    .registers 3

    .line 338
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getStageColor(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Color;->enlighted(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 427
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUS_TRANSPORT:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 153
    const-string v0, "BusRoute"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 422
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x59e

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNearBusStop(II)Linfo/flowersoft/theotown/city/objects/BusStop;
    .registers 7

    .line 268
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getBusStop(II)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_6
    const/16 v3, 0x8

    if-gt v2, v3, :cond_1d

    if-nez v0, :cond_1d

    .line 270
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0, v0, v3}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getBusStop(II)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v0

    mul-int/lit8 v2, v2, 0x2

    goto :goto_6

    :cond_1d
    :goto_1d
    if-gt v1, v3, :cond_3a

    if-nez v0, :cond_3a

    if-ge v1, v3, :cond_27

    mul-int/lit8 v0, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_29

    :cond_27
    add-int/lit8 v0, v1, 0x1

    .line 274
    :goto_29
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v2

    add-int/2addr v2, p1

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, v2, v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getBusStop(II)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v0

    mul-int/lit8 v1, v1, 0x2

    goto :goto_1d

    :cond_3a
    return-object v0
.end method

.method public final isValidBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)Z
    .registers 3

    .line 280
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BusStopDraft;->influenceInduceVector:[I

    sget-object v0, Linfo/flowersoft/theotown/city/components/InfluenceType;->PASSENGER_BUS:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-lez p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(IIFFII)V
    .registers 7

    .line 285
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getNearBusStop(II)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 287
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/BusRouteTool;->isValidBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)Z

    move-result p2

    if-eqz p2, :cond_3a

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget p3, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->stage:I

    .line 288
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result p4

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result p5

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getBusStopAbsLevel(Linfo/flowersoft/theotown/city/objects/BusStop;)I

    move-result p6

    invoke-virtual {p2, p3, p4, p5, p6}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->pathContains(IIII)I

    move-result p2

    if-gez p2, :cond_3a

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->roadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    .line 289
    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->isBusy()Z

    move-result p2

    if-nez p2, :cond_3a

    .line 291
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->pendingBusStop:Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 292
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->roadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    .line 293
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/BusRouteTool;->getArea(Linfo/flowersoft/theotown/city/objects/BusStop;)Linfo/flowersoft/theotown/city/MapArea;

    move-result-object p1

    new-instance p3, Linfo/flowersoft/theotown/tools/BusRouteTool$5;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/tools/BusRouteTool$5;-><init>(Linfo/flowersoft/theotown/tools/BusRouteTool;)V

    .line 292
    invoke-virtual {p2, p1, p3}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->tryAddStation(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;)V

    :cond_3a
    return-void
.end method

.method public update()V
    .registers 2

    .line 317
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool;->roadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->update()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.BusRouteTool.AnonymousClass1 (info.flowersoft.theotown.tools.BusRouteTool$1)
.class public Linfo/flowersoft/theotown/tools/BusRouteTool$1;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "BusRouteTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BusRouteTool;-><init>(Linfo/flowersoft/theotown/minigame/BusIdleGame;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

.field public final synthetic val$game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

.field public final synthetic val$stage:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BusRouteTool;Linfo/flowersoft/theotown/minigame/BusIdleGame;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$1;->val$game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iput p3, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$1;->val$stage:I

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 63
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 68
    const-string v0, "cmdRemoveRoute"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$200(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x34a

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 3

    .line 82
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$1;->val$game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$1;->val$stage:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathLength(I)I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 4

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$000(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 75
    :cond_d
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$1;->val$game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$1;->val$stage:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->clearPath(I)V

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$000(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->clear()V

    .line 77
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$000(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$100(Linfo/flowersoft/theotown/tools/BusRouteTool;I)Linfo/flowersoft/theotown/city/MapArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->addStation(Linfo/flowersoft/theotown/city/MapArea;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.BusRouteTool.AnonymousClass2 (info.flowersoft.theotown.tools.BusRouteTool$2)
.class public Linfo/flowersoft/theotown/tools/BusRouteTool$2;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "BusRouteTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BusRouteTool;-><init>(Linfo/flowersoft/theotown/minigame/BusIdleGame;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

.field public final synthetic val$game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

.field public final synthetic val$stage:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BusRouteTool;Linfo/flowersoft/theotown/minigame/BusIdleGame;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$2;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$2;->val$game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iput p3, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$2;->val$stage:I

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 94
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BACKWARD:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 99
    const-string v0, "cmdRouteRemoveLast"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$2;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$300(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x646

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 3

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$2;->val$game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$2;->val$stage:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathLength(I)I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 4

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$2;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$000(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->isBusy()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$2;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$000(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->stationCount()I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_33

    .line 106
    :cond_19
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$2;->val$game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$2;->val$stage:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathLength(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 107
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$2;->val$game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v2, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$2;->val$stage:I

    invoke-virtual {v1, v2, v0}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->removeFromPath(II)V

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$2;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$000(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->removeLastStation()V

    :cond_33
    :goto_33
    return-void
.end method

###### Class info.flowersoft.theotown.tools.BusRouteTool.AnonymousClass3 (info.flowersoft.theotown.tools.BusRouteTool$3)
.class public Linfo/flowersoft/theotown/tools/BusRouteTool$3;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "BusRouteTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BusRouteTool;-><init>(Linfo/flowersoft/theotown/minigame/BusIdleGame;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

.field public final synthetic val$game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

.field public final synthetic val$onFinish:Ljava/lang/Runnable;

.field public final synthetic val$stage:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BusRouteTool;Ljava/lang/Runnable;Linfo/flowersoft/theotown/minigame/BusIdleGame;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 122
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$3;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$3;->val$onFinish:Ljava/lang/Runnable;

    iput-object p3, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$3;->val$game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iput p4, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$3;->val$stage:I

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 125
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 130
    const-string v0, "cmdRouteOk"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$3;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$600(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x17b

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 3

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$3;->val$game:Linfo/flowersoft/theotown/minigame/BusIdleGame;

    iget v1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$3;->val$stage:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathLength(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$3;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$500(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$3;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v1}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$400(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$3;->val$onFinish:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.BusRouteTool.AnonymousClass4 (info.flowersoft.theotown.tools.BusRouteTool$4)
.class public Linfo/flowersoft/theotown/tools/BusRouteTool$4;
.super Ljava/lang/Object;
.source "BusRouteTool.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BusRouteTool;->bind(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BusRouteTool;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$4;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public countVariants()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getBuildingIntensity(II)F
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    .line 173
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getIntensity(II)F
    .registers 3

    .line 0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getLegend()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/marker/LegendEntry;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 223
    const-string v0, "route bus marker"

    return-object v0
.end method

.method public getTempIntensity(II)F
    .registers 3

    .line 0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public ignoreBuilding(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public markBuilding(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public markTree(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public overlayAlpha(II)F
    .registers 3

    .line 0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public overlayTempAlpha(II)F
    .registers 3

    .line 0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public setVariant(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public useOverlay(II)Z
    .registers 5

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$4;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$700(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-nez p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    return v1
.end method

###### Class info.flowersoft.theotown.tools.BusRouteTool.AnonymousClass5 (info.flowersoft.theotown.tools.BusRouteTool$5)
.class public Linfo/flowersoft/theotown/tools/BusRouteTool$5;
.super Ljava/lang/Object;
.source "BusRouteTool.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BusRouteTool;->onClick(IIFFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BusRouteTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 294
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$5;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Linfo/flowersoft/theotown/city/MapArea;)V
    .registers 3

    .line 304
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$5;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$902(Linfo/flowersoft/theotown/tools/BusRouteTool;Linfo/flowersoft/theotown/city/objects/BusStop;)Linfo/flowersoft/theotown/city/objects/BusStop;

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/objects/Way;Lcom/badlogic/gdx/utils/IntIntMap;)V
    .registers 7

    .line 297
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$5;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$000(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->addCalculatedStation(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/objects/Way;Lcom/badlogic/gdx/utils/IntIntMap;)V

    .line 298
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$5;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {p1}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$1100(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/minigame/BusIdleGame;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$5;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {p2}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$800(Linfo/flowersoft/theotown/tools/BusRouteTool;)I

    move-result p2

    iget-object p3, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$5;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {p3}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$900(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object p3

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result p3

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$5;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$900(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$5;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    invoke-static {v1}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$900(Linfo/flowersoft/theotown/tools/BusRouteTool;)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$1000(Linfo/flowersoft/theotown/tools/BusRouteTool;Linfo/flowersoft/theotown/city/objects/BusStop;)I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->addToPath(IIII)V

    .line 299
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BusRouteTool$5;->this$0:Linfo/flowersoft/theotown/tools/BusRouteTool;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/tools/BusRouteTool;->access$902(Linfo/flowersoft/theotown/tools/BusRouteTool;Linfo/flowersoft/theotown/city/objects/BusStop;)Linfo/flowersoft/theotown/city/objects/BusStop;

    return-void
.end method
