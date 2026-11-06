###### Class info.flowersoft.theotown.components.traffic.carcontroller.DefaultCarController (info.flowersoft.theotown.components.traffic.carcontroller.DefaultCarController)
.class public final Linfo/flowersoft/theotown/components/traffic/carcontroller/DefaultCarController;
.super Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;
.source "DefaultCarController.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/traffic/carcontroller/BuildingCarSpawner;


# instance fields
.field public transportation:Linfo/flowersoft/theotown/components/DefaultTransportation;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->trackCars:Z

    return-void
.end method


# virtual methods
.method public foundWay(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 36
    invoke-super/range {p0 .. p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->foundWay(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 38
    iget-wide v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    const/4 v4, 0x0

    const/16 v5, 0xc

    .line 39
    invoke-static {v2, v3, v5, v4}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v6

    long-to-int v13, v6

    .line 40
    invoke-static {v2, v3, v5, v5}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v6

    long-to-int v14, v6

    const/16 v4, 0x18

    .line 41
    invoke-static {v2, v3, v5, v4}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v6

    long-to-int v15, v6

    const/16 v4, 0x24

    .line 42
    invoke-static {v2, v3, v5, v4}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v4

    long-to-int v4, v4

    .line 43
    iget-object v5, v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v13, v14}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v11

    .line 44
    iget-object v5, v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v15, v4}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v12

    const/16 v5, 0x3f

    const/4 v6, 0x1

    .line 45
    invoke-static {v2, v3, v6, v5}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-nez v2, :cond_5c

    if-eqz v11, :cond_5c

    if-eqz v12, :cond_5c

    .line 48
    iget-object v8, v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/DefaultCarController;->transportation:Linfo/flowersoft/theotown/components/DefaultTransportation;

    iget-object v9, v1, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget v10, v1, Linfo/flowersoft/theotown/city/objects/Car;->frame:I

    new-instance v2, Linfo/flowersoft/theotown/city/objects/Way;

    iget-object v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/city/objects/Way;-><init>(Linfo/flowersoft/theotown/city/objects/Way;)V

    iget v3, v1, Linfo/flowersoft/theotown/city/objects/Car;->wealthLevel:I

    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v16, v4

    invoke-virtual/range {v8 .. v18}, Linfo/flowersoft/theotown/components/DefaultTransportation;->addFoundWay(Linfo/flowersoft/theotown/draft/CarDraft;ILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;IIIILinfo/flowersoft/theotown/city/objects/Way;I)V

    move/from16 v2, v16

    goto :goto_5d

    :cond_5c
    move v2, v4

    .line 50
    :goto_5d
    iget-object v3, v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/DefaultCarController;->transportation:Linfo/flowersoft/theotown/components/DefaultTransportation;

    iget-object v4, v1, Linfo/flowersoft/theotown/city/objects/Car;->way:Linfo/flowersoft/theotown/city/objects/Way;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Way;->size()I

    move-result v4

    invoke-virtual {v3, v11, v12, v4}, Linfo/flowersoft/theotown/components/DefaultTransportation;->foundCarWayBuildings(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;I)V

    .line 51
    iget-object v3, v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/DefaultCarController;->transportation:Linfo/flowersoft/theotown/components/DefaultTransportation;

    invoke-virtual {v3, v13, v14, v15, v2}, Linfo/flowersoft/theotown/components/DefaultTransportation;->foundCarWay(IIII)V

    .line 53
    iput-boolean v6, v1, Linfo/flowersoft/theotown/city/objects/Car;->fadeOut:Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 130
    const-string v0, "DefaultCarController"

    return-object v0
.end method

.method public onNotSpawn(J)V
    .registers 8

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 58
    invoke-static {p1, p2, v1, v0}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v2

    long-to-int v0, v2

    .line 59
    invoke-static {p1, p2, v1, v1}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v3, 0x18

    .line 60
    invoke-static {p1, p2, v1, v3}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v3

    long-to-int v3, v3

    const/16 v4, 0x24

    .line 61
    invoke-static {p1, p2, v1, v4}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide p1

    long-to-int p1, p1

    .line 62
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p2, v0, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p2

    .line 63
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, v3, p1}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    .line 65
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/DefaultCarController;->transportation:Linfo/flowersoft/theotown/components/DefaultTransportation;

    invoke-virtual {v4, v0, v2, v3, p1}, Linfo/flowersoft/theotown/components/DefaultTransportation;->foundNoCarWay(IIII)V

    if-eqz p2, :cond_35

    if-eqz v1, :cond_35

    .line 67
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/DefaultCarController;->transportation:Linfo/flowersoft/theotown/components/DefaultTransportation;

    invoke-virtual {p1, p2, v1}, Linfo/flowersoft/theotown/components/DefaultTransportation;->foundNoCarWayBuildings(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)V

    :cond_35
    return-void
.end method

.method public onTarget(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 5

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public prepare(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 29
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->prepare(Linfo/flowersoft/theotown/city/City;)V

    const/16 v0, 0x10

    .line 31
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultTransportation;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/DefaultCarController;->transportation:Linfo/flowersoft/theotown/components/DefaultTransportation;

    return-void
.end method

.method public spawn(Linfo/flowersoft/theotown/draft/CarDraft;IIIIILinfo/flowersoft/theotown/city/objects/Way;I)V
    .registers 25

    move-object/from16 v2, p1

    if-gez p2, :cond_12

    .line 115
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v1, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    iget v3, v2, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    move v3, v0

    goto :goto_14

    :cond_12
    move/from16 v3, p2

    :goto_14
    const/4 v7, 0x0

    move/from16 v0, p3

    int-to-long v8, v0

    const-wide/16 v4, 0x0

    const/16 v6, 0xc

    .line 119
    invoke-static/range {v4 .. v9}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v10

    const/16 v13, 0xc

    move/from16 v0, p4

    int-to-long v14, v0

    const/16 v12, 0xc

    .line 120
    invoke-static/range {v10 .. v15}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v4

    const/16 v7, 0x18

    move/from16 v0, p5

    int-to-long v8, v0

    .line 121
    invoke-static/range {v4 .. v9}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v10

    const/16 v13, 0x24

    move/from16 v0, p6

    int-to-long v14, v0

    .line 122
    invoke-static/range {v10 .. v15}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v4

    const/16 v7, 0x3f

    const-wide/16 v8, 0x1

    const/4 v6, 0x1

    .line 123
    invoke-static/range {v4 .. v9}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v4

    move-object/from16 v1, p0

    .line 125
    iget-object v0, v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

    new-instance v6, Linfo/flowersoft/theotown/city/objects/Way;

    move-object/from16 v7, p7

    invoke-direct {v6, v7}, Linfo/flowersoft/theotown/city/objects/Way;-><init>(Linfo/flowersoft/theotown/city/objects/Way;)V

    move/from16 v7, p8

    invoke-interface/range {v0 .. v7}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;->spawn(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;Linfo/flowersoft/theotown/draft/CarDraft;IJLinfo/flowersoft/theotown/city/objects/Way;I)V

    return-void
.end method

.method public spawn(Linfo/flowersoft/theotown/draft/CarDraft;ILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;IIIIIII)V
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    if-gez p2, :cond_1f

    .line 85
    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v9, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v9, v9

    iget v10, v1, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    goto :goto_21

    :cond_1f
    move/from16 v8, p2

    :goto_21
    const/4 v12, 0x0

    int-to-long v13, v4

    const-wide/16 v9, 0x0

    const/16 v11, 0xc

    .line 89
    invoke-static/range {v9 .. v14}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v15

    const/16 v18, 0xc

    int-to-long v9, v5

    const/16 v17, 0xc

    move-wide/from16 v19, v9

    .line 90
    invoke-static/range {v15 .. v20}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v19

    const/16 v22, 0x18

    int-to-long v9, v6

    const/16 v21, 0xc

    move-wide/from16 v23, v9

    .line 91
    invoke-static/range {v19 .. v24}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v11

    const/16 v14, 0x24

    int-to-long v9, v7

    const/16 v13, 0xc

    move-wide v15, v9

    .line 92
    invoke-static/range {v11 .. v16}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v15

    const/16 v18, 0x3f

    const-wide/16 v19, 0x0

    const/16 v17, 0x1

    .line 93
    invoke-static/range {v15 .. v20}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v9

    .line 95
    new-instance v11, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v11}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 96
    new-instance v12, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v12}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    const/4 v13, 0x0

    if-eqz v2, :cond_78

    .line 99
    iget-object v4, v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v5

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v14

    invoke-virtual {v4, v5, v14}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v4

    invoke-virtual {v11, v2, v4, v13}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;IZ)V

    goto :goto_87

    .line 101
    :cond_78
    iget-object v2, v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v2

    add-int v2, p7, v2

    invoke-virtual {v11, v4, v5, v2}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    :goto_87
    if-eqz v3, :cond_9f

    .line 104
    iget-object v2, v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v2

    invoke-virtual {v12, v3, v2, v13}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;IZ)V

    goto :goto_ae

    .line 106
    :cond_9f
    iget-object v2, v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v2

    add-int v2, p10, v2

    invoke-virtual {v12, v6, v7, v2}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    .line 109
    :goto_ae
    iget-object v2, v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

    move/from16 p10, p11

    move-object/from16 p5, v0

    move-object/from16 p6, v1

    move-object/from16 p2, v2

    move/from16 p7, v8

    move-wide/from16 p8, v9

    move-object/from16 p3, v11

    move-object/from16 p4, v12

    invoke-interface/range {p2 .. p10}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;->spawn(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;Linfo/flowersoft/theotown/draft/CarDraft;IJI)V

    return-void
.end method

.method public update()V
    .registers 3

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/DefaultCarController;->transportation:Linfo/flowersoft/theotown/components/DefaultTransportation;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->getCarCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Linfo/flowersoft/theotown/components/DefaultTransportation;->updateCars(ILinfo/flowersoft/theotown/components/traffic/carcontroller/BuildingCarSpawner;)V

    return-void
.end method
