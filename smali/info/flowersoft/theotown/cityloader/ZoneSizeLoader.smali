###### Class info.flowersoft.theotown.cityloader.ZoneSizeLoader (info.flowersoft.theotown.cityloader.ZoneSizeLoader)
.class public Linfo/flowersoft/theotown/cityloader/ZoneSizeLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "ZoneSizeLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .line 17
    const-string v0, "zonesize"

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 6

    .line 31
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    .line 32
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->calculateZoneSize(IIII)V

    return-object p1
.end method

.method public loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 23
    :goto_3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    .line 24
    :cond_d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 26
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/cityloader/ZoneSizeLoader;->loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    return-object p1
.end method

.method public saveTag(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 40
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
