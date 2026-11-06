###### Class info.flowersoft.theotown.components.traffic.carcontroller.MedicCarController (info.flowersoft.theotown.components.traffic.carcontroller.MedicCarController)
.class public Linfo/flowersoft/theotown/components/traffic/carcontroller/MedicCarController;
.super Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;
.source "MedicCarController.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V
    .registers 3

    .line 20
    sget v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->MEDIC:I

    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;I)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 65
    const-string v0, "MedicCarController"

    return-object v0
.end method

.method public getSoundID(Linfo/flowersoft/theotown/city/objects/Car;)I
    .registers 2

    .line 25
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CAR_MEDIC:I

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

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->MEDIC:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    return-object v0
.end method

.method public onWorkDone(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 12

    .line 30
    div-int/lit8 p2, p2, 0x2

    .line 31
    div-int/lit8 p3, p3, 0x2

    .line 32
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 33
    new-instance p4, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {p4, v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    const/4 v0, -0x5

    move v1, v0

    :goto_12
    const/4 v2, 0x5

    if-gt v1, v2, :cond_4d

    move v3, v0

    :goto_16
    if-gt v3, v2, :cond_4a

    .line 37
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    add-int v5, p2, v1

    add-int v6, p3, v3

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 38
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v4

    if-eqz v4, :cond_47

    .line 39
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->isIll()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    .line 40
    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    mul-int v5, v1, v1

    mul-int v6, v3, v3

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v5

    .line 41
    invoke-virtual {p4, v4, v6}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 47
    :cond_4d
    invoke-virtual {p4}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 48
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    cmpg-float p1, p1, p2

    const/4 p2, 0x0

    if-gez p1, :cond_69

    .line 49
    invoke-virtual {p4}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    .line 50
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Building;->setIll(Z)V

    :cond_69
    return p2

    :cond_6a
    const/4 p1, 0x1

    return p1
.end method
