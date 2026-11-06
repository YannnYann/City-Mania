###### Class info.flowersoft.theotown.cityloader.RailLoader (info.flowersoft.theotown.cityloader.RailLoader)
.class public Linfo/flowersoft/theotown/cityloader/RailLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "RailLoader.java"


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
    const-string v0, "rails"

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 2

    .line 0
    return-object p1
.end method

.method public loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 25
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 26
    :goto_7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 27
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "rails"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 42
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_7

    .line 29
    :cond_20
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 30
    :goto_23
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 31
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 32
    new-instance v1, Linfo/flowersoft/theotown/city/objects/Rail;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/city/objects/Rail;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 33
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Rail;->getDraft()Linfo/flowersoft/theotown/draft/RailDraft;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 34
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Rail;->getX()I

    move-result v2

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Rail;->getY()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Linfo/flowersoft/theotown/city/Tiles;->setRail(IILinfo/flowersoft/theotown/city/objects/Rail;)V

    .line 35
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getRails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_49
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_23

    .line 39
    :cond_4d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_7

    .line 45
    :cond_51
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

    .line 57
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 58
    const-string v0, "rails"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 59
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getRails()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Rail;

    .line 60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 61
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Rail;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 62
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_14

    .line 64
    :cond_2a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 65
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
