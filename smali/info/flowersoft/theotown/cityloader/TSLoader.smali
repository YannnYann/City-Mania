###### Class info.flowersoft.theotown.cityloader.TSLoader (info.flowersoft.theotown.cityloader.TSLoader)
.class public Linfo/flowersoft/theotown/cityloader/TSLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "TSLoader.java"


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

    .line 14
    const-string v0, "transportation system"

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 3

    .line 44
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-object p1
.end method

.method public loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    const/4 v0, 0x0

    .line 22
    :goto_4
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 23
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "component"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 30
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_4

    .line 25
    :cond_1d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 26
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultTSComponent;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V

    .line 27
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_4

    .line 34
    :cond_29
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    if-nez v0, :cond_33

    .line 36
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-direct {v0, p2}, Linfo/flowersoft/theotown/components/DefaultTSComponent;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 37
    :cond_33
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

    .line 50
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 52
    const-string v0, "component"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 53
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/16 v0, 0x16

    .line 54
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 55
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 57
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
