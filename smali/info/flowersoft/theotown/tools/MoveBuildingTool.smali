###### Class info.flowersoft.theotown.tools.MoveBuildingTool (info.flowersoft.theotown.tools.MoveBuildingTool)
.class public Linfo/flowersoft/theotown/tools/MoveBuildingTool;
.super Linfo/flowersoft/theotown/tools/BuildingTool;
.source "MoveBuildingTool.java"


# instance fields
.field public myMarker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

.field public srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/tools/BuildingTool;-><init>(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/MoveBuildingTool$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/tools/MoveBuildingTool$1;-><init>(Linfo/flowersoft/theotown/tools/MoveBuildingTool;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(ILinfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/MoveBuildingTool;)V
    .registers 1

    .line 22
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->enterSelectBuildingMode()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/MoveBuildingTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 22
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tools/MoveBuildingTool;Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->isMoveable(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public afterBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 6

    .line 154
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v2, "building"

    const-string v3, "moved"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getUpgrades()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 157
    :goto_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/objects/Building;->addFinishedUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 161
    :cond_28
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchable()Z

    move-result v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setUntouchable(Z)V

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->isSpentDiamondsOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setSpentDiamondsOn(Z)V

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getSpentMoney()I

    move-result v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setSpentMoney(I)V

    .line 166
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getPerformance()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->setBuildingPerformance(Linfo/flowersoft/theotown/city/objects/Building;F)V

    .line 168
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getLuaStorage()Lvm2/LuaTable;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setLuaStorage(Lvm2/LuaTable;)V

    .line 169
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Building;->_IDLE_ID:I

    iput v0, p1, Linfo/flowersoft/theotown/city/objects/Building;->_IDLE_ID:I

    .line 170
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->markAsNewlyBuilt()V

    .line 171
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->enterSelectBuildingMode()V

    return-void
.end method

.method public beforeBuilding()V
    .registers 4

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    return-void
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 60
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/BuildingTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 62
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->enterSelectBuildingMode()V

    return-void
.end method

.method public canBeginMove(FFIIFF)Z
    .registers 8

    .line 219
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-super/range {p0 .. p6}, Linfo/flowersoft/theotown/tools/BuildingTool;->canBeginMove(FFIIFF)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 6

    .line 131
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 133
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    if-ne v0, v1, :cond_1e

    .line 134
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->BLUE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 135
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 136
    iget-object p1, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void

    .line 138
    :cond_1e
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public final enterMoveBuildingMode(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 6

    .line 93
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->setDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 94
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    .line 95
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    div-float/2addr p1, v3

    add-float/2addr v2, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Linfo/flowersoft/theotown/city/City;->focus(FFF)V

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->absOffsetX:F

    .line 97
    iput p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->absOffsetY:F

    .line 98
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->myMarker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method

.method public final enterSelectBuildingMode()V
    .registers 3

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->setDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    .line 72
    iput-object v0, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    .line 73
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getMarker()Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->myMarker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    .line 74
    new-instance v0, Linfo/flowersoft/theotown/tools/MoveBuildingTool$2;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, p0, v1}, Linfo/flowersoft/theotown/tools/MoveBuildingTool$2;-><init>(Linfo/flowersoft/theotown/tools/MoveBuildingTool;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 224
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getIcon()I

    move-result v0

    return v0

    :cond_b
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_MOVE_BUILDING:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 67
    const-string v0, "MoveBuilding"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 229
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x2a9

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrice(II)J
    .registers 5

    .line 144
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/tools/BuildingTool;->getPrice(II)J

    move-result-wide p1

    const-wide/16 v0, 0x4

    add-long/2addr p1, v0

    const-wide/16 v0, 0x5

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public isBuildable()Z
    .registers 2

    .line 107
    invoke-super {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->isBuildable()Z

    move-result v0

    return v0
.end method

.method public isBuildable(II)Z
    .registers 4

    .line 176
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_f

    .line 177
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->isBuildableWithPotentialSelfIntersection(II)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public final isBuildableWithPotentialSelfIntersection(II)Z
    .registers 5

    .line 184
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->setNotifyListeners(Z)V

    .line 188
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 189
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->setBuildingTiles(Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 191
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/tools/BuildingTool;->isBuildable(II)Z

    move-result p1

    .line 193
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->setBuildingTiles(Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 194
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    .line 196
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/city/BuildingList;->setNotifyListeners(Z)V

    return p1
.end method

.method public final isMoveable(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 3

    .line 102
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->moveable:Z

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isLockedAndNotRemoveable()Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(IIFFII)V
    .registers 9

    .line 112
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 113
    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    if-ne v0, v1, :cond_1e

    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 114
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->enterSelectBuildingMode()V

    return-void

    .line 116
    :cond_1e
    invoke-super/range {p0 .. p6}, Linfo/flowersoft/theotown/tools/BuildingTool;->onClick(IIFFII)V

    move-object p1, p0

    return-void

    :cond_23
    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 119
    iget-object p4, p1, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p4, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p4

    if-eqz p4, :cond_47

    .line 120
    iget-object p4, p1, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p4, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p2

    iput-object p2, p1, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz p2, :cond_44

    .line 121
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->isMoveable(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 122
    iget-object p2, p1, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->enterMoveBuildingMode(Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void

    :cond_44
    const/4 p2, 0x0

    .line 124
    iput-object p2, p1, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    :cond_47
    return-void
.end method

.method public reversedMovement()Z
    .registers 2

    .line 214
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-super {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->reversedMovement()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final setBuildingTiles(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 201
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_34

    move v2, v0

    .line 202
    :goto_b
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 203
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    add-int/2addr v3, v2

    .line 204
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->srcBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    add-int/2addr v4, v1

    .line 205
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 206
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v3, v4, p1}, Linfo/flowersoft/theotown/city/Tiles;->setBuilding(IILinfo/flowersoft/theotown/city/objects/Building;)V

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_34
    return-void
.end method

###### Class info.flowersoft.theotown.tools.MoveBuildingTool.AnonymousClass1 (info.flowersoft.theotown.tools.MoveBuildingTool$1)
.class public Linfo/flowersoft/theotown/tools/MoveBuildingTool$1;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "MoveBuildingTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/MoveBuildingTool;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/MoveBuildingTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/MoveBuildingTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 30
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool$1;->this$0:Linfo/flowersoft/theotown/tools/MoveBuildingTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 33
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BACKWARD:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 38
    const-string v0, "resetMoveBuildingTool"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool$1;->this$0:Linfo/flowersoft/theotown/tools/MoveBuildingTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->access$100(Linfo/flowersoft/theotown/tools/MoveBuildingTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x427

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool$1;->this$0:Linfo/flowersoft/theotown/tools/MoveBuildingTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool$1;->this$0:Linfo/flowersoft/theotown/tools/MoveBuildingTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->access$000(Linfo/flowersoft/theotown/tools/MoveBuildingTool;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.MoveBuildingTool.AnonymousClass2 (info.flowersoft.theotown.tools.MoveBuildingTool$2)
.class public Linfo/flowersoft/theotown/tools/MoveBuildingTool$2;
.super Linfo/flowersoft/theotown/tools/marker/BuildingMarker;
.source "MoveBuildingTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/MoveBuildingTool;->enterSelectBuildingMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/MoveBuildingTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/MoveBuildingTool;Linfo/flowersoft/theotown/city/City;)V
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

    .line 74
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool$2;->this$0:Linfo/flowersoft/theotown/tools/MoveBuildingTool;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public buildingIsInvolved(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 3

    .line 77
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/MoveBuildingTool$2;->this$0:Linfo/flowersoft/theotown/tools/MoveBuildingTool;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/tools/MoveBuildingTool;->access$200(Linfo/flowersoft/theotown/tools/MoveBuildingTool;Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p1

    return p1
.end method

.method public getInvolvedIntensity(Linfo/flowersoft/theotown/city/objects/Building;)F
    .registers 2

    .line 0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method
