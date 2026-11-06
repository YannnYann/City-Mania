###### Class info.flowersoft.theotown.components.traffic.carcontroller.AirportTaxiCarController (info.flowersoft.theotown.components.traffic.carcontroller.AirportTaxiCarController)
.class public Linfo/flowersoft/theotown/components/traffic/carcontroller/AirportTaxiCarController;
.super Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;
.source "AirportTaxiCarController.java"


# instance fields
.field public carDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/CarDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V

    .line 23
    const-string p1, "airport taxi"

    const-class v0, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/AirportTaxiCarController;->carDrafts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 90
    const-string v0, "Airport Texi Controller"

    return-object v0
.end method

.method public onTarget(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 14

    .line 31
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    const/16 p2, 0xa

    const/4 p3, 0x0

    .line 32
    invoke-static {v0, v1, p2, p3}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v2

    long-to-int p4, v2

    .line 33
    invoke-static {v0, v1, p2, p2}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v2

    long-to-int v6, v2

    const/16 v2, 0x14

    const/4 v7, 0x1

    .line 34
    invoke-static {v0, v1, v7, v2}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v3, 0x20

    .line 35
    invoke-static {v0, v1, p2, v3}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v3

    long-to-int v8, v3

    const/16 v3, 0x2a

    .line 36
    invoke-static {v0, v1, p2, v3}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v3

    long-to-int p2, v3

    if-ne v2, v7, :cond_92

    const/16 v3, 0x14

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 39
    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v0

    .line 40
    iput-wide v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->data:J

    .line 42
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v8, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultTraffic;

    const-class v1, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    .line 44
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-virtual {v0, v8, p2}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->getObjectAt(II)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    move-result-object p2

    if-eqz p2, :cond_56

    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setP(F)V

    .line 50
    :cond_56
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2, p4, v6}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p2

    if-eqz p2, :cond_92

    .line 51
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p2, p4, v6}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p2

    if-eqz p2, :cond_92

    .line 52
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    if-ne v0, p4, :cond_92

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p4

    if-ne p4, v6, :cond_92

    .line 53
    new-instance p4, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {p4}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v0

    invoke-virtual {p4, p2, v0, p3}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;IZ)V

    .line 55
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

    invoke-interface {p2, p1, p4}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;->driveTo(Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/MapArea;)V

    return p3

    :cond_92
    return v7
.end method

.method public spawn(Linfo/flowersoft/theotown/city/objects/FlyingObject;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 21

    move-object/from16 v3, p0

    .line 70
    new-instance v1, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v1}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 71
    iget-object v0, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v0

    const/4 v2, 0x0

    move-object/from16 v4, p2

    invoke-virtual {v1, v4, v0, v2}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;IZ)V

    .line 73
    new-instance v2, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v2}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 74
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getX()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getY()I

    move-result v5

    iget-object v6, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getX()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getY()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v6

    invoke-virtual {v2, v0, v5, v6}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    .line 76
    iget-object v0, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/AirportTaxiCarController;->carDrafts:Ljava/util/List;

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/CarDraft;

    .line 79
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v5

    int-to-long v10, v5

    const-wide/16 v6, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v12

    .line 80
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    int-to-long v4, v4

    const/16 v14, 0xa

    const/16 v15, 0xa

    move-wide/from16 v16, v4

    invoke-static/range {v12 .. v17}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v6

    const/16 v9, 0x14

    const-wide/16 v10, 0x1

    const/4 v8, 0x1

    .line 81
    invoke-static/range {v6 .. v11}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v12

    .line 82
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualX()I

    move-result v4

    int-to-long v4, v4

    const/16 v15, 0x20

    move-wide/from16 v16, v4

    invoke-static/range {v12 .. v17}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v6

    .line 83
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualY()I

    move-result v4

    int-to-long v10, v4

    const/16 v8, 0xa

    const/16 v9, 0x2a

    invoke-static/range {v6 .. v11}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v5

    move-object v4, v0

    .line 85
    iget-object v0, v3, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;->spawn(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;Linfo/flowersoft/theotown/draft/CarDraft;JI)V

    return-void
.end method

.method public update()V
    .registers 1

    .line 0
    return-void
.end method
