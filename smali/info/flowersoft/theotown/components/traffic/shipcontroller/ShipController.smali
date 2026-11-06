###### Class info.flowersoft.theotown.components.traffic.shipcontroller.ShipController (info.flowersoft.theotown.components.traffic.shipcontroller.ShipController)
.class public abstract Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;
.super Ljava/lang/Object;
.source "ShipController.java"


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public ships:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Ship;",
            ">;"
        }
    .end annotation
.end field

.field public spawner:Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->ships:Ljava/util/List;

    .line 30
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->city:Linfo/flowersoft/theotown/city/City;

    .line 31
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 32
    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->spawner:Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipSpawner;

    return-void
.end method


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public isSuitableForShip(II)Z
    .registers 6

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 55
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    if-nez v2, :cond_39

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v2

    if-nez v2, :cond_39

    .line 56
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getShip(II)Linfo/flowersoft/theotown/city/objects/Ship;

    move-result-object p1

    if-nez p1, :cond_39

    const/4 p1, 0x1

    return p1

    :cond_39
    return v1
.end method

.method public isSuitableForShip(Linfo/flowersoft/theotown/draft/ShipDraft;III)Z
    .registers 11

    .line 62
    iget p1, p1, Linfo/flowersoft/theotown/draft/ShipDraft;->length:I

    .line 63
    invoke-static {p4}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v0

    .line 64
    invoke-static {p4}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p4, :cond_10

    move v1, v2

    move v0, v3

    :cond_10
    move p4, v2

    :goto_11
    if-gt p4, p1, :cond_23

    mul-int v4, p4, v0

    add-int/2addr v4, p2

    mul-int v5, p4, v1

    add-int/2addr v5, p3

    .line 69
    invoke-virtual {p0, v4, v5}, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->isSuitableForShip(II)Z

    move-result v4

    if-nez v4, :cond_20

    return v2

    :cond_20
    add-int/lit8 p4, p4, 0x1

    goto :goto_11

    :cond_23
    return v3
.end method

.method public abstract load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onTarget(Linfo/flowersoft/theotown/city/objects/Ship;)V
.end method

.method public registerShip(Linfo/flowersoft/theotown/city/objects/Ship;)V
    .registers 3

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->ships:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public unregisterShip(Linfo/flowersoft/theotown/city/objects/Ship;)V
    .registers 3

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/shipcontroller/ShipController;->ships:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract update()V
.end method
