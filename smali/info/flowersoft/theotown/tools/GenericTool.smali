###### Class info.flowersoft.theotown.tools.GenericTool (info.flowersoft.theotown.tools.GenericTool)
.class public Linfo/flowersoft/theotown/tools/GenericTool;
.super Linfo/flowersoft/theotown/tools/BuildTool;
.source "GenericTool.java"


# instance fields
.field public final UNKNOWN_ICON:I

.field public buildingFilter:Z

.field public busStopFilter:Z

.field public final eventMethod:Linfo/flowersoft/theotown/scripting/MethodCluster;

.field public landFilter:Z

.field public mouseFilter:Z

.field public railwayFilter:Z

.field public redoCallback:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public roadDecorationFilter:Z

.field public roadFilter:Z

.field public final tool:Linfo/flowersoft/theotown/draft/ToolDraft;

.field public treeFilter:Z

.field public useFilter:Z

.field public waterFilter:Z

.field public zoneFilter:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/ToolDraft;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/BuildTool;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->useFilter:Z

    .line 48
    const-string v1, "$logo_unknown00"

    const-class v2, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v0, v1, v0

    iput v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->UNKNOWN_ICON:I

    .line 56
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->tool:Linfo/flowersoft/theotown/draft/ToolDraft;

    .line 57
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->eventMethod:Linfo/flowersoft/theotown/scripting/MethodCluster;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/GenericTool;)Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    return-object p0
.end method

.method public static synthetic access$1002(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->mouseFilter:Z

    return p1
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->useFilter:Z

    return p1
.end method

.method public static synthetic access$1102(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->railwayFilter:Z

    return p1
.end method

.method public static synthetic access$1202(Linfo/flowersoft/theotown/tools/GenericTool;Linfo/flowersoft/theotown/scripting/ScriptMethod;)Linfo/flowersoft/theotown/scripting/ScriptMethod;
    .registers 2

    .line 34
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->redoCallback:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    return-object p1
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->buildingFilter:Z

    return p1
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->waterFilter:Z

    return p1
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->landFilter:Z

    return p1
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->roadFilter:Z

    return p1
.end method

.method public static synthetic access$602(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->treeFilter:Z

    return p1
.end method

.method public static synthetic access$702(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->zoneFilter:Z

    return p1
.end method

.method public static synthetic access$802(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->roadDecorationFilter:Z

    return p1
.end method

.method public static synthetic access$902(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->busStopFilter:Z

    return p1
.end method

.method private isBuildable(II)Z
    .registers 6

    .line 395
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "isBuildable"

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/GenericTool;->tool:Linfo/flowersoft/theotown/draft/ToolDraft;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 396
    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    .line 398
    :cond_16
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/GenericTool;->tool:Linfo/flowersoft/theotown/draft/ToolDraft;

    iget p2, p2, Linfo/flowersoft/theotown/draft/ToolDraft;->price:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 9

    .line 67
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 69
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->clear()V

    .line 71
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getGlobals()Lvm2/Globals;

    move-result-object p1

    .line 73
    const-string v0, "TheoTown"

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    .line 74
    new-instance v0, Linfo/flowersoft/theotown/tools/GenericTool$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tools/GenericTool$1;-><init>(Linfo/flowersoft/theotown/tools/GenericTool;)V

    const-string v1, "setToolMarker"

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 187
    new-instance v0, Linfo/flowersoft/theotown/tools/GenericTool$2;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tools/GenericTool$2;-><init>(Linfo/flowersoft/theotown/tools/GenericTool;)V

    const-string v2, "registerToolAction"

    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 250
    new-instance v0, Linfo/flowersoft/theotown/tools/GenericTool$3;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tools/GenericTool$3;-><init>(Linfo/flowersoft/theotown/tools/GenericTool;)V

    const-string v3, "setToolFilter"

    invoke-virtual {p1, v3, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 271
    new-instance v0, Linfo/flowersoft/theotown/tools/GenericTool$4;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tools/GenericTool$4;-><init>(Linfo/flowersoft/theotown/tools/GenericTool;)V

    const-string v4, "addUndoButton"

    invoke-virtual {p1, v4, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 297
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->eventMethod:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v0, :cond_47

    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 298
    invoke-virtual {v0, v6, v6, v6, v5}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(IIII)Z

    .line 301
    :cond_47
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    invoke-virtual {p1, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 302
    invoke-virtual {p1, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 303
    invoke-virtual {p1, v3, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 304
    invoke-virtual {p1, v4, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

.method public draw(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 6

    .line 353
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/BuildTool;->draw(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 355
    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p3

    if-eqz p3, :cond_10

    .line 356
    iget v0, p3, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-gez v0, :cond_10

    const/4 p3, 0x0

    .line 360
    :cond_10
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->useFilter:Z

    if-eqz v0, :cond_91

    .line 361
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->buildingFilter:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-nez v0, :cond_84

    :cond_20
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->waterFilter:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 362
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result v0

    if-nez v0, :cond_84

    :cond_2c
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->landFilter:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 363
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result v0

    if-eqz v0, :cond_84

    :cond_38
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->roadFilter:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 364
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasVisibleRoad(II)Z

    move-result v0

    if-nez v0, :cond_84

    :cond_44
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->treeFilter:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 365
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v0

    if-nez v0, :cond_84

    :cond_50
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->zoneFilter:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 366
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    if-nez v0, :cond_84

    :cond_5c
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->roadDecorationFilter:Z

    if-eqz v0, :cond_68

    if-eqz p3, :cond_68

    .line 367
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v0

    if-gtz v0, :cond_84

    :cond_68
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->busStopFilter:Z

    if-eqz v0, :cond_74

    if-eqz p3, :cond_74

    .line 368
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object p3

    if-nez p3, :cond_84

    :cond_74
    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/GenericTool;->mouseFilter:Z

    if-eqz p3, :cond_ce

    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetHover:Z

    if-eqz p3, :cond_ce

    iget p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetX:I

    if-ne p3, p1, :cond_ce

    iget p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetY:I

    if-ne p3, p2, :cond_ce

    :cond_84
    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/GenericTool;->railwayFilter:Z

    if-eqz p3, :cond_91

    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 370
    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object p3

    if-eqz p3, :cond_91

    goto :goto_ce

    .line 373
    :cond_91
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/GenericTool;->tool:Linfo/flowersoft/theotown/draft/ToolDraft;

    iget-object p3, p3, Linfo/flowersoft/theotown/draft/Draft;->drawMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz p3, :cond_ce

    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result p3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p3, p3, v0

    if-gez p3, :cond_bd

    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetHover:Z

    if-eqz p3, :cond_ce

    iget p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetX:I

    sub-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetY:I

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/16 v0, 0xc

    if-gt p3, v0, :cond_ce

    .line 374
    :cond_bd
    iget p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetX:I

    .line 375
    iget v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetY:I

    .line 376
    iget-boolean v1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetHover:Z

    if-nez v1, :cond_c7

    const/4 p3, -0x1

    move v0, p3

    .line 380
    :cond_c7
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->tool:Linfo/flowersoft/theotown/draft/ToolDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->drawMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    invoke-virtual {v1, p1, p2, p3, v0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(IIII)Z

    :cond_ce
    :goto_ce
    return-void
.end method

.method public drawTree(IILinfo/flowersoft/theotown/city/objects/Tree;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 5

    .line 327
    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/city/objects/Tree;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public getIcon()I
    .registers 4

    .line 386
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->tool:Linfo/flowersoft/theotown/draft/ToolDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->iconFrames:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    aget v0, v1, v2

    return v0

    :cond_a
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v0, :cond_11

    aget v0, v0, v2

    return v0

    :cond_11
    iget v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->UNKNOWN_ICON:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->tool:Linfo/flowersoft/theotown/draft/ToolDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 391
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/GenericTool;->tool:Linfo/flowersoft/theotown/draft/ToolDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(IIFFII)V
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 332
    invoke-direct/range {p0 .. p2}, Linfo/flowersoft/theotown/tools/GenericTool;->isBuildable(II)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 333
    invoke-super/range {p0 .. p6}, Linfo/flowersoft/theotown/tools/DefaultTool;->onClick(IIFFII)V

    .line 335
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v3

    const-string v4, "click"

    iget-object v5, v0, Linfo/flowersoft/theotown/tools/GenericTool;->tool:Linfo/flowersoft/theotown/draft/ToolDraft;

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v3

    if-eqz v3, :cond_21

    const/4 v4, 0x0

    .line 337
    invoke-virtual {v3, v1, v2, v4}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    .line 340
    :cond_21
    iget-object v3, v0, Linfo/flowersoft/theotown/tools/GenericTool;->tool:Linfo/flowersoft/theotown/draft/ToolDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ToolDraft;->onClickTransitions:Ljava/util/List;

    if-eqz v3, :cond_60

    .line 341
    new-instance v4, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v3, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v4, v3}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 342
    iget-object v3, v0, Linfo/flowersoft/theotown/tools/GenericTool;->tool:Linfo/flowersoft/theotown/draft/ToolDraft;

    iget-object v5, v3, Linfo/flowersoft/theotown/draft/ToolDraft;->onClickTransitions:Ljava/util/List;

    int-to-long v6, v1

    int-to-long v8, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tool click "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Linfo/flowersoft/theotown/tools/GenericTool;->tool:Linfo/flowersoft/theotown/draft/ToolDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    iget-object v1, v0, Linfo/flowersoft/theotown/tools/GenericTool;->tool:Linfo/flowersoft/theotown/draft/ToolDraft;

    iget-object v2, v1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 345
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v18

    const-wide/16 v10, 0x1

    const-wide/16 v12, 0x1

    const/4 v14, 0x0

    .line 342
    const-string v15, ""

    move-object/from16 v17, v2

    invoke-virtual/range {v4 .. v18}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;JJJJILjava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    .line 346
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    :cond_60
    return-void
.end method

.method public redo(Z)V
    .registers 3

    .line 318
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->redoCallback:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_7

    .line 319
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call()Lvm2/LuaValue;

    .line 321
    :cond_7
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->redo(Z)V

    return-void
.end method

.method public unbind()V
    .registers 4

    .line 309
    invoke-super {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->unbind()V

    .line 311
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool;->eventMethod:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v0, :cond_d

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 312
    invoke-virtual {v0, v2, v2, v2, v1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(IIII)Z

    :cond_d
    return-void
.end method

###### Class info.flowersoft.theotown.tools.GenericTool.AnonymousClass1 (info.flowersoft.theotown.tools.GenericTool$1)
.class public Linfo/flowersoft/theotown/tools/GenericTool$1;
.super Lvm2/lib/OneArgFunction;
.source "GenericTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/GenericTool;->bind(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/GenericTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/GenericTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$1;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 77
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$1;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    new-instance v1, Linfo/flowersoft/theotown/tools/GenericTool$1$1;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/tools/GenericTool$1$1;-><init>(Linfo/flowersoft/theotown/tools/GenericTool$1;Lvm2/LuaTable;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    .line 184
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.tools.GenericTool.AnonymousClass1.C10901 (info.flowersoft.theotown.tools.GenericTool$1$1)
.class public Linfo/flowersoft/theotown/tools/GenericTool$1$1;
.super Ljava/lang/Object;
.source "GenericTool.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/GenericTool$1;->call(Lvm2/LuaValue;)Lvm2/LuaValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final buildingIntensity:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final getIntensity:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final ignoreBuilding:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final markBuilding:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final markTree:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final overlayAlpha:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic this$1:Linfo/flowersoft/theotown/tools/GenericTool$1;

.field public final useOverlay:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic val$table:Lvm2/LuaTable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/GenericTool$1;Lvm2/LuaTable;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->this$1:Linfo/flowersoft/theotown/tools/GenericTool$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->val$table:Lvm2/LuaTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string p1, "useOverlay"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->useOverlay:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 82
    const-string p1, "overlayAlpha"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->overlayAlpha:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 83
    const-string p1, "getIntensity"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->getIntensity:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 84
    const-string p1, "ignoreBuilding"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->ignoreBuilding:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 85
    const-string p1, "markBuilding"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->markBuilding:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 86
    const-string p1, "markTree"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->markTree:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 87
    const-string p1, "buildingIntensity"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->buildingIntensity:Linfo/flowersoft/theotown/scripting/ScriptMethod;

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
    .registers 5

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->buildingIntensity:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_18

    .line 156
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1

    .line 158
    :cond_18
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->getIntensity(II)F

    move-result p1

    return p1
.end method

.method public getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    .line 92
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->BLUE:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getIntensity(II)F
    .registers 5

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->getIntensity:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_18

    .line 119
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1

    :cond_18
    const/4 p1, 0x0

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

    .line 168
    const-string v0, "generic"

    return-object v0
.end method

.method public getTempIntensity(II)F
    .registers 3

    .line 126
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->getIntensity(II)F

    move-result p1

    return p1
.end method

.method public ignoreBuilding(II)Z
    .registers 5

    .line 131
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->ignoreBuilding:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 132
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    return p1

    :cond_16
    return v1
.end method

.method public markBuilding(II)Z
    .registers 5

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->markBuilding:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 140
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    return p1

    :cond_16
    return v1
.end method

.method public markTree(II)Z
    .registers 5

    .line 147
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->markTree:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 148
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    return p1

    :cond_16
    return v1
.end method

.method public overlayAlpha(II)F
    .registers 5

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->overlayAlpha:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_18

    .line 106
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1

    :cond_18
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public overlayTempAlpha(II)F
    .registers 3

    .line 113
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->overlayAlpha(II)F

    move-result p1

    return p1
.end method

.method public setVariant(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public useOverlay(II)Z
    .registers 5

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$1$1;->useOverlay:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 98
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    return p1

    :cond_16
    return v1
.end method

###### Class info.flowersoft.theotown.tools.GenericTool.AnonymousClass2 (info.flowersoft.theotown.tools.GenericTool$2)
.class public Linfo/flowersoft/theotown/tools/GenericTool$2;
.super Lvm2/lib/OneArgFunction;
.source "GenericTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/GenericTool;->bind(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/GenericTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/GenericTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 187
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$2;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 190
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$2;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/GenericTool;->access$000(Linfo/flowersoft/theotown/tools/GenericTool;)Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/tools/GenericTool$2$1;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/tools/GenericTool$2$1;-><init>(Linfo/flowersoft/theotown/tools/GenericTool$2;Lvm2/LuaTable;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 247
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.tools.GenericTool.AnonymousClass2.AnonymousClass1 (info.flowersoft.theotown.tools.GenericTool$2$1)
.class public Linfo/flowersoft/theotown/tools/GenericTool$2$1;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "GenericTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/GenericTool$2;->call(Lvm2/LuaValue;)Lvm2/LuaValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public getNameFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public iconFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public idFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public isPressedFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public isVisibleFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final onClickFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic this$1:Linfo/flowersoft/theotown/tools/GenericTool$2;

.field public final synthetic val$table:Lvm2/LuaTable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/GenericTool$2;Lvm2/LuaTable;)V
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

    .line 192
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->this$1:Linfo/flowersoft/theotown/tools/GenericTool$2;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->val$table:Lvm2/LuaTable;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    .line 202
    const-string p1, "icon"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->iconFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-nez p1, :cond_19

    .line 203
    const-string p1, "getIcon"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->iconFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 204
    :cond_19
    const-string p1, "id"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->idFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-nez p1, :cond_2b

    .line 205
    const-string p1, "getId"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->idFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 206
    :cond_2b
    const-string p1, "onClick"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->onClickFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 207
    const-string p1, "pressed"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->isPressedFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-nez p1, :cond_45

    .line 208
    const-string p1, "isPressed"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->isPressedFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 209
    :cond_45
    const-string p1, "visible"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->isVisibleFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-nez p1, :cond_57

    .line 210
    const-string p1, "isVisible"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->isVisibleFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 211
    :cond_57
    const-string p1, "name"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->getNameFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-nez p1, :cond_69

    .line 212
    const-string p1, "getName"

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->getNameFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    :cond_69
    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 3

    .line 217
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->iconFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call()Lvm2/LuaValue;

    move-result-object v0

    goto :goto_11

    :cond_9
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->val$table:Lvm2/LuaTable;

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    :goto_11
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optint(I)I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 222
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->idFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call()Lvm2/LuaValue;

    move-result-object v0

    goto :goto_11

    :cond_9
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->val$table:Lvm2/LuaTable;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    :goto_11
    const-string v1, ""

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 244
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->getNameFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call()Lvm2/LuaValue;

    move-result-object v0

    goto :goto_11

    :cond_9
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->val$table:Lvm2/LuaTable;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    :goto_11
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPressed()Z
    .registers 3

    .line 234
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->isPressedFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call()Lvm2/LuaValue;

    move-result-object v0

    goto :goto_11

    :cond_9
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->val$table:Lvm2/LuaTable;

    const-string v1, "pressed"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    :goto_11
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 3

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->isVisibleFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call()Lvm2/LuaValue;

    move-result-object v0

    goto :goto_11

    :cond_9
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->val$table:Lvm2/LuaTable;

    const-string v1, "visible"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    :goto_11
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 227
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$2$1;->onClickFunc:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_7

    .line 228
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call()Lvm2/LuaValue;

    :cond_7
    return-void
.end method

###### Class info.flowersoft.theotown.tools.GenericTool.AnonymousClass3 (info.flowersoft.theotown.tools.GenericTool$3)
.class public Linfo/flowersoft/theotown/tools/GenericTool$3;
.super Lvm2/lib/OneArgFunction;
.source "GenericTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/GenericTool;->bind(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/GenericTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/GenericTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 250
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$3;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 253
    invoke-virtual {p1}, Lvm2/LuaValue;->istable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a4

    .line 254
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$3;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/tools/GenericTool;->access$102(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z

    .line 255
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$3;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    const-string v2, "building"

    invoke-virtual {p1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/tools/GenericTool;->access$202(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z

    .line 256
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$3;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    const-string v2, "water"

    invoke-virtual {p1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/tools/GenericTool;->access$302(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z

    .line 257
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$3;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    const-string v2, "land"

    invoke-virtual {p1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/tools/GenericTool;->access$402(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z

    .line 258
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$3;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    const-string v2, "road"

    invoke-virtual {p1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/tools/GenericTool;->access$502(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z

    .line 259
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$3;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    const-string v2, "tree"

    invoke-virtual {p1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/tools/GenericTool;->access$602(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z

    .line 260
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$3;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    const-string v2, "zone"

    invoke-virtual {p1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/tools/GenericTool;->access$702(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z

    .line 261
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$3;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    const-string v2, "roadDecoration"

    invoke-virtual {p1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/tools/GenericTool;->access$802(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z

    .line 262
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$3;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    const-string v2, "busStop"

    invoke-virtual {p1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/tools/GenericTool;->access$902(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z

    .line 263
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$3;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    const-string v2, "mouse"

    invoke-virtual {p1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/tools/GenericTool;->access$1002(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z

    .line 264
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$3;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    const-string v2, "railway"

    invoke-virtual {p1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/tools/GenericTool;->access$1102(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z

    goto :goto_a9

    .line 266
    :cond_a4
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$3;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/tools/GenericTool;->access$102(Linfo/flowersoft/theotown/tools/GenericTool;Z)Z

    .line 268
    :goto_a9
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.tools.GenericTool.AnonymousClass4 (info.flowersoft.theotown.tools.GenericTool$4)
.class public Linfo/flowersoft/theotown/tools/GenericTool$4;
.super Lvm2/lib/VarArgFunction;
.source "GenericTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/GenericTool;->bind(Linfo/flowersoft/theotown/city/City;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/GenericTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/GenericTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 271
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$4;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 274
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$4;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    const-string v1, "<redo>"

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-static {v1, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->create(Ljava/lang/String;Lvm2/LuaValue;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/tools/GenericTool;->access$1202(Linfo/flowersoft/theotown/tools/GenericTool;Linfo/flowersoft/theotown/scripting/ScriptMethod;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 275
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$4;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    .line 276
    new-instance p1, Linfo/flowersoft/theotown/tools/GenericTool$4$1;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/tools/GenericTool$4$1;-><init>(Linfo/flowersoft/theotown/tools/GenericTool$4;)V

    new-instance v0, Linfo/flowersoft/theotown/tools/GenericTool$4$2;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tools/GenericTool$4$2;-><init>(Linfo/flowersoft/theotown/tools/GenericTool$4;)V

    invoke-static {p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.tools.GenericTool.AnonymousClass4.AnonymousClass1 (info.flowersoft.theotown.tools.GenericTool$4$1)
.class public Linfo/flowersoft/theotown/tools/GenericTool$4$1;
.super Lvm2/lib/VarArgFunction;
.source "GenericTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/GenericTool$4;->invoke(Lvm2/Varargs;)Lvm2/Varargs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/tools/GenericTool$4;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/GenericTool$4;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 276
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$4$1;->this$1:Linfo/flowersoft/theotown/tools/GenericTool$4;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 11

    const/4 v0, 0x1

    .line 279
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v2

    const/4 v0, 0x2

    .line 280
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v3

    const/4 v0, 0x3

    .line 281
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v2}, Lvm2/LuaValue;->optint(I)I

    move-result v4

    const/4 v0, 0x4

    .line 282
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v5

    const/4 v0, 0x5

    .line 283
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v6

    const/4 v0, 0x6

    .line 284
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v5}, Lvm2/LuaValue;->optint(I)I

    move-result v7

    .line 285
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$4$1;->this$1:Linfo/flowersoft/theotown/tools/GenericTool$4;

    iget-object v1, p1, Linfo/flowersoft/theotown/tools/GenericTool$4;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    const/16 v8, 0x8

    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIIIIII)V

    .line 286
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.tools.GenericTool.AnonymousClass4.AnonymousClass2 (info.flowersoft.theotown.tools.GenericTool$4$2)
.class public Linfo/flowersoft/theotown/tools/GenericTool$4$2;
.super Lvm2/lib/ZeroArgFunction;
.source "GenericTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/GenericTool$4;->invoke(Lvm2/Varargs;)Lvm2/Varargs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/tools/GenericTool$4;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/GenericTool$4;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 288
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/GenericTool$4$2;->this$1:Linfo/flowersoft/theotown/tools/GenericTool$4;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 291
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/GenericTool$4$2;->this$1:Linfo/flowersoft/theotown/tools/GenericTool$4;

    iget-object v0, v0, Linfo/flowersoft/theotown/tools/GenericTool$4;->this$0:Linfo/flowersoft/theotown/tools/GenericTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method
