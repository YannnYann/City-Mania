###### Class info.flowersoft.theotown.components.DefaultWater (info.flowersoft.theotown.components.DefaultWater)
.class public final Linfo/flowersoft/theotown/components/DefaultWater;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "DefaultWater.java"


# instance fields
.field public worker:Linfo/flowersoft/theotown/components/water/WaterWorker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    .line 28
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 29
    :goto_a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 30
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pipes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 31
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 32
    :cond_1f
    :goto_1f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 39
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    const-string v1, "$pipe00"

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 40
    :goto_2e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 41
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_d4

    goto :goto_85

    :sswitch_44
    const-string v8, "connection dir"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4d

    goto :goto_85

    :cond_4d
    const/4 v7, 0x5

    goto :goto_85

    :sswitch_4f
    const-string v8, "frame"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_58

    goto :goto_85

    :cond_58
    const/4 v7, 0x4

    goto :goto_85

    :sswitch_5a
    const-string v8, "id"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_63

    goto :goto_85

    :cond_63
    const/4 v7, 0x3

    goto :goto_85

    :sswitch_65
    const-string v8, "y"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6e

    goto :goto_85

    :cond_6e
    const/4 v7, 0x2

    goto :goto_85

    :sswitch_70
    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_79

    goto :goto_85

    :cond_79
    const/4 v7, 0x1

    goto :goto_85

    :sswitch_7b
    const-string v8, "f"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_84

    goto :goto_85

    :cond_84
    move v7, v0

    :goto_85
    packed-switch v7, :pswitch_data_ee

    .line 59
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_2e

    .line 56
    :pswitch_8c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v5

    goto :goto_2e

    .line 43
    :pswitch_91
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    .line 49
    :pswitch_96
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    goto :goto_2e

    .line 46
    :pswitch_9b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    goto :goto_2e

    .line 53
    :pswitch_a0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v4

    goto :goto_2e

    .line 62
    :cond_a5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 63
    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/PipeDraft;

    if-eqz v1, :cond_1f

    .line 65
    new-instance v6, Linfo/flowersoft/theotown/city/objects/Pipe;

    invoke-direct {v6, v1, v2, v3, v4}, Linfo/flowersoft/theotown/city/objects/Pipe;-><init>(Linfo/flowersoft/theotown/draft/PipeDraft;III)V

    .line 66
    invoke-virtual {v6, v5}, Linfo/flowersoft/theotown/city/objects/Pipe;->setConnection(I)V

    .line 67
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, v2, v3, v6}, Linfo/flowersoft/theotown/city/Tiles;->setPipe(IILinfo/flowersoft/theotown/city/objects/Pipe;)V

    .line 68
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v1

    invoke-virtual {v1, v6}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 71
    :cond_c8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_a

    .line 73
    :cond_cd
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_a

    :cond_d2
    return-void

    nop

    :sswitch_data_d4
    .sparse-switch
        0x66 -> :sswitch_7b
        0x78 -> :sswitch_70
        0x79 -> :sswitch_65
        0xd1b -> :sswitch_5a
        0x5d2a96d -> :sswitch_4f
        0x4b9df04b -> :sswitch_44
    .end sparse-switch

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_9b
        :pswitch_96
        :pswitch_91
        :pswitch_a0
        :pswitch_8c
    .end packed-switch
.end method


# virtual methods
.method public availableWater()J
    .registers 3

    const/4 v0, -0x1

    .line 133
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultWater;->availableWater(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public availableWater(I)J
    .registers 8

    .line 185
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWater;->worker:Linfo/flowersoft/theotown/components/water/WaterWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/water/WaterWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2a

    .line 189
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    const/4 v5, -0x1

    if-eq p1, v5, :cond_20

    if-ne p1, v3, :cond_27

    :cond_20
    long-to-float v1, v1

    .line 191
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->getWater()F

    move-result v2

    add-float/2addr v1, v2

    float-to-long v1, v1

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2a
    return-wide v1
.end method

.method public availableWaterBuildings()I
    .registers 2

    const/4 v0, -0x1

    .line 265
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultWater;->availableWaterBuildings(I)I

    move-result v0

    return v0
.end method

.method public availableWaterBuildings(I)I
    .registers 7

    .line 269
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWater;->worker:Linfo/flowersoft/theotown/components/water/WaterWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/water/WaterWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 273
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1f

    if-ne p1, v2, :cond_28

    .line 275
    :cond_1f
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->getProducer()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v3

    add-int/2addr v1, v3

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2b
    return v1
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 114
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 116
    new-instance v0, Linfo/flowersoft/theotown/components/water/WaterWorker;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/water/WaterWorker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWater;->worker:Linfo/flowersoft/theotown/components/water/WaterWorker;

    .line 117
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/components/CityComponent;->addWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    return-void
.end method

.method public calculate()V
    .registers 2

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWater;->worker:Linfo/flowersoft/theotown/components/water/WaterWorker;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/CyclicWorker;->startAnytime()V

    return-void
.end method

.method public consumedWater()J
    .registers 3

    const/4 v0, -0x1

    .line 137
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultWater;->consumedWater(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public consumedWater(I)J
    .registers 8

    .line 201
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWater;->worker:Linfo/flowersoft/theotown/components/water/WaterWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/water/WaterWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2a

    .line 205
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    const/4 v5, -0x1

    if-eq p1, v5, :cond_20

    if-ne p1, v3, :cond_27

    :cond_20
    long-to-float v1, v1

    .line 207
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->getUsage()F

    move-result v2

    add-float/2addr v1, v2

    float-to-long v1, v1

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2a
    return-wide v1
.end method

.method public consumedWaterBuildings()I
    .registers 2

    const/4 v0, -0x1

    .line 285
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultWater;->consumedWaterBuildings(I)I

    move-result v0

    return v0
.end method

.method public consumedWaterBuildings(I)I
    .registers 7

    .line 289
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWater;->worker:Linfo/flowersoft/theotown/components/water/WaterWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/water/WaterWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 293
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1f

    if-ne p1, v2, :cond_28

    .line 295
    :cond_1f
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->getNeeder()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v3

    add-int/2addr v1, v3

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2b
    return v1
.end method

.method public countNetworks()I
    .registers 2

    .line 125
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWater;->worker:Linfo/flowersoft/theotown/components/water/WaterWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/water/WaterWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 127
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final getGroup(I)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;
    .registers 5

    .line 173
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWater;->worker:Linfo/flowersoft/theotown/components/water/WaterWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/water/WaterWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 174
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v1, p1, :cond_2e

    .line 175
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, p1, :cond_21

    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 177
    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    return-object p1

    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNetwork(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 7

    .line 335
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWater;->worker:Linfo/flowersoft/theotown/components/water/WaterWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/water/WaterWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 339
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    .line 340
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->getProducer()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v4

    invoke-virtual {v4, p1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    return v3

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 347
    :cond_28
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    .line 348
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->getNeeder()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    return v2

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_46
    const/4 p1, -0x2

    return p1
.end method

.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0x8

    return v0
.end method

.method public getWaterWaste()F
    .registers 2

    const/4 v0, -0x1

    .line 305
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultWater;->getWaterWaste(I)F

    move-result v0

    return v0
.end method

.method public getWaterWaste(I)F
    .registers 8

    .line 309
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWater;->worker:Linfo/flowersoft/theotown/components/water/WaterWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/water/WaterWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 313
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v1

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    const/4 v5, -0x1

    if-eq p1, v5, :cond_20

    if-ne p1, v2, :cond_25

    .line 315
    :cond_20
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->getWaste()F

    move-result v4

    add-float/2addr v3, v4

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 319
    :cond_28
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 321
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultWater;->availableWater(I)J

    move-result-wide v2

    long-to-float p1, v2

    cmpl-float v2, p1, v1

    if-lez v2, :cond_38

    div-float/2addr v0, p1

    mul-float/2addr v0, v0

    return v0

    :cond_38
    return v1
.end method

.method public getWorker()Linfo/flowersoft/theotown/components/water/WaterWorker;
    .registers 2

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWater;->worker:Linfo/flowersoft/theotown/components/water/WaterWorker;

    return-object v0
.end method

.method public nativeAvailableWater()J
    .registers 3

    const/4 v0, -0x1

    .line 141
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultWater;->nativeAvailableWater(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public nativeAvailableWater(I)J
    .registers 11

    .line 217
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWater;->worker:Linfo/flowersoft/theotown/components/water/WaterWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/water/WaterWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_41

    .line 221
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    const/4 v6, -0x1

    if-eq p1, v6, :cond_21

    if-ne p1, v4, :cond_3e

    :cond_21
    move v6, v3

    .line 223
    :goto_22
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->getProducer()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v7

    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3e

    .line 224
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->getProducer()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v7

    invoke-virtual {v7, v6}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getWater()J

    move-result-wide v7

    add-long/2addr v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_41
    return-wide v1
.end method

.method public nativeConsumedWater()J
    .registers 3

    const/4 v0, -0x1

    .line 145
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultWater;->nativeConsumedWater(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public nativeConsumedWater(I)J
    .registers 11

    .line 234
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultWater;->worker:Linfo/flowersoft/theotown/components/water/WaterWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/water/WaterWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_41

    .line 238
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    const/4 v6, -0x1

    if-eq p1, v6, :cond_21

    if-ne p1, v4, :cond_3e

    :cond_21
    move v6, v3

    .line 240
    :goto_22
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->getNeeder()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v7

    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3e

    .line 241
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->getNeeder()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v7

    invoke-virtual {v7, v6}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->getWater()J

    move-result-wide v7

    sub-long/2addr v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_41
    return-wide v1
.end method

.method public sampleConsumer(I)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 4

    .line 161
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultWater;->getGroup(I)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 164
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->getNeeder()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 166
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    return-object p1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public sampleProducer(I)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 4

    .line 149
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultWater;->getGroup(I)Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 152
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/water/WaterWorker$WaterGroup;->getProducer()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 154
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    return-object p1

    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    const-string v0, "pipes"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 83
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 84
    :goto_a
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_7b

    move v2, v0

    .line 85
    :goto_13
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_78

    .line 86
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v3

    if-nez v3, :cond_24

    goto :goto_75

    .line 89
    :cond_24
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 90
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Pipe;->getDraft()Linfo/flowersoft/theotown/draft/PipeDraft;

    move-result-object v4

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v5, "$pipe00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 91
    const-string v4, "id"

    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v4

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Pipe;->getDraft()Linfo/flowersoft/theotown/draft/PipeDraft;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 93
    :cond_44
    const-string v4, "x"

    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v4

    invoke-interface {v4, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 94
    const-string v4, "y"

    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v4

    invoke-interface {v4, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 95
    const-string v4, "f"

    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v4

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Pipe;->getFrame()I

    move-result v5

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 97
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Pipe;->getConnectionDir()I

    move-result v3

    if-eqz v3, :cond_72

    .line 99
    const-string v4, "connection dir"

    invoke-interface {p1, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 102
    :cond_72
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :goto_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 105
    :cond_7b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public usageRatio()F
    .registers 2

    const/4 v0, -0x1

    .line 251
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultWater;->usageRatio(I)F

    move-result v0

    return v0
.end method

.method public usageRatio(I)F
    .registers 5

    .line 255
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultWater;->consumedWater(I)J

    move-result-wide v0

    long-to-float v0, v0

    .line 256
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultWater;->availableWater(I)J

    move-result-wide v1

    long-to-float p1, v1

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_11

    div-float/2addr v0, p1

    return v0

    :cond_11
    return v1
.end method
