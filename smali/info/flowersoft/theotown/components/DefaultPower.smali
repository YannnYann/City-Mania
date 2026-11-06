###### Class info.flowersoft.theotown.components.DefaultPower (info.flowersoft.theotown.components.DefaultPower)
.class public final Linfo/flowersoft/theotown/components/DefaultPower;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "DefaultPower.java"


# instance fields
.field public worker:Linfo/flowersoft/theotown/components/power/PowerWorker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    .line 31
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 32
    :goto_b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 33
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wires"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 34
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 35
    :cond_20
    :goto_20
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 43
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    const-string v2, "$wire00"

    move v6, v0

    move v3, v1

    move v4, v3

    move v5, v4

    move v7, v5

    .line 44
    :goto_30
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c7

    .line 45
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_fa

    goto/16 :goto_9e

    :sswitch_47
    const-string v10, "connection dir"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_50

    goto :goto_9e

    :cond_50
    const/4 v9, 0x7

    goto :goto_9e

    :sswitch_52
    const-string v10, "punch"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5b

    goto :goto_9e

    :cond_5b
    const/4 v9, 0x6

    goto :goto_9e

    :sswitch_5d
    const-string v10, "frame"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_66

    goto :goto_9e

    :cond_66
    const/4 v9, 0x5

    goto :goto_9e

    :sswitch_68
    const-string v10, "id"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_71

    goto :goto_9e

    :cond_71
    const/4 v9, 0x4

    goto :goto_9e

    :sswitch_73
    const-string v10, "y"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7c

    goto :goto_9e

    :cond_7c
    const/4 v9, 0x3

    goto :goto_9e

    :sswitch_7e
    const-string v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_87

    goto :goto_9e

    :cond_87
    const/4 v9, 0x2

    goto :goto_9e

    :sswitch_89
    const-string v10, "p"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_92

    goto :goto_9e

    :cond_92
    move v9, v0

    goto :goto_9e

    :sswitch_94
    const-string v10, "f"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9d

    goto :goto_9e

    :cond_9d
    move v9, v1

    :goto_9e
    packed-switch v9, :pswitch_data_11c

    .line 67
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_30

    .line 64
    :pswitch_a5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v7

    goto :goto_30

    .line 47
    :pswitch_aa
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_30

    .line 53
    :pswitch_af
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v4

    goto/16 :goto_30

    .line 50
    :pswitch_b5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    goto/16 :goto_30

    .line 61
    :pswitch_bb
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    goto/16 :goto_30

    .line 57
    :pswitch_c1
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v5

    goto/16 :goto_30

    .line 70
    :cond_c7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 72
    sget-object v8, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/WireDraft;

    if-eqz v2, :cond_20

    .line 74
    new-instance v8, Linfo/flowersoft/theotown/city/objects/Wire;

    invoke-direct {v8, v2, v3, v4, v5}, Linfo/flowersoft/theotown/city/objects/Wire;-><init>(Linfo/flowersoft/theotown/draft/WireDraft;III)V

    .line 75
    invoke-virtual {v8, v6}, Linfo/flowersoft/theotown/city/objects/Wire;->setPunch(Z)V

    .line 76
    invoke-virtual {v8, v7}, Linfo/flowersoft/theotown/city/objects/Wire;->setConnection(I)V

    .line 77
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget v2, v2, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    invoke-virtual {v5, v3, v4, v2, v8}, Linfo/flowersoft/theotown/city/Tiles;->setWire(IIILinfo/flowersoft/theotown/city/objects/Wire;)V

    .line 78
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object v2

    invoke-virtual {v2, v8}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 81
    :cond_ef
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_b

    .line 83
    :cond_f4
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_b

    :cond_f9
    return-void

    :sswitch_data_fa
    .sparse-switch
        0x66 -> :sswitch_94
        0x70 -> :sswitch_89
        0x78 -> :sswitch_7e
        0x79 -> :sswitch_73
        0xd1b -> :sswitch_68
        0x5d2a96d -> :sswitch_5d
        0x661212e -> :sswitch_52
        0x4b9df04b -> :sswitch_47
    .end sparse-switch

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_bb
        :pswitch_b5
        :pswitch_af
        :pswitch_aa
        :pswitch_c1
        :pswitch_bb
        :pswitch_a5
    .end packed-switch
.end method


# virtual methods
.method public availablePower()I
    .registers 2

    const/4 v0, -0x1

    .line 185
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultPower;->availablePower(I)I

    move-result v0

    return v0
.end method

.method public availablePower(I)I
    .registers 7

    .line 201
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPower;->worker:Linfo/flowersoft/theotown/components/power/PowerWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/power/PowerWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 205
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1f

    if-ne p1, v2, :cond_26

    :cond_1f
    int-to-float v1, v1

    .line 207
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->getProduced()F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_29
    return v1
.end method

.method public availablePowerBuildings()I
    .registers 2

    const/4 v0, -0x1

    .line 283
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultPower;->availablePowerBuildings(I)I

    move-result v0

    return v0
.end method

.method public availablePowerBuildings(I)I
    .registers 7

    .line 287
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPower;->worker:Linfo/flowersoft/theotown/components/power/PowerWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/power/PowerWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 291
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1f

    if-ne p1, v2, :cond_28

    .line 293
    :cond_1f
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->getProducer()Linfo/flowersoft/theotown/util/MultiList$SingleList;

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

    .line 97
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 99
    new-instance v0, Linfo/flowersoft/theotown/components/power/PowerWorker;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/power/PowerWorker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPower;->worker:Linfo/flowersoft/theotown/components/power/PowerWorker;

    .line 100
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/components/CityComponent;->addWorker(Lio/blueflower/stapel2d/util/CyclicWorker;)V

    return-void
.end method

.method public calculate()V
    .registers 2

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPower;->worker:Linfo/flowersoft/theotown/components/power/PowerWorker;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/CyclicWorker;->startAnytime()V

    return-void
.end method

.method public consumedPower()I
    .registers 2

    const/4 v0, -0x1

    .line 189
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultPower;->consumedPower(I)I

    move-result v0

    return v0
.end method

.method public consumedPower(I)I
    .registers 7

    .line 218
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPower;->worker:Linfo/flowersoft/theotown/components/power/PowerWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/power/PowerWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 222
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1f

    if-ne p1, v2, :cond_26

    :cond_1f
    int-to-float v1, v1

    .line 224
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->getUsed()F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_29
    return v1
.end method

.method public consumedPowerBuildings()I
    .registers 2

    const/4 v0, -0x1

    .line 304
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultPower;->consumedPowerBuildings(I)I

    move-result v0

    return v0
.end method

.method public consumedPowerBuildings(I)I
    .registers 7

    .line 308
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPower;->worker:Linfo/flowersoft/theotown/components/power/PowerWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/power/PowerWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 312
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1f

    if-ne p1, v2, :cond_28

    .line 314
    :cond_1f
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->getNeeder()Linfo/flowersoft/theotown/util/MultiList$SingleList;

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

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPower;->worker:Linfo/flowersoft/theotown/components/power/PowerWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/power/PowerWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 143
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final getGroup(I)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;
    .registers 5

    .line 173
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPower;->worker:Linfo/flowersoft/theotown/components/power/PowerWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/power/PowerWorker;->getLastGroups()Ljava/util/Set;

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

    check-cast p1, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    return-object p1

    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNetwork(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 5

    .line 325
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPower;->worker:Linfo/flowersoft/theotown/components/power/PowerWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/power/PowerWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 329
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    .line 330
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->getProducer()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v2

    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    return v1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_27
    const/4 p1, -0x2

    return p1
.end method

.method public getType()I
    .registers 2

    .line 0
    const/4 v0, 0x5

    return v0
.end method

.method public getWorker()Linfo/flowersoft/theotown/components/power/PowerWorker;
    .registers 2

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPower;->worker:Linfo/flowersoft/theotown/components/power/PowerWorker;

    return-object v0
.end method

.method public nativeAvailablePower()I
    .registers 2

    const/4 v0, -0x1

    .line 193
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultPower;->nativeAvailablePower(I)I

    move-result v0

    return v0
.end method

.method public nativeAvailablePower(I)I
    .registers 12

    .line 234
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPower;->worker:Linfo/flowersoft/theotown/components/power/PowerWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/power/PowerWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 238
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    move v3, v2

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    const/4 v5, -0x1

    if-eq p1, v5, :cond_20

    if-ne p1, v3, :cond_3f

    :cond_20
    move v5, v1

    .line 240
    :goto_21
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->getProducer()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3f

    int-to-long v6, v2

    .line 241
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->getProducer()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v2

    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getPower()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_42
    return v2

    :cond_43
    return v1
.end method

.method public nativeConsumedPower()I
    .registers 2

    const/4 v0, -0x1

    .line 197
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultPower;->nativeConsumedPower(I)I

    move-result v0

    return v0
.end method

.method public nativeConsumedPower(I)I
    .registers 12

    .line 252
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultPower;->worker:Linfo/flowersoft/theotown/components/power/PowerWorker;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/power/PowerWorker;->getLastGroups()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 256
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    move v3, v2

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    const/4 v5, -0x1

    if-eq p1, v5, :cond_20

    if-ne p1, v3, :cond_3f

    :cond_20
    move v5, v1

    .line 258
    :goto_21
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->getNeeder()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3f

    int-to-long v6, v2

    .line 259
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->getNeeder()Linfo/flowersoft/theotown/util/MultiList$SingleList;

    move-result-object v2

    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getPower()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_42
    return v2

    :cond_43
    return v1
.end method

.method public sampleConsumer(I)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 4

    .line 161
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultPower;->getGroup(I)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 164
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->getNeeder()Linfo/flowersoft/theotown/util/MultiList$SingleList;

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
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultPower;->getGroup(I)Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 152
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/power/PowerWorker$EnergyGroup;->getProducer()Linfo/flowersoft/theotown/util/MultiList$SingleList;

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
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    const-string v0, "wires"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 105
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 106
    :goto_a
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_97

    move v2, v0

    .line 107
    :goto_13
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_93

    .line 108
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v2, v1}, Linfo/flowersoft/theotown/city/Tiles;->hasWire(II)Z

    move-result v3

    if-eqz v3, :cond_90

    const/4 v3, -0x1

    :goto_24
    const/4 v4, 0x1

    if-gt v3, v4, :cond_90

    .line 110
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v2, v1, v3}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v4

    if-eqz v4, :cond_8d

    .line 113
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 114
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v6, "$wire00"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 115
    const-string v5, "id"

    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v5

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v6

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 117
    :cond_4f
    const-string v5, "x"

    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v5

    invoke-interface {v5, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 118
    const-string v5, "y"

    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v5

    invoke-interface {v5, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 119
    const-string v5, "f"

    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v5

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Wire;->getFrame()I

    move-result v6

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 120
    const-string v5, "p"

    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v5

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch()Z

    move-result v6

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 122
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Wire;->getConnectionDir()I

    move-result v4

    if-eqz v4, :cond_8a

    .line 124
    const-string v5, "connection dir"

    invoke-interface {p1, v5}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v5

    invoke-interface {v5, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 127
    :cond_8a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_90
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 133
    :cond_97
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public usageRatio()F
    .registers 2

    const/4 v0, -0x1

    .line 269
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultPower;->usageRatio(I)F

    move-result v0

    return v0
.end method

.method public usageRatio(I)F
    .registers 5

    .line 273
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultPower;->consumedPower(I)I

    move-result v0

    int-to-float v0, v0

    .line 274
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultPower;->availablePower(I)I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_11

    div-float/2addr v0, p1

    return v0

    :cond_11
    return v1
.end method
