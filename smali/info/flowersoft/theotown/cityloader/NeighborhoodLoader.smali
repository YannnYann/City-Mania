###### Class info.flowersoft.theotown.cityloader.NeighborhoodLoader (info.flowersoft.theotown.cityloader.NeighborhoodLoader)
.class public Linfo/flowersoft/theotown/cityloader/NeighborhoodLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "NeighborhoodLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .line 15
    const-string v0, "neighborhood"

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 3

    .line 29
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/DefaultNeighborhood;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-object p1
.end method

.method public loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 21
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    invoke-direct {v0, p2, p1}, Linfo/flowersoft/theotown/components/DefaultNeighborhood;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/json/JsonReader;)V

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 22
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    return-object p2
.end method

.method public saveTag(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/16 v0, 0x15

    .line 36
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/DefaultNeighborhood;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 37
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
