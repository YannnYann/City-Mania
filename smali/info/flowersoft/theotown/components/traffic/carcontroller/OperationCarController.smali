###### Class info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController (info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController)
.class public abstract Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;
.super Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;
.source "OperationCarController.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/actionplace/ActionPlaceHandler;


# static fields
.field public static final DISTANCE:Linfo/flowersoft/theotown/util/Distance;


# instance fields
.field public actionIdCounter:I

.field public actionPlace:Linfo/flowersoft/theotown/city/MapArea;

.field public actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

.field public final actionPlaceType:I

.field public buildingSampler:Linfo/flowersoft/theotown/city/BuildingSampler;

.field public canSampleRoad:Z

.field public final carDraftsPerBuilding:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/CarDraft;",
            ">;>;"
        }
    .end annotation
.end field

.field public lastActionDay:J

.field public removeCar:Z

.field public roadSampler:Linfo/flowersoft/theotown/city/RoadSampler;

.field public virtualCars:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Linfo/flowersoft/theotown/util/EuclidianDistance;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/EuclidianDistance;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->DISTANCE:Linfo/flowersoft/theotown/util/Distance;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;I)V
    .registers 5

    .line 70
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->carDraftsPerBuilding:Ljava/util/Map;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->canSampleRoad:Z

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->removeCar:Z

    .line 74
    iput p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionIdCounter:I

    const-wide/16 v0, -0x1

    .line 75
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->lastActionDay:J

    .line 77
    iput p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlaceType:I

    return-void
.end method


# virtual methods
.method public configureSampler(Linfo/flowersoft/theotown/city/BuildingSampler;)V
    .registers 2

    .line 0
    return-void
.end method

.method public driveToNextTarget(Linfo/flowersoft/theotown/city/objects/Car;)Z
    .registers 5

    .line 198
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getStationForCar(Linfo/flowersoft/theotown/city/objects/Car;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 200
    iget v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->sampleTarget(Linfo/flowersoft/theotown/city/objects/Building;II)Linfo/flowersoft/theotown/city/MapArea;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 203
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

    invoke-interface {v1, p1, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;->driveTo(Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/MapArea;)V

    const/4 p1, 0x0

    return p1

    :cond_1b
    const/4 p1, 0x1

    return p1
.end method

.method public foundNoWay(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 10

    .line 213
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    iput-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    .line 214
    iget-boolean v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    if-eqz v2, :cond_30

    if-eqz v0, :cond_30

    .line 215
    iput-boolean v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    .line 216
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    iget v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlaceType:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->unregisterSolver(I)V

    .line 217
    iget-wide v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v4, 0x20

    invoke-static/range {v2 .. v7}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v0

    iput-wide v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    return-void

    :cond_30
    if-eqz v2, :cond_40

    .line 219
    iget-wide v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionIdCounter:I

    int-to-long v6, v0

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v0

    iput-wide v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    :cond_40
    return-void
.end method

.method public foundWay(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 6

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlace:Linfo/flowersoft/theotown/city/MapArea;

    if-eqz v0, :cond_1b

    iget-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    if-nez v0, :cond_1b

    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    iget v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionIdCounter:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    :cond_1b
    return-void
.end method

.method public getBuildingData(Linfo/flowersoft/theotown/city/objects/Car;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 6

    .line 512
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    const/16 v2, 0x20

    const/16 v3, 0xc

    invoke-static {v0, v1, v3, v2}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 513
    iget-wide v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    const/16 p1, 0x2c

    invoke-static {v1, v2, v3, p1}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v1

    long-to-int p1, v1

    add-int/lit8 p1, p1, -0x1

    .line 514
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0, p1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 515
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getCarCountOf(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 3

    .line 234
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getMaxCarCountOf(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public getCarDraft(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/draft/CarDraft;
    .registers 4

    .line 244
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->carDraftsPerBuilding:Ljava/util/Map;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 245
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->carDraftsPerBuilding:Ljava/util/Map;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_2b

    .line 247
    :cond_19
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getCarDrafts(Linfo/flowersoft/theotown/draft/BuildingDraft;)Ljava/util/List;

    move-result-object v0

    .line 248
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->carDraftsPerBuilding:Ljava/util/Map;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    :goto_2b
    if-eqz p1, :cond_45

    .line 251
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_45

    .line 253
    :cond_34
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/CarDraft;

    return-object p1

    :cond_45
    :goto_45
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCarDrafts(Linfo/flowersoft/theotown/draft/BuildingDraft;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/CarDraft;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCarTags:Ljava/util/List;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2a

    .line 259
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 260
    :goto_11
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCarTags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 261
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCarTags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-class v3, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {v0, v2, v3}, Linfo/flowersoft/theotown/resources/Drafts;->collectDraftsWithTag(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_29
    return-object v0

    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxCarCountOf(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 3

    .line 238
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCars:I

    if-gez v0, :cond_d

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result p1

    return p1

    :cond_d
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->serviceCars:I

    return p1
.end method

.method public getRoadLevel()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getSoundID(Linfo/flowersoft/theotown/city/objects/Car;)I
.end method

.method public final getStationForCar(Linfo/flowersoft/theotown/city/objects/Car;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 3

    .line 430
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getBuildingData(Linfo/flowersoft/theotown/city/objects/Car;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 434
    :cond_7
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->sampleFreeStation()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 437
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->setBuildingData(Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/objects/Building;)V

    return-object v0

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStationRadius(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 2

    .line 0
    const/16 p1, 0x20

    return p1
.end method

.method public abstract getStations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end method

.method public getWealthLevel()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hasBusStopTargets()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isValidStation(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public final load(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    .line 92
    :goto_2
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 93
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p2

    .line 94
    const-string v0, "actionId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 95
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result p2

    iput p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionIdCounter:I

    goto :goto_2

    .line 96
    :cond_1b
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_22

    goto :goto_2

    .line 98
    :cond_22
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_2

    :cond_26
    return-void
.end method

.method public loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public notifyAction(Ljava/util/List;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/MapArea;",
            ">;I)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 330
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/MapArea;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlace:Linfo/flowersoft/theotown/city/MapArea;

    .line 331
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->lastActionDay:J

    .line 332
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionIdCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionIdCounter:I

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    new-instance v2, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getCars()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Car;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 337
    :cond_3f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_aa

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_aa

    move v2, p2

    .line 338
    :goto_4c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 339
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/MapArea;

    const/4 v4, -0x1

    const v5, 0x7fffffff

    move v6, p2

    .line 342
    :goto_63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7e

    .line 343
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/city/objects/Car;

    .line 344
    iget v8, v7, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    iget v7, v7, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    invoke-virtual {v3, v8, v7}, Linfo/flowersoft/theotown/city/MapArea;->getParcelDistanceBB(II)I

    move-result v7

    if-ge v7, v5, :cond_7b

    move v4, v6

    move v5, v7

    :cond_7b
    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    .line 351
    :cond_7e
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/Car;

    .line 352
    iget-boolean v5, v4, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    if-nez v5, :cond_8d

    .line 353
    iput-boolean v1, v4, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    .line 354
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->startSound(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 356
    :cond_8d
    iget-wide v6, v4, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    iget v5, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionIdCounter:I

    int-to-long v10, v5

    const/16 v8, 0x20

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v5

    iput-wide v5, v4, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    .line 357
    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    iget v6, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlaceType:I

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->registerSolver(I)V

    .line 358
    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

    invoke-interface {v5, v4, v3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;->driveTo(Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/MapArea;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_aa
    return-void
.end method

.method public notifyNoAction(I)V
    .registers 4

    const-wide/16 v0, -0x1

    .line 365
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->lastActionDay:J

    const/4 p1, 0x0

    .line 366
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlace:Linfo/flowersoft/theotown/city/MapArea;

    .line 368
    new-instance p1, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getCars()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Car;

    .line 369
    iget-boolean v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    .line 370
    iput-boolean v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    .line 371
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->driveToNextTarget(Linfo/flowersoft/theotown/city/objects/Car;)Z

    goto :goto_14

    :cond_2b
    return-void
.end method

.method public onNotSpawn(J)V
    .registers 4

    .line 529
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->virtualCars:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->virtualCars:I

    .line 530
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->onNotSpawn(J)V

    return-void
.end method

.method public onSpawn(Linfo/flowersoft/theotown/city/objects/Car;)Z
    .registers 3

    .line 523
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->virtualCars:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->virtualCars:I

    .line 524
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->onSpawn(Linfo/flowersoft/theotown/city/objects/Car;)Z

    move-result p1

    return p1
.end method

.method public onTarget(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 8

    .line 175
    iget-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 176
    iget-object v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_22

    .line 177
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->onWorkDone(Linfo/flowersoft/theotown/city/objects/Car;III)Z

    move-result p4

    if-eqz p4, :cond_22

    .line 179
    iput-boolean v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    .line 180
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    iget p4, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlaceType:I

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, p4, p2, p3}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->removeActionPlace(III)V

    return v1

    .line 185
    :cond_22
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

    invoke-interface {p2, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;->wait(Linfo/flowersoft/theotown/city/objects/Car;)V

    return v1

    .line 189
    :cond_28
    iget-boolean p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->removeCar:Z

    if-nez p2, :cond_31

    .line 190
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->driveToNextTarget(Linfo/flowersoft/theotown/city/objects/Car;)Z

    move-result p1

    return p1

    .line 192
    :cond_31
    iput-boolean v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->removeCar:Z

    const/4 p1, 0x1

    return p1
.end method

.method public abstract onWorkDone(Linfo/flowersoft/theotown/city/objects/Car;III)Z
.end method

.method public prepare(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 120
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->prepare(Linfo/flowersoft/theotown/city/City;)V

    .line 121
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlaceType:I

    if-ltz v0, :cond_19

    const/4 v0, 0x7

    .line 122
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultTraffic;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getActionPlaceController()Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    .line 123
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlaceType:I

    invoke-virtual {p1, p0, v0}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->registerHandler(Linfo/flowersoft/theotown/components/actionplace/ActionPlaceHandler;I)V

    :cond_19
    return-void
.end method

.method public register(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 3

    .line 165
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->register(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 166
    iget-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    if-eqz v0, :cond_a

    .line 167
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->startSound(Linfo/flowersoft/theotown/city/objects/Car;)V

    :cond_a
    return-void
.end method

.method public sampleBusStopTarget(Linfo/flowersoft/theotown/city/objects/Building;II)Linfo/flowersoft/theotown/city/objects/BusStop;
    .registers 4

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public sampleFreeStation()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 7

    .line 450
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    .line 451
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getStations()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 454
    new-instance v2, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 455
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->isValidStation(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 456
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v3

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getCarCountOf(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    goto :goto_14

    .line 461
    :cond_40
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getCars()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_48
    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Car;

    .line 462
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getBuildingData(Linfo/flowersoft/theotown/city/objects/Car;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 464
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-static {v3, v2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v2

    const/high16 v3, -0x80000000

    .line 465
    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v4

    if-eq v4, v3, :cond_48

    add-int/lit8 v4, v4, -0x1

    if-gtz v4, :cond_77

    const/4 v3, 0x0

    .line 469
    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->remove(II)I

    goto :goto_48

    .line 471
    :cond_77
    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    goto :goto_48

    .line 477
    :cond_7b
    iget v1, v0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    const/4 v2, 0x0

    if-lez v1, :cond_bc

    .line 478
    new-instance v1, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v1, v3}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 479
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 480
    :cond_8b
    :goto_8b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 481
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    iget v3, v3, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    .line 482
    invoke-static {v3}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v4

    .line 483
    invoke-static {v3}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v3

    .line 484
    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v4, v3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v3

    if-eqz v3, :cond_8b

    const/high16 v4, 0x3f800000    # 1.0f

    .line 486
    invoke-virtual {v1, v3, v4}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    goto :goto_8b

    .line 489
    :cond_af
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    return-object v0

    :cond_bc
    return-object v2
.end method

.method public sampleTarget(Linfo/flowersoft/theotown/city/objects/Building;II)Linfo/flowersoft/theotown/city/MapArea;
    .registers 10

    .line 377
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    .line 378
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    .line 379
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getStationRadius(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v2

    .line 381
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->hasBusStopTargets()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 382
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->sampleBusStopTarget(Linfo/flowersoft/theotown/city/objects/Building;II)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 384
    new-instance p2, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {p2}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 385
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result p3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v0

    iget v1, p1, Linfo/flowersoft/theotown/city/objects/BusStop;->level:I

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result p1

    invoke-virtual {v2, v3, p1}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p2, p3, v0, v1}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    return-object p2

    .line 390
    :cond_3e
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->buildingSampler:Linfo/flowersoft/theotown/city/BuildingSampler;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/BuildingSampler;->setX(I)V

    .line 391
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->buildingSampler:Linfo/flowersoft/theotown/city/BuildingSampler;

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/BuildingSampler;->setY(I)V

    .line 392
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->buildingSampler:Linfo/flowersoft/theotown/city/BuildingSampler;

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/BuildingSampler;->setMaxRadius(I)V

    .line 394
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->buildingSampler:Linfo/flowersoft/theotown/city/BuildingSampler;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->configureSampler(Linfo/flowersoft/theotown/city/BuildingSampler;)V

    .line 396
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->buildingSampler:Linfo/flowersoft/theotown/city/BuildingSampler;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/BuildingSampler;->sample()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_6b

    .line 397
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasRoad()Z

    move-result v5

    if-eqz v5, :cond_6a

    sget-object v5, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->DISTANCE:Linfo/flowersoft/theotown/util/Distance;

    invoke-virtual {v5, p1, p2, p3}, Linfo/flowersoft/theotown/util/Distance;->get(Linfo/flowersoft/theotown/city/objects/Building;II)I

    move-result p2

    if-ge p2, v4, :cond_6b

    :cond_6a
    move-object p1, v3

    :cond_6b
    if-eqz p1, :cond_97

    .line 400
    new-instance p2, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {p2}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    const/4 p3, 0x0

    .line 401
    invoke-virtual {p2, p1, p3}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;Z)V

    .line 402
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getRoadLevel()I

    move-result v0

    if-eqz v0, :cond_96

    .line 403
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getRoadLevel()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, p1, v0, p3}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;IZ)V

    :cond_96
    return-object p2

    .line 407
    :cond_97
    iget-boolean p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->canSampleRoad:Z

    if-eqz p1, :cond_d7

    .line 408
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->roadSampler:Linfo/flowersoft/theotown/city/RoadSampler;

    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/city/RoadSampler;->sample(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_d7

    .line 409
    sget-object p2, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->DISTANCE:Linfo/flowersoft/theotown/util/Distance;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result p3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v2

    invoke-virtual {p2, p3, v2, v0, v1}, Linfo/flowersoft/theotown/util/Distance;->get(IIII)I

    move-result p2

    if-lt p2, v4, :cond_d7

    .line 410
    new-instance p2, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {p2}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 411
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result p3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getLevel()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    iget v3, p1, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    invoke-virtual {v2, v3, p1}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p2, p3, v0, v1}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    return-object p2

    :cond_d7
    return-object v3
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const-string v0, "actionId"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionIdCounter:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 110
    const-string v0, "actionDay"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->lastActionDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlace:Linfo/flowersoft/theotown/city/MapArea;

    if-eqz v0, :cond_24

    .line 112
    const-string v0, "actionPlace"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlace:Linfo/flowersoft/theotown/city/MapArea;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/MapArea;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    :cond_24
    return-void
.end method

.method public setBuildingData(Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 15

    .line 498
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    if-eqz p2, :cond_d

    .line 501
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    .line 502
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p2

    goto :goto_f

    :cond_d
    const/4 v2, -0x1

    move p2, v2

    :goto_f
    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    const/16 v2, 0xc

    const/16 v3, 0x20

    .line 505
    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v6

    add-int/lit8 p2, p2, 0x1

    int-to-long v10, p2

    const/16 v8, 0xc

    const/16 v9, 0x2c

    .line 506
    invoke-static/range {v6 .. v11}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v0

    .line 508
    iput-wide v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    return-void
.end method

.method public setCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 82
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->setCity(Linfo/flowersoft/theotown/city/City;)V

    .line 84
    new-instance v0, Linfo/flowersoft/theotown/city/BuildingSampler;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, v1}, Linfo/flowersoft/theotown/city/BuildingSampler;-><init>(Linfo/flowersoft/theotown/city/City;III)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->buildingSampler:Linfo/flowersoft/theotown/city/BuildingSampler;

    .line 85
    new-instance v0, Linfo/flowersoft/theotown/city/RoadSampler;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/city/RoadSampler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->roadSampler:Linfo/flowersoft/theotown/city/RoadSampler;

    return-void
.end method

.method public final startSound(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 7

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz v0, :cond_24

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 129
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 130
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getSoundID(Linfo/flowersoft/theotown/city/objects/Car;)I

    move-result v1

    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController$1;

    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, p0, v4, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController$1;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Car;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playLoop(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    :cond_24
    return-void
.end method

.method public unregister(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 3

    .line 321
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->unregister(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 322
    iget-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    .line 324
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlaceType:I

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->unregisterSolver(I)V

    :cond_11
    return-void
.end method

.method public update()V
    .registers 26

    move-object/from16 v3, p0

    .line 268
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getStations()Ljava/util/List;

    move-result-object v0

    const/4 v9, 0x0

    if-eqz v0, :cond_31

    .line 272
    new-instance v1, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v9

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 273
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->isValidStation(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 274
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getCarCountOf(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_13

    :cond_31
    move v1, v9

    .line 279
    :cond_32
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getCarCount()I

    move-result v0

    const/4 v10, 0x1

    if-le v1, v0, :cond_cf

    iget v0, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->virtualCars:I

    if-gtz v0, :cond_cf

    .line 280
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->sampleFreeStation()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_d7

    const/4 v1, -0x2

    .line 283
    invoke-virtual {v3, v0, v1, v1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->sampleTarget(Linfo/flowersoft/theotown/city/objects/Building;II)Linfo/flowersoft/theotown/city/MapArea;

    move-result-object v1

    if-nez v1, :cond_4e

    .line 284
    iget-object v2, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlace:Linfo/flowersoft/theotown/city/MapArea;

    if-eqz v2, :cond_d7

    :cond_4e
    move-object v2, v1

    .line 285
    new-instance v1, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v1}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 286
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getRoadLevel()I

    move-result v4

    iget-object v5, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v6

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v0, v4, v9}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;IZ)V

    .line 288
    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getCarDraft(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/draft/CarDraft;

    move-result-object v4

    if-eqz v4, :cond_d7

    .line 290
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v6, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v6, v6

    iget v7, v4, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 293
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v6

    add-int/2addr v6, v10

    int-to-long v6, v6

    const-wide/16 v11, 0x0

    const/16 v13, 0xc

    const/16 v14, 0x20

    move-wide v15, v6

    invoke-static/range {v11 .. v16}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v15

    .line 294
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    add-int/2addr v0, v10

    int-to-long v6, v0

    const/16 v17, 0xc

    const/16 v18, 0x2c

    move-wide/from16 v19, v6

    invoke-static/range {v15 .. v20}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v19

    .line 296
    iget-object v0, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlace:Linfo/flowersoft/theotown/city/MapArea;

    if-eqz v0, :cond_bc

    .line 297
    iget v0, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionIdCounter:I

    int-to-long v6, v0

    const/16 v21, 0x20

    const/16 v22, 0x0

    move-wide/from16 v23, v6

    invoke-static/range {v19 .. v24}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v19

    .line 298
    iget-object v0, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlace:Linfo/flowersoft/theotown/city/MapArea;

    .line 299
    iget-object v2, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    iget v6, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->actionPlaceType:I

    invoke-virtual {v2, v6}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->registerSolver(I)V

    move-object v2, v0

    :cond_bc
    move-wide/from16 v6, v19

    .line 302
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getWealthLevel()I

    move-result v8

    .line 303
    iget-object v0, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

    invoke-interface/range {v0 .. v8}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;->spawn(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;Linfo/flowersoft/theotown/draft/CarDraft;IJI)V

    .line 304
    iget v0, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->virtualCars:I

    add-int/2addr v0, v10

    iput v0, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->virtualCars:I

    .line 306
    iput-boolean v9, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->removeCar:Z

    return-void

    .line 310
    :cond_cf
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getCarCount()I

    move-result v0

    if-ge v1, v0, :cond_d7

    .line 311
    iput-boolean v10, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->removeCar:Z

    :cond_d7
    return-void
.end method

###### Class info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController.AnonymousClass1 (info.flowersoft.theotown.components.traffic.carcontroller.OperationCarController$1)
.class Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController$1;
.super Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;
.source "OperationCarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->startSound(Linfo/flowersoft/theotown/city/objects/Car;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;

.field public final synthetic val$car:Linfo/flowersoft/theotown/city/objects/Car;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 130
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController$1;->this$0:Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController$1;->val$car:Linfo/flowersoft/theotown/city/objects/Car;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public getTileX()F
    .registers 3

    .line 133
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController$1;->val$car:Linfo/flowersoft/theotown/city/objects/Car;

    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getTileY()F
    .registers 3

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController$1;->val$car:Linfo/flowersoft/theotown/city/objects/Car;

    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getVolume()F
    .registers 2

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public isValid()Z
    .registers 3

    .line 148
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController$1;->val$car:Linfo/flowersoft/theotown/city/objects/Car;

    iget-boolean v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-nez v1, :cond_c

    iget-boolean v0, v0, Linfo/flowersoft/theotown/city/objects/Car;->isImportant:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method
