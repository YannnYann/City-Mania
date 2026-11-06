###### Class info.flowersoft.theotown.cityloader.AirportLoader (info.flowersoft.theotown.cityloader.AirportLoader)
.class public Linfo/flowersoft/theotown/cityloader/AirportLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "AirportLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .line 19
    const-string v0, "airport"

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 3

    .line 37
    new-instance v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;-><init>(Linfo/flowersoft/theotown/city/City;)V

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

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-direct {v0, p2}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 26
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 27
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 28
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 30
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-object p2
.end method

.method public saveTag(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x13

    .line 44
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 46
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 47
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 48
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
