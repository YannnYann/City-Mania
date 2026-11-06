###### Class info.flowersoft.theotown.cityloader.TreeLoader (info.flowersoft.theotown.cityloader.TreeLoader)
.class public Linfo/flowersoft/theotown/cityloader/TreeLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "TreeLoader.java"


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
    const-string v0, "trees"

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

    .line 24
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 26
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 27
    :goto_7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 28
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 30
    :try_start_10
    new-instance v1, Linfo/flowersoft/theotown/city/objects/Tree;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/city/objects/Tree;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 31
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Tree;->getX()I

    move-result v2

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Tree;->getY()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Linfo/flowersoft/theotown/city/Tiles;->setTree(IILinfo/flowersoft/theotown/city/objects/Tree;)V
    :try_end_20
    .catch Linfo/flowersoft/theotown/resources/MissingDraftException; {:try_start_10 .. :try_end_20} :catch_21

    goto :goto_31

    :catch_21
    move-exception v1

    .line 33
    :goto_22
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_22

    .line 34
    :cond_2c
    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->missingDrafts:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    :goto_31
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_7

    .line 38
    :cond_35
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    return-object p2
.end method

.method public saveTag(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 52
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 53
    :goto_9
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2b

    move v3, v1

    .line 54
    :goto_10
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_28

    .line 55
    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 58
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 59
    invoke-virtual {v4, p1}, Linfo/flowersoft/theotown/city/objects/Tree;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 64
    :cond_2b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
