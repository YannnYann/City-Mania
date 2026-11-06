###### Class info.flowersoft.theotown.cityloader.BuildingLoader (info.flowersoft.theotown.cityloader.BuildingLoader)
.class public Linfo/flowersoft/theotown/cityloader/BuildingLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "BuildingLoader.java"


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
    const-string v0, "buildings"

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 2

    .line 0
    return-object p1
.end method

.method public loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    .line 26
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 27
    :goto_9
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 28
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 30
    :try_start_12
    new-instance v1, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/city/objects/Building;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 31
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildRaw(Linfo/flowersoft/theotown/city/objects/Building;)V
    :try_end_1a
    .catch Linfo/flowersoft/theotown/resources/MissingDraftException; {:try_start_12 .. :try_end_1a} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_1a} :catch_1b

    goto :goto_3e

    :catch_1b
    move-exception v1

    goto :goto_21

    :catch_1d
    move-exception v1

    goto :goto_21

    :catch_1f
    move-exception v1

    goto :goto_2f

    .line 37
    :goto_21
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_21

    .line 38
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3e

    .line 34
    :goto_2f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_2f

    .line 35
    :cond_39
    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->missingDrafts:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    :goto_3e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_9

    .line 42
    :cond_42
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

    .line 54
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 56
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_b

    .line 58
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/city/objects/Building;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;Z)V

    .line 60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_b

    .line 64
    :cond_24
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
