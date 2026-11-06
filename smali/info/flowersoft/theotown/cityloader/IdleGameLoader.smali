###### Class info.flowersoft.theotown.cityloader.IdleGameLoader (info.flowersoft.theotown.cityloader.IdleGameLoader)
.class public Linfo/flowersoft/theotown/cityloader/IdleGameLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "IdleGameLoader.java"


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

    .line 18
    const-string v0, "idle game"

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 3

    .line 34
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultIdleGame;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/DefaultIdleGame;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 35
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

    .line 23
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultIdleGame;

    invoke-direct {v0, p2}, Linfo/flowersoft/theotown/components/DefaultIdleGame;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 25
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 26
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

    .line 42
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/16 v0, 0x14

    .line 43
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/DefaultIdleGame;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 44
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
