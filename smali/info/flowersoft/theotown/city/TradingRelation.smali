###### Class info.flowersoft.theotown.city.TradingRelation (info.flowersoft.theotown.city.TradingRelation)
.class public Linfo/flowersoft/theotown/city/TradingRelation;
.super Ljava/lang/Object;
.source "TradingRelation.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public bodyDisposalExport:J

.field public energyExport:J

.field public id:Ljava/lang/String;

.field public wasteDisposalExport:J

.field public waterExport:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createReversed(Ljava/lang/String;)Linfo/flowersoft/theotown/city/TradingRelation;
    .registers 5

    .line 109
    new-instance v0, Linfo/flowersoft/theotown/city/TradingRelation;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/TradingRelation;-><init>()V

    .line 110
    iput-object p1, v0, Linfo/flowersoft/theotown/city/TradingRelation;->id:Ljava/lang/String;

    .line 111
    iget-wide v1, p0, Linfo/flowersoft/theotown/city/TradingRelation;->energyExport:J

    neg-long v1, v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/city/TradingRelation;->energyExport:J

    .line 112
    iget-wide v1, p0, Linfo/flowersoft/theotown/city/TradingRelation;->waterExport:J

    neg-long v1, v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/city/TradingRelation;->waterExport:J

    .line 113
    iget-wide v1, p0, Linfo/flowersoft/theotown/city/TradingRelation;->wasteDisposalExport:J

    neg-long v1, v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/city/TradingRelation;->wasteDisposalExport:J

    .line 114
    iget-wide v1, p0, Linfo/flowersoft/theotown/city/TradingRelation;->bodyDisposalExport:J

    neg-long v1, v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/city/TradingRelation;->bodyDisposalExport:J

    return-object v0
.end method

.method public getBodyDisposalExport()J
    .registers 3

    .line 101
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/TradingRelation;->bodyDisposalExport:J

    return-wide v0
.end method

.method public getEnergyExport()J
    .registers 3

    .line 77
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/TradingRelation;->energyExport:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/city/TradingRelation;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getWasteDisposalExport()J
    .registers 3

    .line 93
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/TradingRelation;->wasteDisposalExport:J

    return-wide v0
.end method

.method public getWaterExport()J
    .registers 3

    .line 85
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/TradingRelation;->waterExport:J

    return-wide v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 32
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_88

    goto :goto_4c

    :sswitch_16
    const-string v2, "waste disposal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_4c

    :cond_1f
    const/4 v1, 0x4

    goto :goto_4c

    :sswitch_21
    const-string v2, "water"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_4c

    :cond_2a
    const/4 v1, 0x3

    goto :goto_4c

    :sswitch_2c
    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_4c

    :cond_35
    const/4 v1, 0x2

    goto :goto_4c

    :sswitch_37
    const-string v2, "body disposal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_4c

    :cond_40
    const/4 v1, 0x1

    goto :goto_4c

    :sswitch_42
    const-string v2, "energy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    packed-switch v1, :pswitch_data_9e

    .line 54
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 48
    :pswitch_53
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/TradingRelation;->wasteDisposalExport:J

    goto :goto_0

    .line 45
    :pswitch_5a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/TradingRelation;->waterExport:J

    goto :goto_0

    .line 34
    :pswitch_61
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_71

    .line 35
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    .line 36
    const-string v0, "<unset>"

    iput-object v0, p0, Linfo/flowersoft/theotown/city/TradingRelation;->id:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_71
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/TradingRelation;->id:Ljava/lang/String;

    goto :goto_0

    .line 51
    :pswitch_78
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/TradingRelation;->bodyDisposalExport:J

    goto :goto_0

    .line 42
    :pswitch_7f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/TradingRelation;->energyExport:J

    goto/16 :goto_0

    :cond_87
    return-void

    :sswitch_data_88
    .sparse-switch
        -0x4d68cd78 -> :sswitch_42
        -0x22370591 -> :sswitch_37
        0xd1b -> :sswitch_2c
        0x6bac517 -> :sswitch_21
        0x44b397f7 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_78
        :pswitch_61
        :pswitch_5a
        :pswitch_53
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/TradingRelation;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 62
    const-string v0, "energy"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/city/TradingRelation;->energyExport:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 63
    const-string v0, "water"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/city/TradingRelation;->waterExport:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 64
    const-string v0, "waste disposal"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/city/TradingRelation;->wasteDisposalExport:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 65
    const-string v0, "body disposal"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-wide v0, p0, Linfo/flowersoft/theotown/city/TradingRelation;->bodyDisposalExport:J

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setBodyDisposalExport(J)V
    .registers 3

    .line 105
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/TradingRelation;->bodyDisposalExport:J

    return-void
.end method

.method public setEnergyExport(J)V
    .registers 3

    .line 81
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/TradingRelation;->energyExport:J

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Linfo/flowersoft/theotown/city/TradingRelation;->id:Ljava/lang/String;

    return-void
.end method

.method public setWasteDisposalExport(J)V
    .registers 3

    .line 97
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/TradingRelation;->wasteDisposalExport:J

    return-void
.end method

.method public setWaterExport(J)V
    .registers 3

    .line 89
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/TradingRelation;->waterExport:J

    return-void
.end method
