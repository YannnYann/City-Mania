###### Class info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FireBrigadeHelicopterController (info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FireBrigadeHelicopterController)
.class public Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FireBrigadeHelicopterController;
.super Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;
.source "FireBrigadeHelicopterController.java"


# instance fields
.field public buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final buildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public neededUpgrade:Linfo/flowersoft/theotown/draft/UpgradeDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V
    .registers 4

    .line 34
    sget v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->FIRE:I

    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;I)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FireBrigadeHelicopterController;->buildings:Ljava/util/List;

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

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FireBrigadeHelicopterController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-nez v0, :cond_1c

    .line 45
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$firedepartment02"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FireBrigadeHelicopterController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 46
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$firedepartment02_heli00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FireBrigadeHelicopterController;->neededUpgrade:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 48
    :cond_1c
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FireBrigadeHelicopterController;->buildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FireBrigadeHelicopterController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 52
    new-instance v1, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    .line 53
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FireBrigadeHelicopterController;->neededUpgrade:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FireBrigadeHelicopterController;->buildings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 57
    :cond_52
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FireBrigadeHelicopterController;->buildings:Ljava/util/List;

    return-object v0
.end method

.method public getDraft(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/draft/FlyingObjectDraft;
    .registers 3

    .line 39
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v0, "$helifirefighter00"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 97
    const-string v0, "fire brigade helicopter"

    return-object v0
.end method

.method public onActionPlace(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Z
    .registers 9

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    .line 63
    const-class v2, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    .line 65
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualX()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualY()I

    move-result p1

    invoke-virtual {v0, v2, p1, v1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->getBurningThingsInRange(III)Lio/blueflower/stapel2d/util/IntList;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_64

    .line 68
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    const/4 v4, 0x0

    if-gez v3, :cond_63

    .line 69
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    .line 70
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 71
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    .line 72
    invoke-static {p1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v1

    .line 73
    invoke-static {p1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result p1

    .line 75
    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v1, p1}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v5

    .line 76
    iget-object v6, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual {v6, v1, p1}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object p1

    if-eqz v5, :cond_5b

    .line 79
    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->removeFire(Linfo/flowersoft/theotown/city/objects/Building;)V

    :cond_5b
    if-eqz p1, :cond_60

    .line 83
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->removeFire(Linfo/flowersoft/theotown/city/objects/Tree;)V

    :cond_60
    if-gt v3, v2, :cond_63

    return v2

    :cond_63
    return v4

    :cond_64
    return v2
.end method
