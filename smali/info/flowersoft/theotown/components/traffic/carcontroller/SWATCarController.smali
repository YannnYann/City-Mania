###### Class info.flowersoft.theotown.components.traffic.carcontroller.SWATCarController (info.flowersoft.theotown.components.traffic.carcontroller.SWATCarController)
.class public Linfo/flowersoft/theotown/components/traffic/carcontroller/SWATCarController;
.super Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;
.source "SWATCarController.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V
    .registers 3

    .line 21
    sget v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->SWAT:I

    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;I)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 47
    const-string v0, "SWATCarController"

    return-object v0
.end method

.method public getSoundID(Linfo/flowersoft/theotown/city/objects/Car;)I
    .registers 2

    .line 32
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CAR_POLICE:I

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

    .line 42
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->SWAT:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    return-object v0
.end method

.method public onWorkDone(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 5

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public register(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 3

    .line 26
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->register(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 27
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->flags:I

    return-void
.end method
