###### Class info.flowersoft.theotown.cityloader.StatisticsLoader (info.flowersoft.theotown.cityloader.StatisticsLoader)
.class public Linfo/flowersoft/theotown/cityloader/StatisticsLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "StatisticsLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .line 20
    const-string v0, "statistics"

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 3

    .line 38
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultStatistics;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/DefaultStatistics;-><init>()V

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

    .line 25
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultStatistics;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/DefaultStatistics;-><init>()V

    .line 27
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 28
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultStatistics;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 29
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 31
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

    .line 44
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/16 v0, 0x11

    .line 45
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/util/Saveable;

    invoke-interface {p2, p1}, Linfo/flowersoft/theotown/util/Saveable;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 46
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
