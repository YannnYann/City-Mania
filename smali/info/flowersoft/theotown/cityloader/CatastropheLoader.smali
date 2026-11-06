###### Class info.flowersoft.theotown.cityloader.CatastropheLoader (info.flowersoft.theotown.cityloader.CatastropheLoader)
.class public Linfo/flowersoft/theotown/cityloader/CatastropheLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "CatastropheLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .line 20
    const-string v0, "catastrophe"

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 3

    .line 34
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;-><init>(Linfo/flowersoft/theotown/city/City;)V

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
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 26
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-direct {v0, p2, p1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/json/JsonReader;)V

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 27
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

    .line 40
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x6

    .line 41
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 42
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
