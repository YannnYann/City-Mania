###### Class info.flowersoft.theotown.components.traffic.carcontroller.HearseCarController (info.flowersoft.theotown.components.traffic.carcontroller.HearseCarController)
.class public Linfo/flowersoft/theotown/components/traffic/carcontroller/HearseCarController;
.super Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;
.source "HearseCarController.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V
    .registers 3

    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;I)V

    return-void
.end method


# virtual methods
.method public getMaxCarCountOf(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 3

    .line 40
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCars:I

    if-gez v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCars:I

    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 45
    const-string v0, "HearseCarController"

    return-object v0
.end method

.method public getSoundID(Linfo/flowersoft/theotown/city/objects/Car;)I
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getStations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->BODY_DISPOSAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfBaseType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    return-object v0
.end method

.method public onWorkDone(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 5

    .line 0
    const/4 p1, 0x0

    return p1
.end method
