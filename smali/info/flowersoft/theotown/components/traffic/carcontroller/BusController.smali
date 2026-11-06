###### Class info.flowersoft.theotown.components.traffic.carcontroller.BusController (info.flowersoft.theotown.components.traffic.carcontroller.BusController)
.class public Linfo/flowersoft/theotown/components/traffic/carcontroller/BusController;
.super Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;
.source "BusController.java"


# instance fields
.field public defaultIdleGame:Linfo/flowersoft/theotown/components/DefaultIdleGame;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    return-void
.end method


# virtual methods
.method public final getCarGame(Linfo/flowersoft/theotown/city/objects/Car;)I
    .registers 4

    .line 153
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    const/16 p1, 0x10

    invoke-static {v0, v1, p1, p1}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public final getCarStage(Linfo/flowersoft/theotown/city/objects/Car;)I
    .registers 5

    .line 157
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    const/16 p1, 0x10

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public final getCarTarget(Linfo/flowersoft/theotown/city/objects/Car;)I
    .registers 5

    .line 161
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    const/16 p1, 0x10

    const/16 v2, 0x20

    invoke-static {v0, v1, p1, v2}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 149
    const-string v0, "BusController"

    return-object v0
.end method

.method public onTarget(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 13

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    const/4 v1, 0x2

    div-int/2addr p2, v1

    div-int/2addr p3, v1

    invoke-virtual {v0, p2, p3, p4}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_cb

    .line 38
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object p2

    const/4 p4, 0x0

    if-eqz p2, :cond_37

    .line 40
    iget-object v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v0

    if-le v0, v1, :cond_25

    .line 41
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

    invoke-interface {p2, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;->wait(Linfo/flowersoft/theotown/city/objects/Car;)V

    return p4

    .line 44
    :cond_25
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getDate()Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Linfo/flowersoft/theotown/city/objects/BusStop;->setLastVisit(J)V

    .line 45
    iget-object v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/CarDraft;->capacity:I

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/objects/BusStop;->removeWaiters(I)V

    .line 51
    :cond_37
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/BusController;->defaultIdleGame:Linfo/flowersoft/theotown/components/DefaultIdleGame;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/BusController;->getCarGame(Linfo/flowersoft/theotown/city/objects/Car;)I

    move-result v0

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->getGame(I)Linfo/flowersoft/theotown/minigame/IdleGame;

    move-result-object p2

    .line 52
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/BusController;->getCarStage(Linfo/flowersoft/theotown/city/objects/Car;)I

    move-result v0

    .line 53
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/BusController;->getCarTarget(Linfo/flowersoft/theotown/city/objects/Car;)I

    move-result v1

    if-eqz p2, :cond_cb

    .line 56
    :try_start_4b
    instance-of v2, p2, Linfo/flowersoft/theotown/minigame/BusIdleGame;

    if-eqz v2, :cond_cb

    .line 58
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/minigame/IdleGame;->propertiesFulfilled(I)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 59
    invoke-virtual {p2}, Linfo/flowersoft/theotown/minigame/IdleGame;->isActive()Z

    move-result v2

    if-eqz v2, :cond_cb

    move-object v2, p2

    check-cast v2, Linfo/flowersoft/theotown/minigame/BusIdleGame;

    .line 60
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathLength(I)I

    move-result v2

    if-le v1, v2, :cond_65

    goto :goto_cb

    .line 63
    :cond_65
    check-cast p2, Linfo/flowersoft/theotown/minigame/BusIdleGame;

    add-int/2addr v1, p3

    .line 65
    iget-wide v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    const/16 v5, 0x20

    int-to-long v6, v1

    const/16 v4, 0x10

    invoke-static/range {v2 .. v7}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v2

    iput-wide v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    .line 66
    new-instance v2, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v2}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 67
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathLength(I)I

    move-result v3

    if-lt v1, v3, :cond_9a

    .line 68
    invoke-virtual {p2}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p2

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v0

    invoke-virtual {v2, p2, v0, p4}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;IZ)V

    goto :goto_c5

    .line 71
    :cond_9a
    invoke-virtual {p2, v0, v1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathX(II)I

    move-result v3

    .line 72
    invoke-virtual {p2, v0, v1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathY(II)I

    move-result v4

    .line 73
    invoke-virtual {p2, v0, v1}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathLevel(II)I

    move-result p2

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_af

    return p3

    .line 75
    :cond_af
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, v3, v4, p2}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_cb

    .line 76
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v0

    if-nez v0, :cond_c2

    goto :goto_cb

    .line 77
    :cond_c2
    invoke-virtual {v2, v3, v4, p2}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    .line 79
    :goto_c5
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

    invoke-interface {p2, p1, v2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;->driveTo(Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/MapArea;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_ca} :catch_cb

    return p4

    :catch_cb
    :cond_cb
    :goto_cb
    return p3
.end method

.method public prepare(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 30
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->prepare(Linfo/flowersoft/theotown/city/City;)V

    const/16 v0, 0x14

    .line 31
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultIdleGame;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/BusController;->defaultIdleGame:Linfo/flowersoft/theotown/components/DefaultIdleGame;

    return-void
.end method

.method public update()V
    .registers 25

    move-object/from16 v3, p0

    .line 90
    invoke-static {}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->isActive()Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_d9

    .line 92
    :cond_a
    new-instance v0, Linfo/flowersoft/theotown/util/SafeListAccessor;

    iget-object v1, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/BusController;->defaultIdleGame:Linfo/flowersoft/theotown/components/DefaultIdleGame;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->getGames()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    .line 93
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_19
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/minigame/IdleGame;

    .line 94
    instance-of v1, v0, Linfo/flowersoft/theotown/minigame/BusIdleGame;

    if-eqz v1, :cond_d5

    invoke-virtual {v0}, Linfo/flowersoft/theotown/minigame/IdleGame;->isActive()Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 95
    move-object v10, v0

    check-cast v10, Linfo/flowersoft/theotown/minigame/BusIdleGame;

    .line 96
    invoke-virtual {v10}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v11

    if-eqz v11, :cond_d5

    const/4 v12, 0x0

    move v13, v12

    .line 99
    :goto_3a
    invoke-virtual {v10}, Linfo/flowersoft/theotown/minigame/IdleGame;->countStages()I

    move-result v0

    if-ge v13, v0, :cond_d5

    .line 100
    invoke-virtual {v10, v13}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getBusCount(I)I

    move-result v0

    .line 101
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getCars()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Car;

    .line 102
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/BusController;->getCarGame(Linfo/flowersoft/theotown/city/objects/Car;)I

    move-result v4

    .line 103
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/BusController;->getCarStage(Linfo/flowersoft/theotown/city/objects/Car;)I

    move-result v5

    .line 104
    invoke-virtual {v10}, Linfo/flowersoft/theotown/minigame/IdleGame;->getId()I

    move-result v6

    if-ne v4, v6, :cond_4c

    if-ne v13, v5, :cond_4c

    add-int/lit8 v0, v0, -0x1

    .line 107
    invoke-virtual {v10, v13}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getSpeed(I)F

    move-result v4

    iput v4, v2, Linfo/flowersoft/theotown/city/objects/Car;->speed:F

    if-nez v0, :cond_4c

    :cond_72
    if-lez v0, :cond_cf

    .line 113
    new-instance v1, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v1}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 114
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result v0

    invoke-virtual {v1, v11, v0, v12}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;IZ)V

    .line 115
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v11, v0, v12}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;IZ)V

    .line 117
    new-instance v2, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v2}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 118
    invoke-virtual {v10, v13, v12}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathX(II)I

    move-result v0

    invoke-virtual {v10, v13, v12}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathY(II)I

    move-result v4

    invoke-virtual {v10, v13, v12}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getPathLevel(II)I

    move-result v5

    invoke-virtual {v2, v0, v4, v5}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    .line 121
    invoke-virtual {v10}, Linfo/flowersoft/theotown/minigame/IdleGame;->getId()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v14, 0x0

    const/16 v16, 0x10

    const/16 v17, 0x10

    move-wide/from16 v18, v4

    invoke-static/range {v14 .. v19}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v18

    const/16 v21, 0x0

    int-to-long v4, v13

    const/16 v20, 0x10

    move-wide/from16 v22, v4

    .line 122
    invoke-static/range {v18 .. v23}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v6

    .line 124
    invoke-virtual {v10, v13}, Linfo/flowersoft/theotown/minigame/BusIdleGame;->getStageCar(I)Linfo/flowersoft/theotown/draft/CarDraft;

    move-result-object v4

    .line 125
    iget v0, v4, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerColor:I

    mul-int/2addr v0, v13

    iget v5, v4, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v0, v5

    iget-object v8, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v8, v8

    div-int/2addr v8, v5

    rem-int v5, v0, v8

    .line 127
    iget-object v0, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;->spawn(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;Linfo/flowersoft/theotown/draft/CarDraft;IJI)V

    :cond_cf
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p0

    goto/16 :goto_3a

    :cond_d5
    move-object/from16 v3, p0

    goto/16 :goto_19

    :cond_d9
    :goto_d9
    return-void
.end method
