###### Class info.flowersoft.theotown.cityloader.BusStopLoader (info.flowersoft.theotown.cityloader.BusStopLoader)
.class public Linfo/flowersoft/theotown/cityloader/BusStopLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "BusStopLoader.java"


# instance fields
.field public TAG_BUS_STOPS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;-><init>()V

    .line 18
    const-string v0, "bus stops"

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/BusStopLoader;->TAG_BUS_STOPS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/BusStopLoader;->TAG_BUS_STOPS:Ljava/lang/String;

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 2

    .line 0
    return-object p1
.end method

.method public loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 29
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 30
    :goto_7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 31
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 33
    :try_start_10
    new-instance v1, Linfo/flowersoft/theotown/city/objects/BusStop;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/city/objects/BusStop;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 34
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v2

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v3

    iget v4, v1, Linfo/flowersoft/theotown/city/objects/BusStop;->level:I

    invoke-virtual {v0, v2, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    if-eqz v2, :cond_5b

    .line 36
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v3

    if-nez v3, :cond_5b

    iget v3, v2, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v3, :cond_5b

    .line 37
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/objects/Road;->setBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)V

    .line 38
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v2

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/BusStopList;->add(Linfo/flowersoft/theotown/city/objects/BusStop;)Z
    :try_end_39
    .catch Linfo/flowersoft/theotown/resources/MissingDraftException; {:try_start_10 .. :try_end_39} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_39} :catch_3a

    goto :goto_5b

    :catch_3a
    move-exception v1

    goto :goto_3e

    :catch_3c
    move-exception v1

    goto :goto_4c

    .line 46
    :goto_3e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3e

    .line 47
    :cond_48
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5b

    .line 42
    :goto_4c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_4c

    .line 43
    :cond_56
    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->missingDrafts:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_5b
    :goto_5b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_7

    .line 52
    :cond_5f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    return-object p2
.end method

.method public saveTag(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 65
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 66
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/city/objects/BusStop;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;Z)V

    .line 68
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_b

    .line 70
    :cond_22
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
