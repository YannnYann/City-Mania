###### Class info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController (info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController)
.class public abstract Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;
.super Ljava/lang/Object;
.source "FlyingObjectController.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public flyingObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/FlyingObject;",
            ">;"
        }
    .end annotation
.end field

.field public spawner:Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    .line 28
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 29
    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->spawner:Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract getTag()Ljava/lang/String;
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    :cond_a
    return-void
.end method

.method public abstract onSpawned(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
.end method

.method public abstract onTarget(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
.end method

.method public prepare()V
    .registers 1

    .line 0
    return-void
.end method

.method public register(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 3

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

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

.method public unregister(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 3

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract update()V
.end method
