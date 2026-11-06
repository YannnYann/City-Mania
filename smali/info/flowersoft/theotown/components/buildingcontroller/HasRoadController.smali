###### Class info.flowersoft.theotown.components.buildingcontroller.HasRoadController (info.flowersoft.theotown.components.buildingcontroller.HasRoadController)
.class public Linfo/flowersoft/theotown/components/buildingcontroller/HasRoadController;
.super Ljava/lang/Object;
.source "HasRoadController.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/HasRoadController;->city:Linfo/flowersoft/theotown/city/City;

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/HasRoadController;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    return-void
.end method


# virtual methods
.method public accept(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 3

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/HasRoadController;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->hasRoadTransfer(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/HasRoadController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setHasRoad(Z)V

    return-void
.end method

.method public afterPass()V
    .registers 1

    .line 0
    return-void
.end method

.method public beforePass()V
    .registers 1

    .line 0
    return-void
.end method

.method public canHandle(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z
    .registers 2

    .line 49
    iget-boolean p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 63
    const-string v0, "road"

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    :cond_a
    return-void
.end method

.method public prepare()V
    .registers 1

    .line 0
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
