###### Class info.flowersoft.theotown.components.traffic.carcontroller.CarController (info.flowersoft.theotown.components.traffic.carcontroller.CarController)
.class public abstract Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;
.super Ljava/lang/Object;
.source "CarController.java"


# instance fields
.field public carCountUntracked:I

.field public final cars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Car;",
            ">;"
        }
    .end annotation
.end field

.field public city:Linfo/flowersoft/theotown/city/City;

.field public id:I

.field public final spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

.field public tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public trackCars:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->trackCars:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->cars:Ljava/util/List;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->carCountUntracked:I

    .line 36
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->spawner:Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;

    return-void
.end method


# virtual methods
.method public foundNoWay(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 2

    .line 0
    return-void
.end method

.method public foundWay(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 2

    .line 0
    return-void
.end method

.method public getCarCount()I
    .registers 2

    .line 108
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->trackCars:Z

    if-eqz v0, :cond_b

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->cars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 111
    :cond_b
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->carCountUntracked:I

    return v0
.end method

.method public getCars()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Car;",
            ">;"
        }
    .end annotation

    .line 61
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->trackCars:Z

    if-eqz v0, :cond_7

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->cars:Ljava/util/List;

    return-object v0

    .line 62
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot get cars for untracked car controller"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDate()Linfo/flowersoft/theotown/components/DefaultDate;
    .registers 3

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    return-object v0
.end method

.method public final getId()I
    .registers 2

    .line 132
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->id:I

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    .line 41
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p2

    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 43
    :goto_8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 44
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_8

    :cond_12
    return-void
.end method

.method public onNotSpawn(J)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSpawn(Linfo/flowersoft/theotown/city/objects/Car;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract onTarget(Linfo/flowersoft/theotown/city/objects/Car;III)Z
.end method

.method public prepare(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 57
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method

.method public register(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 3

    .line 76
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->trackCars:Z

    if-nez v0, :cond_b

    .line 77
    iget p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->carCountUntracked:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->carCountUntracked:I

    return-void

    .line 81
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->cars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
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

.method public setCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 52
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    .line 53
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-void
.end method

.method public final setId(I)V
    .registers 2

    .line 128
    iput p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->id:I

    return-void
.end method

.method public unregister(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 5

    .line 87
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->trackCars:Z

    if-nez v0, :cond_b

    .line 88
    iget p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->carCountUntracked:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->carCountUntracked:I

    return-void

    .line 92
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->cars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_14

    return-void

    .line 95
    :cond_14
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->cars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_24

    .line 98
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->cars:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    .line 103
    :cond_24
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->cars:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Car;

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->cars:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public abstract update()V
.end method
