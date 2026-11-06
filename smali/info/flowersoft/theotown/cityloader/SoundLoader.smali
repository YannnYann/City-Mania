###### Class info.flowersoft.theotown.cityloader.SoundLoader (info.flowersoft.theotown.cityloader.SoundLoader)
.class public Linfo/flowersoft/theotown/cityloader/SoundLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "SoundLoader.java"


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

    .line 18
    const-string v0, "soundmanager"

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 3

    .line 32
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/DefaultSoundManager;-><init>()V

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
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/DefaultSoundManager;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 25
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

    .line 38
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/16 v0, 0xf

    .line 39
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 40
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
