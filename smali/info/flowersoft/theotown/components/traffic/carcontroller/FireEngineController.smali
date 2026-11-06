###### Class info.flowersoft.theotown.components.traffic.carcontroller.FireEngineController (info.flowersoft.theotown.components.traffic.carcontroller.FireEngineController)
.class public Linfo/flowersoft/theotown/components/traffic/carcontroller/FireEngineController;
.super Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;
.source "FireEngineController.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V
    .registers 3

    .line 25
    sget v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->FIRE:I

    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;I)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 77
    const-string v0, "FireEngineController"

    return-object v0
.end method

.method public getSoundID(Linfo/flowersoft/theotown/city/objects/Car;)I
    .registers 2

    .line 30
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CAR_FIRE:I

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

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->FIRE_BRIGADE:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    return-object v0
.end method

.method public onWorkDone(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 9

    .line 35
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p4, 0x6

    invoke-virtual {p1, p4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    .line 36
    const-class v0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    .line 39
    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->getBurningThingsInRange(III)Lio/blueflower/stapel2d/util/IntList;

    move-result-object p2

    .line 41
    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_68

    .line 42
    sget-object p3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v0, "FireEngineController"

    const-string v1, "Attempt"

    invoke-interface {p3, v0, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object p3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_67

    .line 44
    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    .line 45
    invoke-virtual {p3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    .line 46
    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p2

    .line 47
    invoke-static {p2}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result p3

    .line 48
    invoke-static {p2}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result p2

    .line 50
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p3, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    .line 51
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, p3, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object p2

    if-eqz v2, :cond_5f

    .line 54
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->removeFire(Linfo/flowersoft/theotown/city/objects/Building;)V

    :cond_5f
    if-eqz p2, :cond_64

    .line 58
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->removeFire(Linfo/flowersoft/theotown/city/objects/Tree;)V

    :cond_64
    if-gt v0, p4, :cond_67

    return p4

    :cond_67
    return v1

    :cond_68
    return p4
.end method
