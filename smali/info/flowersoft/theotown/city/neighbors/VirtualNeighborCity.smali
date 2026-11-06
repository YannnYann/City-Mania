###### Class info.flowersoft.theotown.city.neighbors.VirtualNeighborCity (info.flowersoft.theotown.city.neighbors.VirtualNeighborCity)
.class public Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;
.super Linfo/flowersoft/theotown/city/neighbors/NeighborCity;
.source "VirtualNeighborCity.java"


# instance fields
.field public bodyDisposal:J

.field public invalid:Z

.field public luaRepr:Lvm2/LuaTable;

.field public name:Ljava/lang/String;

.field public owner:Linfo/flowersoft/theotown/draft/Draft;

.field public power:J

.field public storage:Lvm2/LuaTable;

.field public final survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

.field public wasteDisposal:J

.field public water:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 36
    new-instance v1, Linfo/flowersoft/theotown/city/TradingRelation;

    invoke-direct {v1}, Linfo/flowersoft/theotown/city/TradingRelation;-><init>()V

    const-string v6, ""

    const/4 v7, 0x1

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;-><init>(Linfo/flowersoft/theotown/city/TradingRelation;ZLjava/lang/String;JLjava/lang/String;Z)V

    .line 24
    new-instance p2, Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    invoke-direct {p2}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;-><init>()V

    iput-object p2, v0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    .line 37
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object p2

    invoke-virtual {p2, v3}, Linfo/flowersoft/theotown/city/TradingRelation;->setId(Ljava/lang/String;)V

    .line 39
    iput-object p1, v0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->owner:Linfo/flowersoft/theotown/draft/Draft;

    .line 40
    iput-object p3, v0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->name:Ljava/lang/String;

    .line 41
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object p1

    iput-object p1, v0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->storage:Lvm2/LuaTable;

    .line 42
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->setupTrading()V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v1, Linfo/flowersoft/theotown/city/TradingRelation;

    invoke-direct {v1}, Linfo/flowersoft/theotown/city/TradingRelation;-><init>()V

    const-string v6, ""

    const/4 v7, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;-><init>(Linfo/flowersoft/theotown/city/TradingRelation;ZLjava/lang/String;JLjava/lang/String;Z)V

    .line 24
    new-instance v1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    invoke-direct {v1}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;-><init>()V

    iput-object v1, v0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    .line 48
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    return-void
.end method


# virtual methods
.method public contains(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getAvailableBodyDisposal()J
    .registers 3

    .line 196
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->bodyDisposal:J

    return-wide v0
.end method

.method public getAvailablePower()J
    .registers 3

    .line 181
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->power:J

    return-wide v0
.end method

.method public getAvailableWasteDisposal()J
    .registers 3

    .line 191
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->wasteDisposal:J

    return-wide v0
.end method

.method public getAvailableWater()J
    .registers 3

    .line 186
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->water:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 146
    invoke-super {p0}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInhabitants()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getInhabitants(I)I
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getLuaRepr()Lvm2/LuaTable;
    .registers 2

    .line 120
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->luaRepr:Lvm2/LuaTable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->owner:Linfo/flowersoft/theotown/draft/Draft;

    return-object v0
.end method

.method public getPreviewImage()Lio/blueflower/stapel2d/drawing/Image;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStorage()Lvm2/LuaTable;
    .registers 2

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->storage:Lvm2/LuaTable;

    return-object v0
.end method

.method public getSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;
    .registers 2

    .line 176
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    return-object v0
.end method

.method public getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;
    .registers 2

    .line 151
    invoke-super {p0}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object v0

    return-object v0
.end method

.method public hasInfinityMoney()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPowerConnection()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public hasRoadConnection()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public hasWaterConnection()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isInvalid()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->invalid:Z

    return v0
.end method

.method public final load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 53
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_9c

    goto :goto_4c

    :sswitch_16
    const-string v2, "owner"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_4c

    :cond_1f
    const/4 v1, 0x4

    goto :goto_4c

    :sswitch_21
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_4c

    :cond_2a
    const/4 v1, 0x3

    goto :goto_4c

    :sswitch_2c
    const-string v2, "stg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_4c

    :cond_35
    const/4 v1, 0x2

    goto :goto_4c

    :sswitch_37
    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_4c

    :cond_40
    const/4 v1, 0x1

    goto :goto_4c

    :sswitch_42
    const-string v2, "trading"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    packed-switch v1, :pswitch_data_b2

    .line 72
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 55
    :pswitch_53
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->owner:Linfo/flowersoft/theotown/draft/Draft;

    goto :goto_0

    .line 61
    :pswitch_60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->name:Ljava/lang/String;

    goto :goto_0

    .line 64
    :pswitch_67
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Lio/blueflower/stapel2d/util/json/JsonReader;)Lvm2/LuaTable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->storage:Lvm2/LuaTable;

    goto :goto_0

    .line 58
    :pswitch_6e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_76
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 68
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/TradingRelation;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 69
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_0

    .line 76
    :cond_85
    iget-object p1, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->owner:Linfo/flowersoft/theotown/draft/Draft;

    if-nez p1, :cond_8d

    .line 77
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->setInvalid()V

    return-void

    .line 81
    :cond_8d
    iget-object p1, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->storage:Lvm2/LuaTable;

    if-nez p1, :cond_97

    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->storage:Lvm2/LuaTable;

    .line 82
    :cond_97
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->setupTrading()V

    return-void

    nop

    :sswitch_data_9c
    .sparse-switch
        -0x3f9ebadf -> :sswitch_42
        0xd1b -> :sswitch_37
        0x1be26 -> :sswitch_2c
        0x337a8b -> :sswitch_21
        0x653f2b3 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_76
        :pswitch_6e
        :pswitch_67
        :pswitch_60
        :pswitch_53
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->owner:Linfo/flowersoft/theotown/draft/Draft;

    if-eqz v0, :cond_11

    const-string v0, "owner"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->owner:Linfo/flowersoft/theotown/draft/Draft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 93
    :cond_11
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 94
    const-string v0, "name"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 95
    const-string v0, "stg"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 96
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->storage:Lvm2/LuaTable;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->serialize(Lvm2/LuaTable;Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    return-void
.end method

.method public setBodyDisposal(J)V
    .registers 3

    .line 141
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->bodyDisposal:J

    return-void
.end method

.method public setInvalid()V
    .registers 2

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->invalid:Z

    return-void
.end method

.method public setLuaRepr(Lvm2/LuaTable;)V
    .registers 2

    .line 116
    iput-object p1, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->luaRepr:Lvm2/LuaTable;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 124
    iput-object p1, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->name:Ljava/lang/String;

    return-void
.end method

.method public setPower(J)V
    .registers 3

    .line 129
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->power:J

    return-void
.end method

.method public setWasteDisposal(J)V
    .registers 3

    .line 137
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->wasteDisposal:J

    return-void
.end method

.method public setWater(J)V
    .registers 3

    .line 133
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->water:J

    return-void
.end method

.method public final setupTrading()V
    .registers 4

    .line 86
    iget-object v0, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->owner:Linfo/flowersoft/theotown/draft/Draft;

    if-eqz v0, :cond_2c

    .line 87
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "virtual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->owner:Linfo/flowersoft/theotown/draft/Draft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/neighbors/VirtualNeighborCity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/TradingRelation;->setId(Ljava/lang/String;)V

    :cond_2c
    return-void
.end method
