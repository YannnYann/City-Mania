###### Class info.flowersoft.theotown.city.modifier.RoadBuilder (info.flowersoft.theotown.city.modifier.RoadBuilder)
.class public Linfo/flowersoft/theotown/city/modifier/RoadBuilder;
.super Linfo/flowersoft/theotown/city/modifier/LineBuilder;
.source "RoadBuilder.java"


# instance fields
.field public final addedRoads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation
.end field

.field public bridgeTiles0:I

.field public bridgeTiles1:I

.field public draft:Linfo/flowersoft/theotown/draft/RoadDraft;

.field public eventMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

.field public final events:Z

.field public isBuildableCluster:Linfo/flowersoft/theotown/scripting/MethodCluster;

.field public landTiles:I

.field public final removedRoads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ">;"
        }
    .end annotation
.end field

.field public sender:Lvm2/LuaValue;

.field public tunnelTiles:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/modifier/CityModifier;Z)V
    .registers 3

    .line 56
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;-><init>(Linfo/flowersoft/theotown/city/modifier/CityModifier;)V

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->addedRoads:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->removedRoads:Ljava/util/List;

    .line 57
    iput-boolean p2, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->events:Z

    const/4 p1, -0x2

    .line 58
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setMinLevel(I)V

    const/16 p1, 0x10

    .line 59
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setMaxLevel(I)V

    return-void
.end method


# virtual methods
.method public afterPriceCalculation()J
    .registers 8

    .line 408
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->landTiles:I

    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->bridgeTiles0:I

    iget v5, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->bridgeTiles1:I

    iget v6, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->tunnelTiles:I

    .line 409
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/RoadDraft;IIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public final allowedByZone(Linfo/flowersoft/theotown/draft/RoadDraft;Linfo/flowersoft/theotown/draft/ZoneDraft;)Z
    .registers 5

    .line 174
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isSuperiorTo(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 175
    :cond_c
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-nez p1, :cond_17

    if-eqz p2, :cond_17

    iget-boolean p1, p2, Linfo/flowersoft/theotown/draft/ZoneDraft;->persistent:Z

    if-eqz p1, :cond_17

    return v1

    :cond_17
    const/4 p1, 0x1

    return p1
.end method

.method public final applyDecorations(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Road;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;",
            ">;",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 323
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 324
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;

    .line 325
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v3

    invoke-virtual {v1, v2, v3, p3}, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->check(III)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 326
    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v4, v1, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->sender:Lvm2/LuaValue;

    sget-boolean v8, Linfo/flowersoft/theotown/resources/Settings;->multiRoadDecorationSupport:Z

    const/4 v6, -0x1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildRoadDecoration(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;ILvm2/LuaValue;Z)V

    goto :goto_2a

    :cond_29
    move-object v5, p2

    :goto_2a
    add-int/lit8 v0, v0, 0x1

    move-object p2, v5

    goto :goto_1

    :cond_2e
    return-void
.end method

.method public beforePriceCalculation()V
    .registers 2

    const/4 v0, 0x0

    .line 403
    iput v0, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->tunnelTiles:I

    iput v0, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->bridgeTiles1:I

    iput v0, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->bridgeTiles0:I

    iput v0, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->landTiles:I

    return-void
.end method

.method public beginBuild()V
    .registers 2

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->addedRoads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->removedRoads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public beginDestroy()V
    .registers 1

    .line 0
    return-void
.end method

.method public buildOnTile(IIIII)V
    .registers 29

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v15, p5

    .line 181
    iget-object v1, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v7, :cond_1c

    .line 183
    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    goto :goto_2e

    :cond_1c
    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    sub-int/2addr v3, v2

    if-ne v7, v3, :cond_28

    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v3

    goto :goto_2e

    :cond_28
    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->axis(I)I

    move-result v3

    .line 185
    :goto_2e
    iget v4, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_34

    move v3, v5

    :cond_34
    if-eqz v15, :cond_3c

    .line 186
    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->axis(I)I

    move-result v3

    :cond_3c
    const/4 v4, -0x1

    if-gez v12, :cond_47

    if-ne v12, v4, :cond_44

    if-eqz v15, :cond_44

    goto :goto_47

    :cond_44
    move/from16 v16, v5

    goto :goto_49

    :cond_47
    :goto_47
    move/from16 v16, v2

    .line 190
    :goto_49
    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v10, v11}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v16, :cond_5d

    if-eqz v6, :cond_5d

    .line 191
    iget-boolean v6, v6, Linfo/flowersoft/theotown/draft/ZoneDraft;->persistent:Z

    if-nez v6, :cond_5d

    .line 192
    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v6, v8, v10, v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->markZone(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    .line 196
    :cond_5d
    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v10, v11}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v6

    if-eqz v6, :cond_78

    if-ne v12, v4, :cond_69

    if-nez v15, :cond_73

    :cond_69
    if-ltz v12, :cond_78

    .line 198
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Tree;->getDraft()Linfo/flowersoft/theotown/draft/TreeDraft;

    move-result-object v4

    iget v4, v4, Linfo/flowersoft/theotown/draft/TreeDraft;->buildHeight:I

    if-ge v12, v4, :cond_78

    .line 199
    :cond_73
    iget-object v4, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v4, v6, v10, v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Tree;II)V

    .line 203
    :cond_78
    iget-object v4, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v10, v11}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v4

    if-eqz v16, :cond_89

    if-eqz v4, :cond_89

    .line 205
    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v9, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->sender:Lvm2/LuaValue;

    invoke-virtual {v6, v4, v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    :cond_89
    if-eqz v16, :cond_ac

    .line 210
    iget-object v4, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v10, v11}, Linfo/flowersoft/theotown/city/Tiles;->hasOvergroundWire(II)Z

    move-result v4

    if-eqz v4, :cond_ac

    move v4, v5

    :goto_94
    if-gt v4, v2, :cond_ac

    .line 212
    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v10, v11, v4}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v6

    if-eqz v6, :cond_a9

    .line 213
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch()Z

    move-result v9

    if-eqz v9, :cond_a9

    iget-object v9, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v9, v6, v10, v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removePunch(Linfo/flowersoft/theotown/city/objects/Wire;II)V

    :cond_a9
    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    .line 217
    :cond_ac
    iget-object v4, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v10, v11, v12}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    if-eqz v4, :cond_d0

    .line 219
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v6

    if-eqz v6, :cond_c8

    .line 220
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v9

    or-int/2addr v9, v3

    const/16 v13, 0xf

    if-ne v9, v13, :cond_c8

    .line 221
    iget-object v9, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v9, v6, v10, v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/BusStop;II)V

    .line 223
    :cond_c8
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v6

    invoke-static {v3, v6}, Linfo/flowersoft/theotown/city/Direction;->union(II)I

    move-result v3

    :cond_d0
    move v14, v3

    if-eqz v4, :cond_e3

    .line 226
    iget-object v3, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v6, v4, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/draft/RoadDraft;->canReplace(Linfo/flowersoft/theotown/draft/RoadDraft;)Z

    move-result v3

    if-nez v3, :cond_e3

    .line 227
    invoke-virtual {v4, v14}, Linfo/flowersoft/theotown/city/objects/Road;->alignTo(I)V

    move-object v8, v4

    goto/16 :goto_162

    :cond_e3
    if-eqz v4, :cond_ee

    .line 231
    iget v3, v4, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    iget v6, v4, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    iget v9, v4, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-virtual {v0, v4, v3, v6, v9}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->callRoadRemoveEvent(Linfo/flowersoft/theotown/city/objects/Road;III)V

    :cond_ee
    move-object v3, v8

    .line 233
    new-instance v8, Linfo/flowersoft/theotown/city/objects/Road;

    iget-object v9, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v0, v15}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->getUpDir(I)I

    move-result v13

    invoke-direct/range {v8 .. v14}, Linfo/flowersoft/theotown/city/objects/Road;-><init>(Linfo/flowersoft/theotown/draft/RoadDraft;IIIII)V

    .line 234
    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/RoadDraft;->decorations:Ljava/util/List;

    if-eqz v6, :cond_109

    sget-boolean v9, Linfo/flowersoft/theotown/resources/Settings;->autoRoadDecorations:Z

    if-eqz v9, :cond_109

    .line 235
    iget v9, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    invoke-virtual {v0, v6, v8, v9}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->applyDecorations(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Road;I)V

    .line 237
    :cond_109
    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v10, v11, v12, v8}, Linfo/flowersoft/theotown/city/Tiles;->setRoad(IIILinfo/flowersoft/theotown/city/objects/Road;)V

    .line 238
    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v6

    invoke-virtual {v6, v8}, Linfo/flowersoft/theotown/city/RoadList;->add(Linfo/flowersoft/theotown/city/objects/Road;)Z

    .line 239
    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->addedRoads:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_146

    .line 241
    iget-object v6, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->removedRoads:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v4

    invoke-virtual {v8, v4}, Linfo/flowersoft/theotown/city/objects/Road;->setBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)V

    .line 243
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v4

    if-eqz v4, :cond_146

    iget-object v4, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v4, v4, Linfo/flowersoft/theotown/draft/RoadDraft;->allowBusStop:Z

    if-nez v4, :cond_146

    .line 244
    iget-object v4, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v4

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v6

    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/city/BusStopList;->remove(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v8, v3}, Linfo/flowersoft/theotown/city/objects/Road;->setBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)V

    .line 248
    :cond_146
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v3

    if-nez v3, :cond_158

    if-nez v12, :cond_158

    iget v3, v8, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result v4

    if-ne v3, v4, :cond_158

    move v3, v2

    goto :goto_159

    :cond_158
    move v3, v5

    :goto_159
    iput-boolean v3, v8, Linfo/flowersoft/theotown/city/objects/Road;->slope:Z

    .line 249
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v1

    add-int/2addr v1, v12

    iput v1, v8, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    .line 252
    :goto_162
    iget-object v1, v8, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v3, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->autoJoin:Z

    if-eqz v3, :cond_16c

    sget-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    if-nez v3, :cond_170

    :cond_16c
    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->devoted:Z

    if-eqz v1, :cond_172

    :cond_170
    move v6, v2

    goto :goto_173

    :cond_172
    move v6, v5

    :goto_173
    if-nez v15, :cond_1d2

    move v9, v2

    :goto_176
    const/16 v1, 0x8

    if-gt v9, v1, :cond_1d2

    .line 255
    invoke-static {v9}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v1

    add-int/2addr v1, v10

    .line 256
    invoke-static {v9}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v3

    add-int/2addr v3, v11

    move v4, v2

    move v2, v3

    .line 258
    invoke-static {v9}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v3

    move v13, v4

    iget v4, v8, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    move/from16 v17, v5

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->isRoadJoinable(IIIIZZ)Z

    move-result v3

    if-eqz v3, :cond_1cd

    .line 259
    iget-object v3, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v1, v2, v12}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-nez v3, :cond_1a9

    const/4 v4, -0x2

    if-le v12, v4, :cond_1a9

    .line 262
    iget-object v3, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v4, v12, -0x1

    invoke-virtual {v3, v1, v2, v4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    :cond_1a9
    if-eqz v3, :cond_1cd

    if-eqz v7, :cond_1c8

    .line 266
    iget v1, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    sub-int/2addr v1, v13

    if-eq v7, v1, :cond_1c8

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v1

    iget v2, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->axis(I)I

    move-result v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v1

    if-eqz v1, :cond_1c8

    iget-object v1, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->devoted:Z

    if-eqz v1, :cond_1cd

    .line 267
    :cond_1c8
    invoke-static {v14, v9}, Linfo/flowersoft/theotown/city/Direction;->union(II)I

    move-result v1

    move v14, v1

    :cond_1cd
    mul-int/lit8 v9, v9, 0x2

    move v2, v13

    const/4 v5, 0x0

    goto :goto_176

    :cond_1d2
    move v13, v2

    .line 274
    iget-object v1, v8, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v2, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    if-ne v1, v2, :cond_1e2

    .line 275
    iget v1, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dirIndex:I

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v14, v1

    invoke-virtual {v8, v14}, Linfo/flowersoft/theotown/city/objects/Road;->alignToRaw(I)V

    goto :goto_1e5

    .line 277
    :cond_1e2
    invoke-virtual {v8, v14}, Linfo/flowersoft/theotown/city/objects/Road;->alignTo(I)V

    :goto_1e5
    if-lez v12, :cond_241

    if-nez v15, :cond_241

    move v1, v7

    :goto_1ea
    if-lez v1, :cond_1f9

    .line 282
    iget-object v2, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    if-ne v2, v12, :cond_1f9

    add-int/lit8 v1, v1, -0x1

    goto :goto_1ea

    :cond_1f9
    sub-int v2, v7, v1

    add-int/2addr v2, v13

    :goto_1fc
    add-int v3, v1, v2

    add-int/lit8 v4, v3, 0x1

    .line 284
    iget v5, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    if-gt v4, v5, :cond_20f

    iget-object v4, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->relativeLevels:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    if-ne v3, v12, :cond_20f

    add-int/lit8 v2, v2, 0x1

    goto :goto_1fc

    :cond_20f
    if-eqz v7, :cond_230

    .line 286
    iget v3, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    sub-int/2addr v3, v13

    if-eq v7, v3, :cond_230

    mul-int/lit8 v3, v7, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    add-int/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/RoadDraft;->pileDistant:I

    add-int/lit8 v3, v2, 0x1

    rem-int/2addr v1, v3

    .line 287
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ne v1, v2, :cond_246

    .line 288
    :cond_230
    iget-object v1, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, v10, v11}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v1

    if-eqz v1, :cond_23d

    .line 290
    iget-object v2, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v2, v1, v10, v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Tree;II)V

    .line 292
    :cond_23d
    invoke-virtual {v0, v10, v11, v12}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->tryToSetPile(III)Z

    goto :goto_246

    :cond_241
    if-lez v12, :cond_246

    .line 295
    invoke-virtual {v0, v10, v11, v12}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->tryToSetPile(III)Z

    .line 298
    :cond_246
    :goto_246
    iget-object v1, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, v10, v11}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object v1

    if-eqz v16, :cond_25b

    if-eqz v1, :cond_25b

    .line 299
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Rail;->isPile()Z

    move-result v2

    if-eqz v2, :cond_25b

    .line 300
    iget-object v2, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeRailPile(Linfo/flowersoft/theotown/city/objects/Rail;)V

    .line 303
    :cond_25b
    iget-object v1, v8, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->onBuiltTransitions:Ljava/util/List;

    if-eqz v1, :cond_297

    .line 304
    new-instance v1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    iget-object v2, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 305
    iget-object v2, v8, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/RoadDraft;->onBuiltTransitions:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    iget-object v3, v8, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v4, v3, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 307
    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v22

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v21, v4

    move-object/from16 v19, v8

    .line 305
    invoke-virtual/range {v17 .. v22}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Road;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    .line 308
    invoke-virtual/range {v17 .. v17}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    .line 311
    :cond_297
    iget-object v1, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, v10, v11}, Linfo/flowersoft/theotown/city/Tiles;->hasFence(II)Z

    move-result v1

    if-eqz v1, :cond_2a4

    .line 312
    iget-object v1, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v1, v10, v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->updateFenceOnTile(II)V

    .line 315
    :cond_2a4
    iget-boolean v1, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->events:Z

    if-eqz v1, :cond_2bc

    iget-object v1, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->eventMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v1, :cond_2bc

    const/4 v2, 0x0

    .line 316
    invoke-virtual {v1, v10, v11, v12, v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(IIII)Z

    .line 317
    iget-object v1, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->eventMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    invoke-virtual {v1, v10, v11, v12, v13}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(IIII)Z

    .line 318
    iget-object v1, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->eventMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    const/16 v2, 0xa

    invoke-virtual {v1, v10, v11, v12, v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(IIII)Z

    :cond_2bc
    return-void
.end method

.method public final callRoadRemoveEvent(Linfo/flowersoft/theotown/city/objects/Road;III)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 493
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_a
    if-ltz v2, :cond_23

    .line 494
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 496
    iget-object v3, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget v7, v1, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    const/4 v8, 0x6

    iget-object v9, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->sender:Lvm2/LuaValue;

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->callEventMethod(Linfo/flowersoft/theotown/draft/Draft;IIIILvm2/LuaValue;)V

    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 499
    :cond_23
    iget-object v10, v0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v11, v1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v14, v1, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    const/4 v15, 0x6

    iget-object v1, v0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->sender:Lvm2/LuaValue;

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v16, v1

    invoke-virtual/range {v10 .. v16}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->callEventMethod(Linfo/flowersoft/theotown/draft/Draft;IIIILvm2/LuaValue;)V

    return-void
.end method

.method public canBuildOnTile(IIIII)Z
    .registers 14

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p4, :cond_14

    .line 96
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v2

    if-eqz v2, :cond_14

    return v1

    :cond_14
    if-lez p4, :cond_1f

    .line 97
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/RoadDraft;->hasBridge()Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    :cond_1f
    const/4 v2, -0x2

    if-lt p4, v2, :cond_1f7

    const/16 v2, 0x10

    if-le p4, v2, :cond_28

    goto/16 :goto_1f7

    .line 99
    :cond_28
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v3, v3, Linfo/flowersoft/theotown/draft/RoadDraft;->supportsSlope:Z

    if-nez v3, :cond_35

    return v1

    .line 100
    :cond_35
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v3

    if-nez v3, :cond_5c

    if-nez p4, :cond_5c

    iget v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    .line 101
    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->axis(I)I

    move-result v3

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->inverse(I)I

    move-result v3

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/city/Direction;->cut(II)I

    move-result v3

    if-nez v3, :cond_5b

    iget-object v3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {v3, p2, p3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-eqz v3, :cond_5c

    :cond_5b
    return v1

    .line 102
    :cond_5c
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v3

    if-nez v3, :cond_6d

    if-nez p4, :cond_6d

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getPotentialUpDirs()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_6d

    return v1

    :cond_6d
    if-lez p1, :cond_7d

    if-eqz p5, :cond_7d

    add-int/lit8 v3, p1, -0x1

    .line 103
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getDLevel(I)I

    move-result v3

    neg-int v4, p5

    if-ne v3, v4, :cond_7d

    if-ltz p4, :cond_7d

    return v1

    :cond_7d
    const/4 v3, -0x1

    if-eq p4, v3, :cond_82

    if-nez p4, :cond_95

    :cond_82
    if-lez p5, :cond_95

    .line 104
    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v4

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result v5

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v4

    if-eqz v4, :cond_95

    return v1

    :cond_95
    if-eq p4, v3, :cond_99

    if-nez p4, :cond_a8

    :cond_99
    if-gez p5, :cond_a8

    .line 105
    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result v5

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v4

    if-eqz v4, :cond_a8

    return v1

    :cond_a8
    if-nez p4, :cond_b1

    .line 106
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isRift()Z

    move-result v4

    if-eqz v4, :cond_b1

    return v1

    .line 107
    :cond_b1
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_d3

    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    if-nez v4, :cond_d3

    invoke-virtual {p0, p5}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->getUpDir(I)I

    move-result v4

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result v6

    if-ne v4, v6, :cond_d2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result v4

    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v4

    if-eq v4, v5, :cond_d3

    :cond_d2
    return v1

    .line 108
    :cond_d3
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v4

    if-nez v4, :cond_ec

    if-nez p4, :cond_ec

    iget v4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getPotentialUpDirs()I

    move-result v6

    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->axis(I)I

    move-result v6

    invoke-static {v4, v6}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v4

    if-nez v4, :cond_ec

    return v1

    :cond_ec
    if-ne p4, v3, :cond_105

    if-eqz p5, :cond_105

    .line 109
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v4

    if-nez v4, :cond_105

    invoke-virtual {p0, p5}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->getUpDir(I)I

    move-result v4

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result v6

    invoke-static {v4, v6}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v4

    if-nez v4, :cond_105

    return v1

    .line 112
    :cond_105
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, p2, p3, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    if-eqz v4, :cond_118

    .line 113
    iget-object v6, v4, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v6, v6, Linfo/flowersoft/theotown/draft/RoadDraft;->joinGroup:I

    iget-object v7, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v7, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->joinGroup:I

    if-eq v6, v7, :cond_118

    return v1

    :cond_118
    if-lez p4, :cond_12c

    if-eqz p1, :cond_121

    .line 119
    iget v6, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->length:I

    sub-int/2addr v6, v5

    if-ne p1, v6, :cond_12c

    .line 120
    :cond_121
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->hasVisibleRoad(II)Z

    move-result p1

    if-eqz p1, :cond_12c

    if-nez v4, :cond_12c

    return v1

    .line 125
    :cond_12c
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_14f

    if-gez p4, :cond_13a

    if-ne p4, v3, :cond_14f

    if-eqz p5, :cond_14f

    .line 127
    :cond_13a
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v4

    iget-boolean v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->easyRemove:Z

    if-eqz v4, :cond_14e

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result v4

    if-nez v4, :cond_14e

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchable()Z

    move-result p1

    if-eqz p1, :cond_14f

    :cond_14e
    return v1

    .line 132
    :cond_14f
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object p1

    if-eqz p1, :cond_15f

    const/4 p1, 0x2

    if-eq p4, p1, :cond_15e

    if-ne p4, v5, :cond_15f

    if-eqz p5, :cond_15f

    :cond_15e
    return v1

    :cond_15f
    if-gez p4, :cond_165

    if-ne p4, v3, :cond_18f

    if-eqz p5, :cond_18f

    .line 138
    :cond_165
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object p1

    .line 139
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    if-eqz v4, :cond_186

    .line 142
    iget v6, v4, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    if-gez v6, :cond_17d

    if-ne v6, v3, :cond_186

    iget v6, v4, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v6, :cond_186

    :cond_17d
    iget-object v4, v4, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 144
    invoke-virtual {p0, v4, p1}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->allowedByZone(Linfo/flowersoft/theotown/draft/RoadDraft;Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v4

    if-nez v4, :cond_186

    goto :goto_18f

    .line 148
    :cond_186
    iget-object v4, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {p0, v4, p1}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->allowedByZone(Linfo/flowersoft/theotown/draft/RoadDraft;Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result p1

    if-nez p1, :cond_18f

    return v1

    :cond_18f
    :goto_18f
    if-eqz p5, :cond_1bf

    if-lt p4, v2, :cond_194

    return v1

    :cond_194
    if-ne p4, v3, :cond_1a3

    .line 155
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p1

    if-nez p1, :cond_1a2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result p1

    if-eqz p1, :cond_1a3

    :cond_1a2
    return v1

    .line 156
    :cond_1a3
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    .line 157
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v2, p4, 0x1

    invoke-virtual {v0, p2, p3, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz p1, :cond_1bc

    .line 158
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-virtual {p0, p5}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->getUpDir(I)I

    move-result p5

    if-eq p1, p5, :cond_1bc

    return v1

    :cond_1bc
    if-eqz v0, :cond_1db

    return v1

    .line 161
    :cond_1bf
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 p5, p4, -0x1

    invoke-virtual {p1, p2, p3, p5}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_1ce

    .line 162
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz p1, :cond_1ce

    return v1

    .line 163
    :cond_1ce
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_1db

    .line 164
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz p1, :cond_1db

    return v1

    .line 167
    :cond_1db
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3, v5}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object p1

    if-eqz p1, :cond_1ea

    .line 168
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch()Z

    move-result p1

    if-eqz p1, :cond_1ea

    return v1

    .line 170
    :cond_1ea
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->isBuildableCluster:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz p1, :cond_1f6

    invoke-virtual {p1, p2, p3, p4}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    move-result p1

    if-eqz p1, :cond_1f5

    goto :goto_1f6

    :cond_1f5
    return v1

    :cond_1f6
    :goto_1f6
    return v5

    :cond_1f7
    :goto_1f7
    return v1
.end method

.method public final canSetPile(III)Z
    .registers 7

    .line 541
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 543
    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v0, :cond_f

    return v1

    :cond_f
    move v0, v1

    :goto_10
    if-ge v0, p3, :cond_1e

    .line 546
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    if-eqz v2, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 549
    :cond_1e
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v0

    if-nez v0, :cond_43

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 550
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-nez v0, :cond_43

    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 551
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasOvergroundWire(II)Z

    move-result v0

    if-nez v0, :cond_43

    const/4 v0, 0x2

    if-lt p3, v0, :cond_41

    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 552
    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object p1

    if-nez p1, :cond_43

    :cond_41
    const/4 p1, 0x1

    return p1

    :cond_43
    return v1
.end method

.method public destroyTile(III)V
    .registers 8

    .line 476
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 478
    invoke-virtual {p0, v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->callRoadRemoveEvent(Linfo/flowersoft/theotown/city/objects/Road;III)V

    .line 479
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v2

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/city/RoadList;->remove(Ljava/lang/Object;)Z

    .line 480
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p3, v1}, Linfo/flowersoft/theotown/city/Tiles;->setRoad(IIILinfo/flowersoft/theotown/city/objects/Road;)V

    return-void

    .line 483
    :cond_1b
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v0, p1, p2, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 484
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v3, :cond_3a

    .line 485
    invoke-virtual {p0, v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->callRoadRemoveEvent(Linfo/flowersoft/theotown/city/objects/Road;III)V

    .line 486
    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object p3

    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/city/RoadList;->remove(Ljava/lang/Object;)Z

    .line 487
    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p3, p1, p2, v2, v1}, Linfo/flowersoft/theotown/city/Tiles;->setRoad(IIILinfo/flowersoft/theotown/city/objects/Road;)V

    :cond_3a
    return-void
.end method

.method public endBuild()V
    .registers 3

    .line 465
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->removedRoads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 466
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->removedRoads:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    :cond_13
    return-void
.end method

.method public endDestroy()V
    .registers 1

    .line 0
    return-void
.end method

.method public getDiamondPriceForTile(IIIII)J
    .registers 8

    .line 392
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    .line 395
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->tunnelsAreFree()Z

    move-result p2

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_17

    return-wide v0

    :cond_17
    const/4 p2, 0x0

    if-eqz p1, :cond_23

    if-gez p4, :cond_23

    neg-int p3, p4

    .line 396
    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelDiamondPrice:I

    mul-int/2addr p3, p1

    goto :goto_24

    :cond_23
    move p3, p2

    :goto_24
    if-gez p4, :cond_33

    neg-int p1, p4

    .line 398
    iget-object p4, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget p4, p4, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelDiamondPrice:I

    mul-int/2addr p1, p4

    sub-int/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    :cond_33
    return-wide v0
.end method

.method public getPriceForTile(IIIII)J
    .registers 6

    .line 369
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_15

    .line 370
    iget-object p5, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/draft/RoadDraft;->canReplace(Linfo/flowersoft/theotown/draft/RoadDraft;)Z

    move-result p1

    if-nez p1, :cond_15

    return-wide p2

    :cond_15
    const/4 p1, 0x1

    if-nez p4, :cond_1e

    .line 373
    iget p4, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->landTiles:I

    add-int/2addr p4, p1

    iput p4, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->landTiles:I

    goto :goto_34

    :cond_1e
    if-ne p4, p1, :cond_26

    .line 375
    iget p4, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->bridgeTiles0:I

    add-int/2addr p4, p1

    iput p4, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->bridgeTiles0:I

    goto :goto_34

    :cond_26
    const/4 p5, 0x2

    if-lt p4, p5, :cond_2f

    .line 377
    iget p4, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->bridgeTiles1:I

    add-int/2addr p4, p1

    iput p4, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->bridgeTiles1:I

    goto :goto_34

    .line 379
    :cond_2f
    iget p4, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->tunnelTiles:I

    add-int/2addr p4, p1

    iput p4, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->tunnelTiles:I

    .line 382
    :goto_34
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->tunnelsAreFree()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 383
    iget p1, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->bridgeTiles1:I

    iget p4, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->tunnelTiles:I

    add-int/2addr p1, p4

    iput p1, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->bridgeTiles1:I

    const/4 p1, 0x0

    .line 384
    iput p1, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->tunnelTiles:I

    :cond_4c
    return-wide p2
.end method

.method public getRoadMask(IIIZZ)I
    .registers 13

    add-int/lit8 v1, p1, 0x1

    const/4 v3, 0x4

    move-object v0, p0

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 333
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->isRoadJoinable(IIIIZZ)Z

    move-result p2

    move p3, v2

    add-int/lit8 v2, p3, 0x1

    const/16 v3, 0x8

    move-object v0, p0

    move v1, p1

    .line 334
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->isRoadJoinable(IIIIZZ)Z

    move-result p1

    move p4, v1

    const/4 p5, 0x0

    if-eqz p1, :cond_1d

    const/4 p1, 0x2

    goto :goto_1e

    :cond_1d
    move p1, p5

    :goto_1e
    add-int/2addr p2, p1

    add-int/lit8 v1, p4, -0x1

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p3

    .line 335
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->isRoadJoinable(IIIIZZ)Z

    move-result p1

    if-eqz p1, :cond_2c

    const/4 p1, 0x4

    goto :goto_2d

    :cond_2c
    move p1, p5

    :goto_2d
    add-int/2addr p2, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    move-object v0, p0

    move v1, p4

    .line 336
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->isRoadJoinable(IIIIZZ)Z

    move-result p1

    if-eqz p1, :cond_3b

    const/16 p5, 0x8

    :cond_3b
    add-int/2addr p2, p5

    return p2
.end method

.method public final getUpDir(I)I
    .registers 2

    if-lez p1, :cond_5

    .line 78
    iget p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    return p1

    :cond_5
    if-gez p1, :cond_e

    .line 80
    iget p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->dir:I

    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result p1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public isRoadJoinable(IIIIZZ)Z
    .registers 12

    .line 340
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_81

    .line 341
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v0

    sub-int v0, p4, v0

    .line 342
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_2f

    const/4 v4, -0x2

    if-le v0, v4, :cond_2f

    .line 345
    iget-object v2, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    sub-int/2addr v0, v3

    invoke-virtual {v2, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 346
    iget p1, v2, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eq p1, p3, :cond_2f

    const/4 v2, 0x0

    :cond_2f
    if-eqz v2, :cond_81

    .line 350
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz p1, :cond_3e

    iget-object p2, v2, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget p2, p2, Linfo/flowersoft/theotown/draft/RoadDraft;->joinGroup:I

    iget p1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->joinGroup:I

    if-eq p2, p1, :cond_3e

    return v1

    .line 354
    :cond_3e
    iget-object p1, v2, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean p2, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->autoJoin:Z

    if-eqz p2, :cond_48

    sget-boolean p2, Linfo/flowersoft/theotown/resources/Settings;->roadAutoJoin:Z

    if-nez p2, :cond_4c

    :cond_48
    iget-boolean p1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->devoted:Z

    if-eqz p1, :cond_4e

    :cond_4c
    if-nez p6, :cond_5a

    :cond_4e
    if-eqz p5, :cond_5a

    .line 356
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result p1

    invoke-static {p3, p1}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p1

    if-eqz p1, :cond_81

    :cond_5a
    iget p1, v2, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz p1, :cond_6e

    iget p2, v2, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    add-int/lit8 p5, p2, 0x1

    if-ne p4, p5, :cond_66

    if-eq p1, p3, :cond_6e

    :cond_66
    if-ne p4, p2, :cond_81

    .line 358
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result p2

    if-ne p1, p2, :cond_81

    .line 359
    :cond_6e
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object p1

    if-eqz p1, :cond_80

    .line 360
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result p1

    invoke-static {p3, p1}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p1

    if-eqz p1, :cond_7f

    goto :goto_80

    :cond_7f
    return v1

    :cond_80
    :goto_80
    return v3

    :cond_81
    return v1
.end method

.method public final isSupported(III)Z
    .registers 5

    .line 523
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_29

    .line 524
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->isPile()Z

    move-result p3

    if-nez p3, :cond_29

    .line 525
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result p1

    .line 526
    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result p3

    const/4 v0, 0x2

    if-gt p3, v0, :cond_29

    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->isCorner(I)Z

    move-result p3

    if-nez p3, :cond_27

    invoke-static {p1}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result p1

    if-ne p1, v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x0

    return p1

    :cond_29
    :goto_29
    return p2
.end method

.method public processBuiltTile(IIIII)V
    .registers 6

    if-gez p4, :cond_7

    const/4 p1, -0x1

    if-ne p4, p1, :cond_19

    if-eqz p5, :cond_19

    :cond_7
    :goto_7
    add-int/lit8 p4, p4, 0x1

    const/16 p1, 0x10

    if-gt p4, p1, :cond_19

    .line 416
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 418
    invoke-virtual {p0, p2, p3, p4}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->removePile(III)V

    goto :goto_7

    :cond_19
    return-void
.end method

.method public processNeighborOfBuiltTile(IIIIIIII)V
    .registers 9

    .line 426
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, p2, p3, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_86

    sub-int p2, p6, p2

    sub-int p3, p7, p3

    .line 429
    invoke-static {p2, p3}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result p2

    .line 430
    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget p4, p1, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    invoke-virtual {p3, p6, p7, p4}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p3

    .line 432
    iget p4, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz p4, :cond_28

    if-ne p4, p2, :cond_28

    .line 433
    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget p4, p1, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p3, p6, p7, p4}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p3

    :cond_28
    if-nez p3, :cond_43

    .line 436
    iget p4, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez p4, :cond_43

    .line 437
    iget-object p3, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget p4, p1, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p6, p7, p4}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p3

    if-eqz p3, :cond_43

    .line 438
    iget p4, p3, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result p5

    if-eq p4, p5, :cond_43

    const/4 p3, 0x0

    :cond_43
    if-eqz p3, :cond_86

    .line 442
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result p1

    invoke-static {p2, p1}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result p1

    if-eqz p1, :cond_86

    .line 443
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result p1

    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result p2

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/city/Direction;->union(II)I

    move-result p1

    .line 444
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result p2

    if-eq p1, p2, :cond_86

    .line 445
    invoke-virtual {p3, p1}, Linfo/flowersoft/theotown/city/objects/Road;->alignTo(I)V

    .line 447
    iget-boolean p1, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->events:Z

    if-eqz p1, :cond_86

    .line 448
    iget-object p1, p3, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object p2, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    if-ne p1, p2, :cond_71

    .line 449
    iget-object p1, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->eventMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    goto :goto_7d

    .line 450
    :cond_71
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    const-string p2, "event"

    iget-object p4, p3, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 451
    invoke-virtual {p1, p2, p4}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object p1

    :goto_7d
    if-eqz p1, :cond_86

    .line 454
    iget p2, p3, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    const/16 p3, 0xa

    invoke-virtual {p1, p6, p7, p2, p3}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(IIII)Z

    :cond_86
    return-void
.end method

.method public processNeighborOfDestroyedTile(IIIIIII)Z
    .registers 16

    .line 504
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p4, p5, p6}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    sub-int/2addr p1, p4

    sub-int/2addr p2, p5

    .line 505
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result p1

    const/4 p2, 0x1

    if-eqz v0, :cond_4b

    .line 508
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v1, :cond_2a

    .line 509
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v1

    iget v5, v0, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move v3, p4

    move v4, p5

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->getRoadMask(IIIZZ)I

    move-result p4

    invoke-static {v1, p4}, Linfo/flowersoft/theotown/city/Direction;->cut(II)I

    move-result p4

    invoke-virtual {v0, p4}, Linfo/flowersoft/theotown/city/objects/Road;->alignTo(I)V

    goto :goto_2d

    :cond_2a
    move-object v2, p0

    move v3, p4

    move v4, p5

    :goto_2d
    const/4 p4, 0x0

    if-lez p6, :cond_3d

    .line 513
    invoke-virtual {p0, v3, v4, p6}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->isSupported(III)Z

    move-result p5

    if-nez p5, :cond_3d

    invoke-virtual {p0, v3, v4, p6}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->tryToSetPile(III)Z

    move-result p5

    if-nez p5, :cond_3d

    return p4

    :cond_3d
    if-lez p3, :cond_4a

    .line 516
    iget p3, v0, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-ne p3, p1, :cond_4a

    iget p1, v0, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    sub-int/2addr p1, p2

    if-eq p1, p7, :cond_49

    goto :goto_4a

    :cond_49
    return p4

    :cond_4a
    :goto_4a
    return p2

    :cond_4b
    move-object v2, p0

    return p2
.end method

.method public removePile(III)V
    .registers 6

    .line 556
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 557
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->isPile()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    .line 558
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Road;->setPile(Z)V

    .line 559
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->isSupported(III)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 560
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->remove(III)V

    :cond_1b
    return-void
.end method

.method public setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V
    .registers 4

    .line 63
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 64
    iput-object p2, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->sender:Lvm2/LuaValue;

    if-eqz p1, :cond_29

    .line 66
    iget p2, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->minLevel:I

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setMinLevel(I)V

    .line 67
    iget p2, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->maxLevel:I

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setMaxLevel(I)V

    .line 68
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p2

    const-string v0, "event"

    invoke-virtual {p2, v0, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object p2

    iput-object p2, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->eventMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 69
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p2

    const-string v0, "isBuildable"

    invoke-virtual {p2, v0, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->isBuildableCluster:Linfo/flowersoft/theotown/scripting/MethodCluster;

    return-void

    :cond_29
    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->eventMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 72
    iput-object p1, p0, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->isBuildableCluster:Linfo/flowersoft/theotown/scripting/MethodCluster;

    return-void
.end method

.method public final tryToSetPile(III)Z
    .registers 5

    .line 532
    iget-object v0, p0, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 533
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->canSetPile(III)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    .line 534
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Road;->setPile(Z)V

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method
