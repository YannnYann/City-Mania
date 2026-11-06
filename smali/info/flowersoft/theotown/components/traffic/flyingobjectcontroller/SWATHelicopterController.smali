###### Class info.flowersoft.theotown.components.traffic.flyingobjectcontroller.SWATHelicopterController (info.flowersoft.theotown.components.traffic.flyingobjectcontroller.SWATHelicopterController)
.class public Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SWATHelicopterController;
.super Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;
.source "SWATHelicopterController.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V
    .registers 4

    .line 21
    sget v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->SWAT:I

    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;I)V

    return-void
.end method


# virtual methods
.method public getBuildings()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v2, "$police02"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    return-object v0
.end method

.method public getDraft(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/draft/FlyingObjectDraft;
    .registers 3

    .line 26
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v0, "$heliswat00"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 71
    const-string v0, "swat helicopter"

    return-object v0
.end method

.method public onActionPlace(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Z
    .registers 11

    .line 36
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualX()I

    move-result v0

    .line 37
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualY()I

    move-result p1

    add-int/lit8 v1, p1, -0x6

    const/4 v2, 0x0

    :goto_b
    add-int/lit8 v3, p1, 0x6

    if-gt v1, v3, :cond_61

    add-int/lit8 v3, v0, -0x6

    :goto_11
    add-int/lit8 v4, v0, 0x6

    if-gt v3, v4, :cond_5e

    sub-int v4, v3, v0

    sub-int v5, v1, p1

    mul-int/2addr v4, v4

    mul-int/2addr v5, v5

    add-int/2addr v4, v5

    const/16 v5, 0x24

    if-gt v4, v5, :cond_5b

    .line 45
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v3, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 46
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v3, v1}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_38

    .line 47
    iget-object v6, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v3, v1}, Linfo/flowersoft/theotown/city/Tiles;->getBottomRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v6

    goto :goto_39

    :cond_38
    move-object v6, v5

    :goto_39
    if-eqz v4, :cond_5b

    if-eqz v6, :cond_5b

    .line 50
    iget v6, v6, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    :goto_3f
    iget v7, v4, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-gt v6, v7, :cond_5b

    .line 51
    iget-object v7, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v3, v1, v6}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v7

    if-eqz v7, :cond_58

    .line 52
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Road;->getOccupationRemoveFlags()I

    move-result v8

    and-int/lit8 v8, v8, 0x7

    if-eqz v8, :cond_58

    .line 53
    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/city/objects/Road;->setOccupation(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    add-int/lit8 v2, v2, 0x1

    :cond_58
    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_61
    if-lez v2, :cond_72

    .line 62
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result p1

    if-eqz p1, :cond_72

    .line 63
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v0, "swat_send"

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    :cond_72
    const/4 p1, 0x1

    return p1
.end method
