###### Class info.flowersoft.theotown.components.traffic.shipcontroller.FreighterShipController (info.flowersoft.theotown.components.traffic.shipcontroller.FreighterShipController)
.class public Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;
.super Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;
.source "FreighterShipController.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;)V

    return-void
.end method


# virtual methods
.method public final getDistance(IIII)I
    .registers 12

    .line 128
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->isSuitableForShip(II)Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_3e

    invoke-virtual {p0, p3, p4}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->isSuitableForShip(II)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    :goto_10
    if-ne p1, p3, :cond_16

    if-eq p2, p4, :cond_15

    goto :goto_16

    :cond_15
    return v0

    :cond_16
    :goto_16
    sub-int v2, p3, p1

    sub-int v3, p4, p2

    .line 135
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x0

    if-le v4, v5, :cond_2d

    .line 136
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/2addr v2, v3

    move v3, v6

    move v6, v2

    goto :goto_32

    .line 140
    :cond_2d
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v3, v2

    :goto_32
    add-int/2addr p1, v6

    add-int/2addr p2, v3

    .line 144
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->isSuitableForShip(II)Z

    move-result v2

    if-nez v2, :cond_3b

    return v1

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_3e
    return v1
.end method

.method public final getDistance(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const v2, 0x7fffffff

    const/4 v3, 0x4

    if-ge v1, v3, :cond_28

    .line 113
    invoke-virtual {p0, p1, v1}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getMidX(Linfo/flowersoft/theotown/city/objects/Building;I)I

    move-result v4

    .line 114
    invoke-virtual {p0, p1, v1}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getMidY(Linfo/flowersoft/theotown/city/objects/Building;I)I

    move-result v5

    move v6, v0

    :goto_11
    if-ge v6, v3, :cond_25

    .line 116
    invoke-virtual {p0, p2, v6}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getMidX(Linfo/flowersoft/theotown/city/objects/Building;I)I

    move-result v7

    .line 117
    invoke-virtual {p0, p2, v6}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getMidY(Linfo/flowersoft/theotown/city/objects/Building;I)I

    move-result v8

    .line 118
    invoke-virtual {p0, v4, v5, v7, v8}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getDistance(IIII)I

    move-result v7

    if-ge v7, v2, :cond_22

    return v7

    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_28
    return v2
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 308
    const-string v0, "freighter controller"

    return-object v0
.end method

.method public final getMaxCount()I
    .registers 2

    .line 261
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getPiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getMidX(Linfo/flowersoft/theotown/city/objects/Building;I)I
    .registers 5

    if-nez p2, :cond_c

    .line 157
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result p1

    :goto_a
    add-int/2addr p2, p1

    return p2

    :cond_c
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p2, v0, :cond_1a

    .line 159
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    goto :goto_a

    :cond_1a
    if-ne p2, v1, :cond_22

    .line 161
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result p1

    sub-int/2addr p1, v0

    return p1

    .line 163
    :cond_22
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    goto :goto_a
.end method

.method public final getMidY(Linfo/flowersoft/theotown/city/objects/Building;I)I
    .registers 5

    const/4 v0, 0x2

    if-nez p2, :cond_e

    .line 169
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    :goto_c
    add-int/2addr p2, p1

    return p2

    :cond_e
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1a

    .line 171
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    goto :goto_c

    :cond_1a
    if-ne p2, v0, :cond_26

    .line 173
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    div-int/2addr p1, v0

    goto :goto_c

    .line 175
    :cond_26
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p1

    sub-int/2addr p1, v1

    return p1
.end method

.method public final getNextTarget(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 12

    .line 199
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getDistance(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v0

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_a

    return-object p2

    .line 202
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 204
    new-instance v3, Ljava/util/PriorityQueue;

    new-instance v4, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController$1;

    invoke-direct {v4, p0, v0}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController$1;-><init>(Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;Ljava/util/Map;)V

    const/16 v5, 0xb

    invoke-direct {v3, v5, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 211
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 212
    new-instance v5, Linfo/flowersoft/theotown/util/SafeListAccessor;

    iget-object v6, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v6

    sget-object v7, Linfo/flowersoft/theotown/draft/BuildingType;->BUOY:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v6

    invoke-direct {v5, v6}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/city/objects/Building;

    .line 213
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 216
    :cond_4a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/city/objects/Building;

    .line 217
    invoke-virtual {p0, p1, v6}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getDistance(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v3, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 222
    :cond_6d
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_be

    .line 223
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    .line 224
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v1, :cond_be

    .line 225
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getDistance(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v5

    if-ge v5, v1, :cond_9c

    .line 228
    :goto_8e
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9b

    .line 229
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    goto :goto_8e

    :cond_9b
    return-object p1

    .line 233
    :cond_9c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/city/objects/Building;

    .line 234
    invoke-virtual {p0, p1, v6}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getDistance(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {v3, v6}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {v3, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    :cond_be
    return-object v7
.end method

.method public final getPiers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->HARBOR_PIER:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    return-object v0
.end method

.method public final getShipFinalTarget(Linfo/flowersoft/theotown/city/objects/Ship;)[I
    .registers 7

    .line 290
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getData()J

    move-result-wide v0

    const/16 p1, 0x18

    const/16 v2, 0xc

    .line 292
    invoke-static {v0, v1, v2, p1}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v3

    long-to-int p1, v3

    const/16 v3, 0x24

    .line 293
    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    long-to-int v0, v0

    filled-new-array {p1, v0}, [I

    move-result-object p1

    return-object p1
.end method

.method public final getShipHistory(Linfo/flowersoft/theotown/city/objects/Ship;)I
    .registers 5

    .line 302
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getData()J

    move-result-wide v0

    const/16 p1, 0xc

    const/16 v2, 0x30

    .line 303
    invoke-static {v0, v1, p1, v2}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public final getShipTarget(Linfo/flowersoft/theotown/city/objects/Ship;)[I
    .registers 7

    .line 283
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getData()J

    move-result-wide v0

    const/4 p1, 0x0

    const/16 v2, 0xc

    .line 285
    invoke-static {v0, v1, v2, p1}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v3

    long-to-int p1, v3

    .line 286
    invoke-static {v0, v1, v2, v2}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    long-to-int v0, v0

    filled-new-array {p1, v0}, [I

    move-result-object p1

    return-object p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    :cond_a
    return-void
.end method

.method public onTarget(Linfo/flowersoft/theotown/city/objects/Ship;)V
    .registers 15

    .line 45
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getX()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getDir()I

    move-result v1

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getDir()I

    move-result v2

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 47
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getShipTarget(Linfo/flowersoft/theotown/city/objects/Ship;)[I

    move-result-object v2

    .line 48
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getShipFinalTarget(Linfo/flowersoft/theotown/city/objects/Ship;)[I

    move-result-object v3

    const/4 v4, 0x0

    .line 49
    aget v5, v2, v4

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getX()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    .line 50
    aget v7, v2, v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getY()I

    move-result v8

    sub-int/2addr v7, v8

    .line 51
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    .line 52
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getDir()I

    move-result v9

    .line 53
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getShipHistory(Linfo/flowersoft/theotown/city/objects/Ship;)I

    move-result v10

    .line 54
    iget-object v11, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    aget v12, v2, v4

    aget v2, v2, v6

    invoke-virtual {v11, v12, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    .line 55
    iget-object v11, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    aget v12, v3, v4

    aget v3, v3, v6

    invoke-virtual {v11, v12, v3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v3

    if-eqz v2, :cond_112

    if-eqz v3, :cond_112

    const/16 v11, 0x80

    if-le v10, v11, :cond_61

    goto/16 :goto_112

    :cond_61
    const/4 v11, 0x4

    if-gt v8, v11, :cond_74

    if-eq v2, v3, :cond_70

    .line 64
    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getNextTarget(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    if-nez v2, :cond_74

    .line 66
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->setInvalid()V

    return-void

    .line 70
    :cond_70
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->setInvalid()V

    return-void

    :cond_74
    if-nez v5, :cond_78

    if-eqz v7, :cond_10e

    .line 76
    :cond_78
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_89

    .line 77
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v5, v2

    move v7, v4

    goto :goto_8f

    .line 81
    :cond_89
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v7, v2

    move v5, v4

    .line 83
    :goto_8f
    invoke-static {v5, v7}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v2

    .line 85
    new-instance v3, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v3, v5}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    const/4 v5, 0x2

    const/16 v7, 0x8

    .line 86
    filled-new-array {v4, v6, v5, v11, v7}, [I

    move-result-object v5

    :goto_a1
    const/4 v7, 0x5

    if-ge v4, v7, :cond_f6

    aget v7, v5, v4

    .line 87
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getDraft()Linfo/flowersoft/theotown/draft/ShipDraft;

    move-result-object v8

    invoke-virtual {p0, v8, v0, v1, v7}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->isSuitableForShip(Linfo/flowersoft/theotown/draft/ShipDraft;III)Z

    move-result v8

    if-eqz v8, :cond_f3

    if-ne v7, v2, :cond_bc

    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v3, v7, v8}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    goto :goto_f3

    :cond_bc
    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v7, :cond_ca

    if-eqz v9, :cond_ca

    .line 91
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v8}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    goto :goto_f3

    :cond_ca
    if-eqz v7, :cond_d8

    if-ne v7, v9, :cond_d8

    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v3, v7, v8}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    goto :goto_f3

    :cond_d8
    if-eqz v7, :cond_ea

    .line 94
    invoke-static {v9}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v11

    if-ne v7, v11, :cond_ea

    .line 95
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/high16 v8, 0x3e800000    # 0.25f

    invoke-virtual {v3, v7, v8}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    goto :goto_f3

    :cond_ea
    if-eqz v7, :cond_f3

    .line 97
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7, v8}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_f3
    :goto_f3
    add-int/lit8 v4, v4, 0x1

    goto :goto_a1

    .line 102
    :cond_f6
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 103
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Ship;->setTarget(I)V

    add-int/2addr v10, v6

    .line 104
    invoke-virtual {p0, p1, v10}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->setShipHistory(Linfo/flowersoft/theotown/city/objects/Ship;I)V

    return-void

    .line 108
    :cond_10e
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->setInvalid()V

    return-void

    .line 58
    :cond_112
    :goto_112
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->setInvalid()V

    return-void
.end method

.method public final sampleStartConfig(Linfo/flowersoft/theotown/draft/ShipDraft;Linfo/flowersoft/theotown/city/objects/Building;)[I
    .registers 8

    .line 248
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_3a

    .line 249
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_16
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_37

    move v3, v1

    :goto_22
    const/16 v4, 0x8

    if-gt v3, v4, :cond_34

    .line 251
    invoke-virtual {p0, p1, v0, v2, v3}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->isSuitableForShip(Linfo/flowersoft/theotown/draft/ShipDraft;III)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 252
    filled-new-array {v0, v2, v3}, [I

    move-result-object p1

    return-object p1

    :cond_31
    mul-int/lit8 v3, v3, 0x2

    goto :goto_22

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3a
    const/4 p1, 0x0

    return-object p1
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

.method public final setShipFinalTarget(Linfo/flowersoft/theotown/city/objects/Ship;II)V
    .registers 16

    .line 276
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getData()J

    move-result-wide v0

    const/16 v3, 0x18

    int-to-long v4, p2

    const/16 v2, 0xc

    .line 277
    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v6

    const/16 v9, 0x24

    int-to-long v10, p3

    const/16 v8, 0xc

    .line 278
    invoke-static/range {v6 .. v11}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide p2

    .line 279
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/objects/Ship;->setData(J)V

    return-void
.end method

.method public final setShipHistory(Linfo/flowersoft/theotown/city/objects/Ship;I)V
    .registers 9

    .line 297
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getData()J

    move-result-wide v0

    const/16 v3, 0x30

    int-to-long v4, p2

    const/16 v2, 0xc

    .line 298
    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/city/objects/Ship;->setData(J)V

    return-void
.end method

.method public final setShipTarget(Linfo/flowersoft/theotown/city/objects/Ship;II)V
    .registers 16

    .line 269
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getData()J

    move-result-wide v0

    const/4 v3, 0x0

    int-to-long v4, p2

    const/16 v2, 0xc

    .line 270
    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v6

    const/16 v9, 0xc

    int-to-long v10, p3

    const/16 v8, 0xc

    .line 271
    invoke-static/range {v6 .. v11}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide p2

    .line 272
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/objects/Ship;->setData(J)V

    return-void
.end method

.method public update()V
    .registers 9

    .line 181
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getMaxCount()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->ships:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_64

    .line 182
    new-instance v0, Linfo/flowersoft/theotown/util/ListSampler;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getPiers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/ListSampler;-><init>(Ljava/util/List;)V

    .line 183
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/ListSampler;->sample(Ljava/util/Random;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 184
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/ListSampler;->sample(Ljava/util/Random;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    if-eq v2, v0, :cond_64

    if-eqz v2, :cond_64

    if-eqz v0, :cond_64

    .line 186
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v3, "$shipcontainer00"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/ShipDraft;

    .line 187
    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->sampleStartConfig(Linfo/flowersoft/theotown/draft/ShipDraft;Linfo/flowersoft/theotown/city/objects/Building;)[I

    move-result-object v3

    .line 188
    invoke-virtual {p0, v2, v0}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getNextTarget(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    if-eqz v3, :cond_64

    if-eqz v2, :cond_64

    .line 190
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->spawner:Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v3, v3, v7

    invoke-interface {v4, v1, v5, v6, v3}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;->spawn(Linfo/flowersoft/theotown/draft/ShipDraft;III)Linfo/flowersoft/theotown/city/objects/Ship;

    move-result-object v1

    .line 191
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {p0, v1, v3, v2}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->setShipTarget(Linfo/flowersoft/theotown/city/objects/Ship;II)V

    .line 192
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->setShipFinalTarget(Linfo/flowersoft/theotown/city/objects/Ship;II)V

    :cond_64
    return-void
.end method

###### Class info.flowersoft.theotown.components.traffic.shipcontroller.FreighterShipController.AnonymousClass1 (info.flowersoft.theotown.components.traffic.shipcontroller.FreighterShipController$1)
.class Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController$1;
.super Ljava/lang/Object;
.source "FreighterShipController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;->getNextTarget(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/Building;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Linfo/flowersoft/theotown/city/objects/Building;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;

.field public final synthetic val$distances:Ljava/util/Map;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController$1;->this$0:Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController$1;->val$distances:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 4

    .line 207
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController$1;->val$distances:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController$1;->val$distances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 204
    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    check-cast p2, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController$1;->compare(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result p1

    return p1
.end method
