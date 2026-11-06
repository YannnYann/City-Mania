###### Class info.flowersoft.theotown.components.traffic.carcontroller.PoliceCarController (info.flowersoft.theotown.components.traffic.carcontroller.PoliceCarController)
.class public Linfo/flowersoft/theotown/components/traffic/carcontroller/PoliceCarController;
.super Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;
.source "PoliceCarController.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V
    .registers 3

    .line 24
    sget v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->POLICE:I

    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;I)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 72
    const-string v0, "PoliceCarController"

    return-object v0
.end method

.method public getSoundID(Linfo/flowersoft/theotown/city/objects/Car;)I
    .registers 2

    .line 35
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

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->POLICE:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    return-object v0
.end method

.method public onWorkDone(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 11

    .line 40
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p4, 0x6

    invoke-virtual {p1, p4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    .line 41
    const-class v0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->getCrimeBuildings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 45
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getDistance()Linfo/flowersoft/theotown/util/Distance;

    move-result-object v3

    div-int/lit8 v4, p2, 0x2

    div-int/lit8 v5, p3, 0x2

    invoke-virtual {v3, v2, v4, v5}, Linfo/flowersoft/theotown/util/Distance;->get(Linfo/flowersoft/theotown/city/objects/Building;II)I

    move-result v3

    if-gt v3, p4, :cond_1e

    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 51
    :cond_3e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_68

    .line 52
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p4

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float p4, p4, v1

    const/4 v1, 0x0

    if-gez p4, :cond_67

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    .line 54
    invoke-virtual {p2, p4}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    .line 55
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->removeCrime(Linfo/flowersoft/theotown/city/objects/Building;)V

    if-ne p4, p3, :cond_67

    return p3

    :cond_67
    return v1

    :cond_68
    return p3
.end method

.method public register(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 3

    .line 29
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->register(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 30
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->flags:I

    return-void
.end method
