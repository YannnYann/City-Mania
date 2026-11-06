###### Class info.flowersoft.theotown.components.traffic.flyingobjectcontroller.GenericHelicopterController (info.flowersoft.theotown.components.traffic.flyingobjectcontroller.GenericHelicopterController)
.class public Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/GenericHelicopterController;
.super Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;
.source "GenericHelicopterController.java"


# instance fields
.field public buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public buildings:Linfo/flowersoft/theotown/util/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/SortedList<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public helicopterDraft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/BuildingDraft;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V
    .registers 5

    const/4 v0, -0x1

    .line 25
    invoke-direct {p0, p2, p3, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;I)V

    .line 27
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/GenericHelicopterController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 28
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p2

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p2

    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/GenericHelicopterController;->buildings:Linfo/flowersoft/theotown/util/SortedList;

    .line 30
    sget-object p2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->helicopterSpawner:Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;->id:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/GenericHelicopterController;->helicopterDraft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    return-void
.end method


# virtual methods
.method public finishedFlightCommand(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 2

    .line 56
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->finishedFlightCommand(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    .line 58
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/GenericHelicopterController;->setTarget(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    return-void
.end method

.method public getBuildings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/GenericHelicopterController;->buildings:Linfo/flowersoft/theotown/util/SortedList;

    return-object v0
.end method

.method public getDraft(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/draft/FlyingObjectDraft;
    .registers 2

    .line 46
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/GenericHelicopterController;->helicopterDraft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    return-object p1
.end method

.method public getInnerX(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 2

    .line 81
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/GenericHelicopterController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->helicopterSpawner:Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;->x:I

    return p1
.end method

.method public getInnerY(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 2

    .line 86
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/GenericHelicopterController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->helicopterSpawner:Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;->y:I

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generic helicopter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/GenericHelicopterController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionPlace(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public onSpawnedAfterSetup(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 2

    .line 35
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->onSpawned(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    .line 36
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/GenericHelicopterController;->setTarget(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    return-void
.end method

.method public final setTarget(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 10

    .line 62
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->getBuildingData(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 64
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_62

    .line 65
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/GenericHelicopterController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->helicopterSpawner:Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft$HelicopterSpawnerDraft;->radius:I

    .line 66
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 67
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 68
    iget-object v6, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v7

    add-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 69
    iget-object v7, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    .line 70
    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v3

    sub-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x1

    .line 71
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v5

    .line 72
    invoke-virtual {p0, p1, v2, v0, v4}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->flyTo(Linfo/flowersoft/theotown/city/objects/FlyingObject;IIZ)V

    return-void

    .line 74
    :cond_62
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->flyToBase(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    :cond_65
    return-void
.end method
