###### Class info.flowersoft.theotown.components.transportationsystem.TSSystem (info.flowersoft.theotown.components.transportationsystem.TSSystem)
.class public Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;
.super Ljava/lang/Object;
.source "TSSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;,
        Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;
    }
.end annotation


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

.field public final stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

.field public storage:Lvm2/LuaTable;

.field public final tempList:Lio/blueflower/stapel2d/util/IntList;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->tempList:Lio/blueflower/stapel2d/util/IntList;

    .line 49
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->city:Linfo/flowersoft/theotown/city/City;

    .line 50
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 51
    iput-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    .line 52
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->storage:Lvm2/LuaTable;

    .line 53
    new-instance v0, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Lvm2/LuaValue;
    .registers 3

    .line 363
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getImpl()Lvm2/LuaTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getLuaRepr()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 367
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getImpl()Lvm2/LuaTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getLuaRepr()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Ljava/lang/String;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 371
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getImpl()Lvm2/LuaTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getLuaRepr()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;
    .registers 2

    .line 57
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 243
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewFrame()I
    .registers 4

    .line 422
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getOwnerDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    .line 424
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->previewFrames:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 425
    aget v0, v1, v2

    return v0

    .line 426
    :cond_10
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->iconFrames:[I

    if-eqz v0, :cond_17

    .line 427
    aget v0, v0, v2

    return v0

    :cond_17
    return v2
.end method

.method public getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;
    .registers 3

    .line 251
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object p1

    return-object p1
.end method

.method public getStationByXY(II)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;
    .registers 4

    .line 255
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->getStationByXY(II)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object p1

    return-object p1
.end method

.method public getStationByXYLenient(II)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;
    .registers 8

    .line 270
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationByXY(II)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 276
    :cond_7
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return-object v1

    :cond_11
    const/4 v2, -0x2

    .line 280
    :goto_12
    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-gt v2, v3, :cond_4c

    .line 281
    iget-object v3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, p1, p2, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 282
    iget-object v4, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isSupportedRoad(Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v0, 0x1

    :goto_27
    const/16 v2, 0x8

    if-gt v0, v2, :cond_48

    .line 291
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v2

    add-int/2addr v2, p1

    .line 292
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v3

    add-int/2addr v3, p2

    .line 293
    iget-object v4, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-nez v4, :cond_3e

    goto :goto_44

    .line 295
    :cond_3e
    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationByXY(II)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v2

    if-nez v2, :cond_47

    :goto_44
    mul-int/lit8 v0, v0, 0x2

    goto :goto_27

    :cond_47
    return-object v2

    :cond_48
    return-object v1

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_4c
    return-object v1
.end method

.method public getStationIds(Lio/blueflower/stapel2d/util/IntList;)Lio/blueflower/stapel2d/util/IntList;
    .registers 3

    .line 247
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->getStationIds(Lio/blueflower/stapel2d/util/IntList;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object p1

    return-object p1
.end method

.method public getStations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSStation;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->getStations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStorage()Lvm2/LuaValue;
    .registers 2

    .line 357
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->storage:Lvm2/LuaTable;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .line 433
    const-string v0, "isSystemAvailable"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->call(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->toboolean()Z

    move-result v0

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    :goto_5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 64
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_70

    goto :goto_3b

    :sswitch_1b
    const-string v3, "stations"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_3b

    :cond_24
    const/4 v2, 0x2

    goto :goto_3b

    :sswitch_26
    const-string v3, "nstid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_3b

    :cond_2f
    const/4 v2, 0x1

    goto :goto_3b

    :sswitch_31
    const-string v3, "stg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    packed-switch v2, :pswitch_data_7e

    .line 80
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_5

    .line 66
    :pswitch_42
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 67
    :cond_45
    :goto_45
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 68
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->loadStation(Lio/blueflower/stapel2d/util/json/JsonReader;)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 71
    :cond_55
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_5

    .line 77
    :pswitch_59
    iget-object v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->setNextStationId(I)V

    goto :goto_5

    .line 74
    :pswitch_63
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Lio/blueflower/stapel2d/util/json/JsonReader;)Lvm2/LuaTable;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->storage:Lvm2/LuaTable;

    goto :goto_5

    .line 84
    :cond_6a
    iget-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->setStations(Ljava/util/List;)V

    return-void

    :sswitch_data_70
    .sparse-switch
        0x1be26 -> :sswitch_31
        0x64420aa -> :sswitch_26
        0x4e9425bf -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_63
        :pswitch_59
        :pswitch_42
    .end packed-switch
.end method

.method public final loadStation(Lio/blueflower/stapel2d/util/json/JsonReader;)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 103
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v13, v3

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    .line 104
    :goto_16
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_16e

    .line 105
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_1ba

    const/4 v1, -0x1

    const/16 v19, 0x0

    goto/16 :goto_f8

    :sswitch_2f
    const/16 v19, 0x0

    const-string v2, "waiting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto/16 :goto_f5

    :cond_3b
    const/16 v1, 0xd

    goto/16 :goto_f8

    :sswitch_3f
    const/16 v19, 0x0

    const-string v2, "atransferpd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    goto/16 :goto_f5

    :cond_4b
    const/16 v1, 0xc

    goto/16 :goto_f8

    :sswitch_4f
    const/16 v19, 0x0

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto/16 :goto_f5

    :cond_5b
    const/16 v1, 0xb

    goto/16 :goto_f8

    :sswitch_5f
    const/16 v19, 0x0

    const-string v2, "xys"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    goto/16 :goto_f5

    :cond_6b
    const/16 v1, 0xa

    goto/16 :goto_f8

    :sswitch_6f
    const/16 v19, 0x0

    const-string v2, "wot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    goto/16 :goto_f5

    :cond_7b
    const/16 v1, 0x9

    goto/16 :goto_f8

    :sswitch_7f
    const/16 v19, 0x0

    const-string v2, "stg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    goto/16 :goto_f5

    :cond_8b
    const/16 v1, 0x8

    goto/16 :goto_f8

    :sswitch_8f
    const/16 v19, 0x0

    const-string v2, "rot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    goto :goto_f5

    :cond_9a
    const/4 v1, 0x7

    goto/16 :goto_f8

    :sswitch_9d
    const/16 v19, 0x0

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a8

    goto :goto_f5

    :cond_a8
    const/4 v1, 0x6

    goto :goto_f8

    :sswitch_aa
    const/16 v19, 0x0

    const-string v2, "areaching"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b5

    goto :goto_f5

    :cond_b5
    const/4 v1, 0x5

    goto :goto_f8

    :sswitch_b7
    const/16 v19, 0x0

    const-string v2, "reaching"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c2

    goto :goto_f5

    :cond_c2
    const/4 v1, 0x4

    goto :goto_f8

    :sswitch_c4
    const/16 v19, 0x0

    const-string v2, "city y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    goto :goto_f5

    :cond_cf
    const/4 v1, 0x3

    goto :goto_f8

    :sswitch_d1
    const/16 v19, 0x0

    const-string v2, "city x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dc

    goto :goto_f5

    :cond_dc
    const/4 v1, 0x2

    goto :goto_f8

    :sswitch_de
    const/16 v19, 0x0

    const-string v2, "awaiting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e9

    goto :goto_f5

    :cond_e9
    const/4 v1, 0x1

    goto :goto_f8

    :sswitch_eb
    const/16 v19, 0x0

    const-string v2, "transfersld"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f7

    :goto_f5
    const/4 v1, -0x1

    goto :goto_f8

    :cond_f7
    move v1, v3

    :goto_f8
    packed-switch v1, :pswitch_data_1f4

    .line 154
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_16

    .line 124
    :pswitch_100
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v13

    goto/16 :goto_16

    .line 142
    :pswitch_106
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v1

    move v8, v1

    goto/16 :goto_16

    .line 121
    :pswitch_10d
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_16

    .line 110
    :pswitch_113
    new-instance v9, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v9}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 111
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 112
    :goto_11b
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_129

    .line 113
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v9, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_11b

    .line 115
    :cond_129
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_16

    .line 130
    :pswitch_12e
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v1

    move v4, v1

    goto/16 :goto_16

    .line 118
    :pswitch_135
    invoke-static/range {p1 .. p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Lio/blueflower/stapel2d/util/json/JsonReader;)Lvm2/LuaTable;

    move-result-object v10

    goto/16 :goto_16

    .line 133
    :pswitch_13b
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v1

    move v5, v1

    goto/16 :goto_16

    .line 107
    :pswitch_142
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v11

    goto/16 :goto_16

    .line 139
    :pswitch_148
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v1

    move v7, v1

    goto/16 :goto_16

    .line 127
    :pswitch_14f
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v14

    goto/16 :goto_16

    .line 151
    :pswitch_155
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v17

    goto/16 :goto_16

    .line 148
    :pswitch_15b
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v16

    goto/16 :goto_16

    .line 136
    :pswitch_161
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v1

    move v6, v1

    goto/16 :goto_16

    .line 145
    :pswitch_168
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v15

    goto/16 :goto_16

    :cond_16e
    const/16 v19, 0x0

    .line 157
    invoke-interface/range {p1 .. p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    if-ltz v11, :cond_1b9

    if-nez v9, :cond_178

    goto :goto_1b9

    :cond_178
    if-nez v10, :cond_17e

    .line 160
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v10

    :cond_17e
    if-nez v12, :cond_182

    .line 161
    const-string v12, ""

    :cond_182
    move-object v2, v9

    .line 163
    new-instance v9, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move v3, v13

    move-object v13, v12

    move-object v12, v10

    iget-object v10, v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move v1, v14

    move/from16 v20, v15

    move/from16 v14, v16

    move/from16 v15, v17

    invoke-direct/range {v9 .. v15}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;-><init>(Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;ILvm2/LuaTable;Ljava/lang/String;II)V

    .line 164
    iget-object v10, v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    new-instance v11, Linfo/flowersoft/theotown/util/TileSet;

    invoke-direct {v11, v2}, Linfo/flowersoft/theotown/util/TileSet;-><init>(Lio/blueflower/stapel2d/util/IntList;)V

    invoke-virtual {v10, v9, v11}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->updateStation(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;Linfo/flowersoft/theotown/util/TileSet;)V

    .line 165
    invoke-virtual {v9, v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->setWaiting(I)V

    .line 166
    invoke-virtual {v9, v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->setReaching(I)V

    .line 167
    invoke-virtual {v9, v4}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->setWaitingOverTime(F)V

    .line 168
    invoke-virtual {v9, v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->setReachingOverTime(F)V

    .line 170
    invoke-virtual {v9, v6}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->setAvgWaiting(F)V

    .line 171
    invoke-virtual {v9, v7}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->setAvgReaching(F)V

    .line 172
    invoke-virtual {v9, v8}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->setAvgTransferPerDay(F)V

    move/from16 v15, v20

    .line 173
    invoke-virtual {v9, v15}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->setTransferSinceLastDay(I)V

    return-object v9

    :cond_1b9
    :goto_1b9
    return-object v19

    :sswitch_data_1ba
    .sparse-switch
        -0x77bb86a0 -> :sswitch_eb
        -0x61246934 -> :sswitch_de
        -0x511210fd -> :sswitch_d1
        -0x511210fc -> :sswitch_c4
        -0x33ba9a71 -> :sswitch_b7
        -0x5cc8b10 -> :sswitch_aa
        0xd1b -> :sswitch_9d
        0x1b9d7 -> :sswitch_8f
        0x1be26 -> :sswitch_7f
        0x1cc9c -> :sswitch_6f
        0x1d192 -> :sswitch_5f
        0x337a8b -> :sswitch_4f
        0x3b23240 -> :sswitch_3f
        0x4289964d -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_1f4
    .packed-switch 0x0
        :pswitch_168
        :pswitch_161
        :pswitch_15b
        :pswitch_155
        :pswitch_14f
        :pswitch_148
        :pswitch_142
        :pswitch_13b
        :pswitch_135
        :pswitch_12e
        :pswitch_113
        :pswitch_10d
        :pswitch_106
        :pswitch_100
    .end packed-switch
.end method

.method public nextDay()V
    .registers 5

    .line 315
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->tempList:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->getStationIds(Lio/blueflower/stapel2d/util/IntList;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v0

    const/4 v1, 0x0

    .line 316
    :goto_9
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 317
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    .line 318
    iget-object v3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v2

    .line 319
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->nextDay()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public onAddBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 3

    .line 325
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    .line 326
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isStationBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isSpawnBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    return-void

    .line 327
    :cond_16
    :goto_16
    iget-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->markDirty()V

    return-void
.end method

.method public onAddBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)V
    .registers 3

    .line 339
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isBusStop(Linfo/flowersoft/theotown/draft/BusStopDraft;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->markDirty()V

    :cond_11
    return-void
.end method

.method public onAddRoad(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 3

    .line 347
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->hasConnection()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_14

    .line 348
    :cond_7
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isSupportedRoad(Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->markDirty()V

    :cond_14
    :goto_14
    return-void
.end method

.method public onRemoveBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 3

    .line 332
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    .line 333
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isStationBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isSpawnBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    return-void

    .line 334
    :cond_16
    :goto_16
    iget-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->markDirty()V

    return-void
.end method

.method public onRemoveBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)V
    .registers 3

    .line 343
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isBusStop(Linfo/flowersoft/theotown/draft/BusStopDraft;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->markDirty()V

    :cond_11
    return-void
.end method

.method public onRemoveRoad(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 3

    .line 352
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->hasConnection()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_14

    .line 353
    :cond_7
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->draft:Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isSupportedRoad(Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->markDirty()V

    :cond_14
    :goto_14
    return-void
.end method

.method public prepare()V
    .registers 2

    .line 306
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->markDirty()V

    .line 307
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->update()V

    return-void
.end method

.method public queryPassengers()I
    .registers 4

    .line 379
    const-string v0, "getPassengerCount"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->call(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 381
    invoke-virtual {v0}, Lvm2/LuaValue;->isnumber()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 382
    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optint(I)I

    move-result v0

    return v0

    :cond_14
    return v1
.end method

.method public queryRoutes()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;",
            ">;"
        }
    .end annotation

    .line 393
    const-string v0, "getRoutes"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->call(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move v3, v2

    .line 396
    :goto_d
    invoke-virtual {v0}, Lvm2/LuaValue;->length()I

    move-result v4

    if-gt v3, v4, :cond_84

    .line 397
    invoke-virtual {v0, v3}, Lvm2/LuaValue;->get(I)Lvm2/LuaValue;

    move-result-object v4

    .line 398
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v7

    .line 399
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v8

    .line 400
    const-string v5, "color"

    invoke-virtual {v4, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v5

    .line 401
    const-string v6, "stationIds"

    invoke-virtual {v4, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v6

    .line 402
    new-instance v10, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v10}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 403
    const-string v9, "mode"

    .line 404
    invoke-virtual {v4, v9}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v4

    sget-object v9, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;->ONE_SHOT:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 403
    invoke-static {v4}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;->valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    move-result-object v11

    move v4, v2

    .line 406
    :goto_59
    invoke-virtual {v6}, Lvm2/LuaValue;->length()I

    move-result v9

    if-gt v4, v9, :cond_6d

    .line 407
    invoke-virtual {v6, v4}, Lvm2/LuaValue;->get(I)Lvm2/LuaValue;

    move-result-object v9

    invoke-virtual {v9}, Lvm2/LuaValue;->checkint()I

    move-result v9

    invoke-virtual {v10, v9}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 410
    :cond_6d
    new-instance v6, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;

    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->PURPLE:Lio/blueflower/stapel2d/drawing/Color;

    new-instance v9, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v9}, Lio/blueflower/stapel2d/drawing/Color;-><init>()V

    .line 413
    invoke-static {v5, v4, v9}, Lio/blueflower/stapel2d/drawing/Color;->fromHex(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v9

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$1;)V

    .line 410
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_84
    return-object v1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    const-string v0, "stations"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 179
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->getStations()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 180
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    invoke-virtual {p0, p1, v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->saveStation(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 183
    :cond_22
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 185
    const-string v0, "stg"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 186
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->storage:Lvm2/LuaTable;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 188
    const-string v0, "nstid"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->getNextStationId()I

    move-result v0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public final saveStation(Lio/blueflower/stapel2d/util/json/JsonWriter;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 194
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 196
    const-string v0, "xys"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 197
    :goto_1a
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/TileSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 198
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/TileSet;->getPackedXY(I)I

    move-result v1

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 200
    :cond_32
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 202
    const-string v0, "stg"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 203
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getStorage()Lvm2/LuaTable;

    move-result-object v0

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 205
    const-string v0, "name"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 207
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getWaiting()I

    move-result v0

    if-lez v0, :cond_61

    .line 208
    const-string v0, "waiting"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getWaiting()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 210
    :cond_61
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getReaching()I

    move-result v0

    if-lez v0, :cond_74

    .line 211
    const-string v0, "reaching"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getReaching()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 214
    :cond_74
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getWaitingOverTime()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8c

    .line 215
    const-string v0, "wot"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getWaitingOverTime()F

    move-result v2

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 217
    :cond_8c
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getReachingOverTime()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a1

    .line 218
    const-string v0, "rot"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getReachingOverTime()F

    move-result v2

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 221
    :cond_a1
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getAvgWaiting()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b6

    .line 222
    const-string v0, "awaiting"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getAvgWaiting()F

    move-result v2

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 224
    :cond_b6
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getAvgReaching()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_cb

    .line 225
    const-string v0, "areaching"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getAvgReaching()F

    move-result v2

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 227
    :cond_cb
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getAvgTransferPerDay()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e0

    .line 228
    const-string v0, "atransferpd"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getAvgTransferPerDay()F

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 230
    :cond_e0
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTransferSinceLastDay()I

    move-result v0

    if-lez v0, :cond_f3

    .line 231
    const-string v0, "transfersld"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTransferSinceLastDay()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 234
    :cond_f3
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->isCity()Z

    move-result v0

    if-eqz v0, :cond_113

    .line 235
    const-string v0, "city x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getCityX()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 236
    const-string v0, "city y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getCityY()I

    move-result p2

    invoke-interface {v0, p2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 239
    :cond_113
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public update()V
    .registers 2

    .line 311
    iget-object v0, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->stationCollector:Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSStationCollector;->update()V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transportationsystem.TSSystem.AnonymousClass1 (info.flowersoft.theotown.components.transportationsystem.TSSystem$1)
.class public synthetic Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$1;
.super Ljava/lang/Object;
.source "TSSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.components.transportationsystem.TSSystem.TSRoute (info.flowersoft.theotown.components.transportationsystem.TSSystem$TSRoute)
.class public Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;
.super Ljava/lang/Object;
.source "TSSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TSRoute"
.end annotation


# instance fields
.field public final color:Lio/blueflower/stapel2d/drawing/Color;

.field public final id:Ljava/lang/String;

.field public final mode:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

.field public final name:Ljava/lang/String;

.field public final stationIds:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;)V
    .registers 6

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->id:Ljava/lang/String;

    .line 451
    iput-object p2, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->name:Ljava/lang/String;

    .line 452
    iput-object p3, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 453
    iput-object p4, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    .line 454
    iput-object p5, p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;->mode:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$1;)V
    .registers 7

    .line 442
    invoke-direct/range {p0 .. p5}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRoute;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/util/IntList;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.transportationsystem.TSSystem.TSRouteMode (info.flowersoft.theotown.components.transportationsystem.TSSystem$TSRouteMode)
.class public final enum Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;
.super Ljava/lang/Enum;
.source "TSSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TSRouteMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

.field public static final enum LOOP:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

.field public static final enum ONE_SHOT:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

.field public static final enum PING_PONG:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;
    .registers 3

    .line 436
    sget-object v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;->ONE_SHOT:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    sget-object v1, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;->LOOP:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    sget-object v2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;->PING_PONG:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    filled-new-array {v0, v1, v2}, [Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 437
    new-instance v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    const-string v1, "ONE_SHOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;->ONE_SHOT:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    .line 438
    new-instance v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    const-string v1, "LOOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;->LOOP:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    .line 439
    new-instance v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    const-string v1, "PING_PONG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;->PING_PONG:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    .line 436
    invoke-static {}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;->$values()[Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;->$VALUES:[Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 436
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 436
    const-class v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;
    .registers 1

    .line 436
    sget-object v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;->$VALUES:[Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/components/transportationsystem/TSSystem$TSRouteMode;

    return-object v0
.end method
