###### Class info.flowersoft.theotown.components.traffic.ShipTrafficHandler (info.flowersoft.theotown.components.traffic.ShipTrafficHandler)
.class public Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;
.super Linfo/flowersoft/theotown/components/traffic/TrafficHandler;
.source "ShipTrafficHandler.java"


# instance fields
.field public final controllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;",
            ">;"
        }
    .end annotation
.end field

.field public ctrlId:I

.field public final date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public final ships:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Ship;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 7

    .line 45
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->ctrlId:I

    const/4 v1, 0x1

    .line 47
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object v1, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->ships:Ljava/util/List;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->controllers:Ljava/util/List;

    .line 52
    new-instance v2, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->generateSpawner()Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/FreighterShipController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :goto_29
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 55
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 56
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->ships:[Linfo/flowersoft/theotown/draft/ShipDraft;

    if-eqz v2, :cond_4e

    array-length v2, v2

    if-lez v2, :cond_4e

    .line 57
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->controllers:Ljava/util/List;

    new-instance v3, Linfo/flowersoft/theotown/components/traffic/shipcontroller/GenericShipController;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->generateSpawner()Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;

    move-result-object v4

    invoke-direct {v3, p1, v4, v1}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/GenericShipController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_51
    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)Ljava/util/List;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->ships:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)Ljava/util/List;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->controllers:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;Linfo/flowersoft/theotown/city/objects/Ship;)V
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->registerShipOnMap(Linfo/flowersoft/theotown/city/objects/Ship;)V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)Linfo/flowersoft/theotown/components/DefaultDate;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;Linfo/flowersoft/theotown/city/objects/Ship;)V
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->unregisterShipFromMap(Linfo/flowersoft/theotown/city/objects/Ship;)V

    return-void
.end method


# virtual methods
.method public draw(IILinfo/flowersoft/theotown/city/objects/Ship;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 15

    .line 283
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Ship;->getDraft()Linfo/flowersoft/theotown/draft/ShipDraft;

    move-result-object v0

    .line 284
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Ship;->getP()F

    move-result v1

    .line 285
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Ship;->getDir()I

    move-result v2

    .line 286
    iget v3, p4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v3

    .line 287
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v4

    .line 288
    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v5

    .line 289
    iget-object v6, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Ship;->getX()I

    move-result v7

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Ship;->getY()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v6

    .line 290
    iget-object v7, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Ship;->getX()I

    move-result v8

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Ship;->getY()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v7

    .line 291
    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    int-to-float v6, v6

    add-float/2addr v8, v6

    int-to-float v4, v4

    sub-float/2addr v8, v4

    .line 292
    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    int-to-float v3, v7

    add-float/2addr v1, v3

    int-to-float v3, v5

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-gtz v4, :cond_5d

    cmpg-float v3, v8, v3

    if-ltz v3, :cond_5d

    cmpl-float v3, v8, v1

    if-nez v3, :cond_5c

    goto :goto_5d

    :cond_5c
    return-void

    .line 295
    :cond_5d
    :goto_5d
    iget-object v3, p4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    add-float v3, v8, v1

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 296
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/high16 v5, 0x41800000    # 16.0f

    sub-float/2addr v8, v1

    mul-float/2addr v8, v5

    div-float/2addr v8, v4

    .line 297
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result p1

    const/high16 p2, 0x41400000    # 12.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    sub-int/2addr v1, p1

    .line 298
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Ship;->getFrame()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    iget p3, p4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    sub-int/2addr p2, p3

    rem-int/lit8 p2, p2, 0x4

    add-int/2addr p1, p2

    .line 299
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float p3, v3

    int-to-float v1, v1

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p1, v0, p1

    invoke-virtual {p4, p2, p3, v1, p1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void
.end method

.method public final generateSpawner()Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;
    .registers 3

    .line 65
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->ctrlId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->ctrlId:I

    .line 66
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$1;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$1;-><init>(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;I)V

    return-object v1
.end method

.method public getShips()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Ship;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->ships:Ljava/util/List;

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 89
    :goto_6
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 90
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    const/4 v1, 0x0

    .line 93
    :goto_25
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 94
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "ships"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    const-string v3, "mapping"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 134
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_60

    .line 137
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 138
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->controllers:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;

    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 139
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_25

    .line 141
    :cond_60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_25

    .line 97
    :cond_64
    new-instance v1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 98
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 100
    :goto_6c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 101
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_86

    .line 104
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_6c

    :cond_86
    const/4 v2, -0x1

    .line 106
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_6c

    .line 110
    :cond_8b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_25

    .line 113
    :cond_8f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 114
    :goto_92
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 115
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 117
    :try_start_9b
    new-instance v2, Linfo/flowersoft/theotown/city/objects/Ship;

    invoke-direct {v2, p1}, Linfo/flowersoft/theotown/city/objects/Ship;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    if-eqz v1, :cond_cb

    .line 120
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Ship;->getController()I

    move-result v3

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    if-ltz v3, :cond_cb

    .line 121
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Ship;->getController()I

    move-result v3

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/objects/Ship;->setController(I)V

    .line 122
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->ships:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9b .. :try_end_bc} :catch_bd

    goto :goto_cb

    :catch_bd
    move-exception v2

    .line 126
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    :goto_c1
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_c1

    .line 129
    :cond_cb
    :goto_cb
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_92

    .line 131
    :cond_cf
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_25

    .line 146
    :cond_d4
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->ships:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 147
    :goto_da
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 148
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Ship;

    .line 149
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ship;->getController()I

    move-result v1

    if-ltz v1, :cond_103

    .line 150
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_103

    .line 151
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->registerShip(Linfo/flowersoft/theotown/city/objects/Ship;)V

    .line 152
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->registerShipOnMap(Linfo/flowersoft/theotown/city/objects/Ship;)V

    goto :goto_da

    .line 154
    :cond_103
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_da

    :cond_107
    return-void
.end method

.method public prepare()V
    .registers 3

    .line 192
    new-instance v0, Lio/blueflower/stapel2d/util/CyclicWorker;

    new-instance v1, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$2;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$2;-><init>(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)V

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->addDailyWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    .line 203
    new-instance v0, Lio/blueflower/stapel2d/util/CyclicWorker;

    new-instance v1, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$3;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$3;-><init>(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)V

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/CyclicWorker;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->addWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    return-void
.end method

.method public final registerShipOnMap(Linfo/flowersoft/theotown/city/objects/Ship;)V
    .registers 7

    .line 241
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getX()I

    move-result v0

    .line 242
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getY()I

    move-result v1

    .line 243
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getDir()I

    move-result v2

    .line 244
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v3

    .line 245
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v4

    if-nez v2, :cond_18

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 249
    :cond_18
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 250
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v0, v1, p1}, Linfo/flowersoft/theotown/city/Tiles;->setShip(IILinfo/flowersoft/theotown/city/objects/Ship;)V

    .line 253
    :cond_25
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getDraft()Linfo/flowersoft/theotown/draft/ShipDraft;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/draft/ShipDraft;->length:I

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    mul-int/2addr v4, v2

    add-int/2addr v1, v4

    .line 256
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 257
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v0, v1, p1}, Linfo/flowersoft/theotown/city/Tiles;->setShip(IILinfo/flowersoft/theotown/city/objects/Ship;)V

    :cond_3c
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->ships:Ljava/util/List;

    monitor-enter v0

    .line 162
    :try_start_3
    const-string v1, "mapping"

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 163
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 164
    :goto_d
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 165
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :catchall_27
    move-exception p1

    goto :goto_7e

    .line 167
    :cond_29
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 169
    const-string v2, "ships"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 170
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 171
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->ships:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3a
    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Ship;

    .line 172
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ship;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 173
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 174
    invoke-virtual {v3, p1}, Linfo/flowersoft/theotown/city/objects/Ship;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 175
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_3a

    .line 178
    :cond_56
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 180
    :goto_59
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7c

    .line 181
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->controllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;

    .line 182
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 183
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 184
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 185
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 187
    :cond_7c
    monitor-exit v0

    return-void

    :goto_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_27

    throw p1
.end method

.method public final unregisterShipFromMap(Linfo/flowersoft/theotown/city/objects/Ship;)V
    .registers 8

    .line 262
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getX()I

    move-result v0

    .line 263
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getY()I

    move-result v1

    .line 264
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getDir()I

    move-result v2

    .line 265
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v3

    .line 266
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v4

    if-nez v2, :cond_18

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 270
    :cond_18
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_26

    .line 271
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v0, v1, v5}, Linfo/flowersoft/theotown/city/Tiles;->setShip(IILinfo/flowersoft/theotown/city/objects/Ship;)V

    .line 274
    :cond_26
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ship;->getDraft()Linfo/flowersoft/theotown/draft/ShipDraft;

    move-result-object p1

    iget p1, p1, Linfo/flowersoft/theotown/draft/ShipDraft;->length:I

    mul-int/2addr v3, p1

    add-int/2addr v0, v3

    mul-int/2addr v4, p1

    add-int/2addr v1, v4

    .line 277
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 278
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, v0, v1, v5}, Linfo/flowersoft/theotown/city/Tiles;->setShip(IILinfo/flowersoft/theotown/city/objects/Ship;)V

    :cond_3d
    return-void
.end method

###### Class info.flowersoft.theotown.components.traffic.ShipTrafficHandler.AnonymousClass1 (info.flowersoft.theotown.components.traffic.ShipTrafficHandler$1)
.class Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$1;
.super Ljava/lang/Object;
.source "ShipTrafficHandler.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->generateSpawner()Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

.field public final synthetic val$myId:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;I)V
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

    .line 66
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$1;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    iput p2, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$1;->val$myId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public spawn(Linfo/flowersoft/theotown/draft/ShipDraft;III)Linfo/flowersoft/theotown/city/objects/Ship;
    .registers 13

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$1;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 70
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 71
    new-instance v2, Linfo/flowersoft/theotown/city/objects/Ship;

    iget v6, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$1;->val$myId:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Linfo/flowersoft/theotown/city/objects/Ship;-><init>(Linfo/flowersoft/theotown/draft/ShipDraft;IIII)V

    .line 72
    invoke-virtual {v2, p4}, Linfo/flowersoft/theotown/city/objects/Ship;->setTarget(I)V

    .line 73
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$1;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-static {p1}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->access$000(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$1;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-static {p1}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->access$100(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$1;->val$myId:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->registerShip(Linfo/flowersoft/theotown/city/objects/Ship;)V

    .line 76
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$1;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-static {p1, v2}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->access$200(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;Linfo/flowersoft/theotown/city/objects/Ship;)V

    return-object v2

    :cond_42
    const/4 p1, 0x0

    return-object p1
.end method

###### Class info.flowersoft.theotown.components.traffic.ShipTrafficHandler.AnonymousClass2 (info.flowersoft.theotown.components.traffic.ShipTrafficHandler$2)
.class Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$2;
.super Ljava/lang/Object;
.source "ShipTrafficHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 192
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$2;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$2;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->access$000(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 196
    :try_start_7
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$2;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->access$100(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;

    .line 197
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->update()V

    goto :goto_11

    :catchall_21
    move-exception v1

    goto :goto_25

    .line 199
    :cond_23
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_21

    throw v1
.end method

###### Class info.flowersoft.theotown.components.traffic.ShipTrafficHandler.AnonymousClass3 (info.flowersoft.theotown.components.traffic.ShipTrafficHandler$3)
.class Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$3;
.super Ljava/lang/Object;
.source "ShipTrafficHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 203
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 206
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->access$000(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 207
    :try_start_7
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->access$300(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTimeDelta()I

    move-result v1

    .line 208
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-static {v2}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->access$000(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 210
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    .line 211
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Ship;

    .line 213
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ship;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 214
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-static {v4, v3}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->access$400(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;Linfo/flowersoft/theotown/city/objects/Ship;)V

    .line 215
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-static {v4}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->access$100(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ship;->getController()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->unregisterShip(Linfo/flowersoft/theotown/city/objects/Ship;)V

    .line 216
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1b

    :catchall_49
    move-exception v1

    goto :goto_8b

    .line 218
    :cond_4b
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ship;->getP()F

    move-result v4

    int-to-float v5, v1

    const/high16 v6, 0x457a0000    # 4000.0f

    div-float/2addr v5, v6

    .line 219
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v5

    if-ltz v6, :cond_85

    .line 222
    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/city/objects/Ship;->setP(F)V

    .line 223
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-static {v4, v3}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->access$400(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;Linfo/flowersoft/theotown/city/objects/Ship;)V

    .line 224
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-static {v4}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->access$100(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ship;->getController()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->onTarget(Linfo/flowersoft/theotown/city/objects/Ship;)V

    .line 225
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler$3;->this$0:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-static {v4, v3}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->access$200(Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;Linfo/flowersoft/theotown/city/objects/Ship;)V

    goto :goto_1b

    .line 227
    :cond_85
    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/city/objects/Ship;->setP(F)V

    goto :goto_1b

    .line 231
    :cond_89
    monitor-exit v0

    return-void

    :goto_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_7 .. :try_end_8c} :catchall_49

    throw v1
.end method
