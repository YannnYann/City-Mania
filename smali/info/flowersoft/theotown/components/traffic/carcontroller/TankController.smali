###### Class info.flowersoft.theotown.components.traffic.carcontroller.TankController (info.flowersoft.theotown.components.traffic.carcontroller.TankController)
.class public Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;
.super Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;
.source "TankController.java"


# instance fields
.field public patrol:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V
    .registers 3

    const/4 v0, -0x1

    .line 21
    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;I)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;->patrol:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 70
    const-string v0, "TankController"

    return-object v0
.end method

.method public getSoundID(Linfo/flowersoft/theotown/city/objects/Car;)I
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getStationRadius(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 2

    .line 65
    iget-boolean p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;->patrol:Z

    if-eqz p1, :cond_7

    const/16 p1, 0x40

    return p1

    :cond_7
    const/16 p1, 0x10

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

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->MILITARY:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    return-object v0
.end method

.method public loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "on patrol"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    const/4 p1, 0x0

    return p1

    .line 34
    :cond_d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result p1

    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;->patrol:Z

    const/4 p1, 0x1

    return p1
.end method

.method public onPatrol()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;->patrol:Z

    return v0
.end method

.method public onWorkDone(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 5

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public register(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 3

    .line 26
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->register(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 27
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->flags:I

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 45
    const-string v0, "on patrol"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;->patrol:Z

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setPatrol(Z)V
    .registers 2

    .line 78
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/TankController;->patrol:Z

    return-void
.end method
