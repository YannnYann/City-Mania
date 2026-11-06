###### Class info.flowersoft.theotown.components.traffic.flyingobjectcontroller.PoliceHelicopterController (info.flowersoft.theotown.components.traffic.flyingobjectcontroller.PoliceHelicopterController)
.class public Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/PoliceHelicopterController;
.super Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;
.source "PoliceHelicopterController.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V
    .registers 4

    .line 20
    sget v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->POLICE:I

    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;I)V

    return-void
.end method


# virtual methods
.method public getBuildings()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    const-string v1, "policehelicopter"

    const-class v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 32
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v3

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    :cond_2b
    return-object v0
.end method

.method public getDraft(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/draft/FlyingObjectDraft;
    .registers 3

    .line 25
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v0, "$helipolice00"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 44
    const-string v0, "police helicopter"

    return-object v0
.end method

.method public onActionPlace(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method
