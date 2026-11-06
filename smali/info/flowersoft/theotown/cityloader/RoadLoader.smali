###### Class info.flowersoft.theotown.cityloader.RoadLoader (info.flowersoft.theotown.cityloader.RoadLoader)
.class public Linfo/flowersoft/theotown/cityloader/RoadLoader;
.super Linfo/flowersoft/theotown/cityloader/ComponentLoader;
.source "RoadLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Linfo/flowersoft/theotown/cityloader/ComponentLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .registers 2

    .line 26
    const-string v0, "roads"

    return-object v0
.end method

.method public loadNoSource(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 2

    .line 0
    return-object p1
.end method

.method public loadTag(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/city/City;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual/range {p2 .. p2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 35
    :cond_c
    :goto_c
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_9d

    .line 38
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 40
    :try_start_17
    new-instance v0, Linfo/flowersoft/theotown/city/objects/Road;
    :try_end_19
    .catch Linfo/flowersoft/theotown/resources/MissingDraftException; {:try_start_17 .. :try_end_19} :catch_39
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_19} :catch_26

    move-object/from16 v6, p1

    :try_start_1b
    invoke-direct {v0, v6, v2}, Linfo/flowersoft/theotown/city/objects/Road;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;Ljava/util/List;)V
    :try_end_1e
    .catch Linfo/flowersoft/theotown/resources/MissingDraftException; {:try_start_1b .. :try_end_1e} :catch_24
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_22

    move-object/from16 v7, p0

    move-object v3, v0

    goto :goto_4e

    :catch_22
    move-exception v0

    goto :goto_29

    :catch_24
    move-exception v0

    goto :goto_3c

    :catch_26
    move-exception v0

    move-object/from16 v6, p1

    .line 45
    :goto_29
    invoke-interface {v6}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v6}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_29

    .line 46
    :cond_33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v7, p0

    goto :goto_4d

    :catch_39
    move-exception v0

    move-object/from16 v6, p1

    .line 42
    :goto_3c
    invoke-interface {v6}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-interface {v6}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3c

    :cond_46
    move-object/from16 v7, p0

    .line 43
    iget-object v8, v7, Linfo/flowersoft/theotown/cityloader/ComponentLoader;->missingDrafts:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_4d
    const/4 v3, 0x0

    .line 48
    :goto_4e
    invoke-interface {v6}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    if-eqz v3, :cond_c

    .line 50
    iget v0, v3, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v0, :cond_5d

    iget-object v0, v3, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->supportsSlope:Z

    if-eqz v0, :cond_c

    .line 51
    :cond_5d
    invoke-virtual/range {p2 .. p2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iget v8, v3, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    iget v9, v3, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    invoke-virtual {v0, v8, v9}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v8

    iget v9, v3, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    add-int/2addr v8, v9

    iput v8, v3, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    .line 53
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v8

    if-nez v8, :cond_85

    iget v8, v3, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-nez v8, :cond_85

    iget v8, v3, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result v0

    if-ne v8, v0, :cond_85

    move v4, v5

    :cond_85
    iput-boolean v4, v3, Linfo/flowersoft/theotown/city/objects/Road;->slope:Z

    .line 54
    invoke-virtual/range {p2 .. p2}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v0

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/RoadList;->add(Linfo/flowersoft/theotown/city/objects/Road;)Z

    .line 55
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v0

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v4

    iget v5, v3, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-virtual {v1, v0, v4, v5, v3}, Linfo/flowersoft/theotown/city/Tiles;->setRoad(IIILinfo/flowersoft/theotown/city/objects/Road;)V

    goto/16 :goto_c

    :cond_9d
    move-object/from16 v7, p0

    move-object/from16 v6, p1

    .line 58
    invoke-interface {v6}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    .line 61
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_123

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/city/objects/Bridge;

    .line 62
    iget v8, v6, Linfo/flowersoft/theotown/city/objects/Bridge;->tx:I

    iget v9, v6, Linfo/flowersoft/theotown/city/objects/Bridge;->sx:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 63
    iget v9, v6, Linfo/flowersoft/theotown/city/objects/Bridge;->ty:I

    iget v10, v6, Linfo/flowersoft/theotown/city/objects/Bridge;->sy:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 64
    invoke-static {v8, v9}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v10

    .line 65
    iget v11, v6, Linfo/flowersoft/theotown/city/objects/Bridge;->tx:I

    iget v12, v6, Linfo/flowersoft/theotown/city/objects/Bridge;->sx:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, v6, Linfo/flowersoft/theotown/city/objects/Bridge;->ty:I

    iget v13, v6, Linfo/flowersoft/theotown/city/objects/Bridge;->sy:I

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v12, v11, 0x1

    move v13, v4

    :goto_ed
    if-ge v13, v12, :cond_a8

    .line 67
    iget v14, v6, Linfo/flowersoft/theotown/city/objects/Bridge;->sx:I

    mul-int v15, v13, v8

    add-int/2addr v14, v15

    .line 68
    iget v15, v6, Linfo/flowersoft/theotown/city/objects/Bridge;->sy:I

    mul-int v16, v13, v9

    add-int v15, v15, v16

    .line 69
    invoke-virtual {v1, v14, v15, v4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-nez v3, :cond_103

    const/16 v16, 0x0

    goto :goto_120

    :cond_103
    if-lez v13, :cond_113

    if-ge v13, v11, :cond_113

    .line 73
    invoke-virtual {v1, v14, v15, v5, v3}, Linfo/flowersoft/theotown/city/Tiles;->setRoad(IIILinfo/flowersoft/theotown/city/objects/Road;)V

    .line 74
    iput v5, v3, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    const/4 v3, 0x0

    .line 75
    invoke-virtual {v1, v14, v15, v4, v3}, Linfo/flowersoft/theotown/city/Tiles;->setRoad(IIILinfo/flowersoft/theotown/city/objects/Road;)V

    move-object/from16 v16, v3

    goto :goto_120

    :cond_113
    const/16 v16, 0x0

    if-nez v13, :cond_11a

    .line 78
    iput v10, v3, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    goto :goto_120

    .line 81
    :cond_11a
    invoke-static {v10}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v14

    iput v14, v3, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    :goto_120
    add-int/lit8 v13, v13, 0x1

    goto :goto_ed

    .line 86
    :cond_123
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bridges"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RoadLoader"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public saveTag(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/city/City;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 100
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 101
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Road;

    .line 102
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v2

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v3

    iget v4, v1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-virtual {v0, v2, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    if-eq v2, v1, :cond_2c

    goto :goto_f

    .line 104
    :cond_2c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v2, 0x1

    .line 105
    invoke-virtual {v1, p1, v2}, Linfo/flowersoft/theotown/city/objects/Road;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;Z)V

    .line 106
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_f

    .line 108
    :cond_37
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
