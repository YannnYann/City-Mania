###### Class info.flowersoft.theotown.components.traffic.shipcontroller.GenericShipController (info.flowersoft.theotown.components.traffic.shipcontroller.GenericShipController)
.class public Linfo/flowersoft/theotown/components/traffic/shipcontroller/GenericShipController;
.super Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;
.source "GenericShipController.java"


# instance fields
.field public buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public shipDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/ShipDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 5

    .line 30
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;)V

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/GenericShipController;->shipDrafts:Ljava/util/List;

    .line 31
    iput-object p3, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/GenericShipController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 p1, 0x0

    .line 32
    :goto_d
    iget-object p2, p3, Linfo/flowersoft/theotown/draft/BuildingDraft;->ships:[Linfo/flowersoft/theotown/draft/ShipDraft;

    array-length v0, p2

    if-ge p1, v0, :cond_1c

    .line 33
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/GenericShipController;->shipDrafts:Ljava/util/List;

    aget-object p2, p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method

.method private getMaxCount()I
    .registers 5

    .line 114
    new-instance v0, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/GenericShipController;->getSpawnerBuildings()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 115
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->shipCount:I

    add-int/2addr v1, v2

    goto :goto_e

    :cond_28
    return v1
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/GenericShipController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " controller"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSpawnerBuildings()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/GenericShipController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    :cond_a
    return-void
.end method

.method public onTarget(Linfo/flowersoft/theotown/city/objects/Ship;)V
    .registers 10

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-direct {p0}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/GenericShipController;->getMaxCount()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->ships:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_93

    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 52
    filled-new-array {v2, v3, v0, v1, v4}, [I

    move-result-object v0

    .line 53
    new-instance v1, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 55
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getX()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getDir()I

    move-result v3

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 56
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getY()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getDir()I

    move-result v5

    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v5

    add-int/2addr v3, v5

    :goto_47
    const/4 v5, 0x5

    if-ge v4, v5, :cond_7b

    .line 57
    aget v5, v0, v4

    .line 58
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v6

    add-int/2addr v6, v2

    .line 59
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v7

    add-int/2addr v7, v3

    .line 60
    invoke-virtual {p0, v6, v7}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->isSuitableForShip(II)Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getDir()I

    move-result v6

    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v6

    if-eq v5, v6, :cond_78

    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getDir()I

    move-result v7

    if-ne v5, v7, :cond_73

    const/high16 v5, 0x41000000    # 8.0f

    goto :goto_75

    :cond_73
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_75
    invoke-virtual {v1, v6, v5}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 64
    :cond_7b
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 65
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Ship;->setTarget(I)V

    return-void

    .line 67
    :cond_8f
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->setInvalid()V

    return-void

    .line 70
    :cond_93
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->setInvalid()V

    return-void
.end method

.method public final sampleSpawningPlace()[I
    .registers 7

    .line 89
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 91
    new-instance v2, Linfo/flowersoft/theotown/util/ListSampler;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/GenericShipController;->getSpawnerBuildings()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/util/ListSampler;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/util/ListSampler;->sample(Ljava/util/Random;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v1, :cond_88

    .line 92
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 93
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_24
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_88

    .line 94
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_37
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_85

    .line 95
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    if-lt v2, v4, :cond_66

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    if-lt v3, v4, :cond_66

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_66

    .line 96
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_82

    :cond_66
    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->isSuitableForShip(II)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 97
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v5

    iget v5, v5, Linfo/flowersoft/theotown/draft/BuildingDraft;->shipCount:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    :cond_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 103
    :cond_88
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 104
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 105
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    rem-int v1, v0, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v2

    div-int/2addr v0, v2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    return-object v0

    :cond_ac
    const/4 v0, 0x0

    return-object v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public update()V
    .registers 7

    .line 76
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/GenericShipController;->getMaxCount()I

    move-result v0

    .line 77
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->ships:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_2f

    .line 78
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/GenericShipController;->sampleSpawningPlace()[I

    move-result-object v0

    if-eqz v0, :cond_2f

    const/4 v1, 0x0

    .line 80
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 81
    aget v0, v0, v3

    .line 82
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/GenericShipController;->shipDrafts:Ljava/util/List;

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/ShipDraft;

    .line 83
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->spawner:Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;

    invoke-interface {v4, v3, v2, v0, v1}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;->spawn(Linfo/flowersoft/theotown/draft/ShipDraft;III)Linfo/flowersoft/theotown/city/objects/Ship;

    :cond_2f
    return-void
.end method
