###### Class info.flowersoft.theotown.components.airport.Airplane (info.flowersoft.theotown.components.airport.Airplane)
.class public Linfo/flowersoft/theotown/components/airport/Airplane;
.super Ljava/lang/Object;
.source "Airplane.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public airplaneDraft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

.field public frame:I

.field public id:I

.field public lastDayInCity:J

.field public name:Ljava/lang/String;

.field public originalName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILinfo/flowersoft/theotown/draft/FlyingObjectDraft;ILinfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->name:Ljava/lang/String;

    .line 38
    iput p1, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->id:I

    .line 39
    iput-object p2, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->airplaneDraft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    .line 40
    iput p3, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->frame:I

    .line 42
    invoke-virtual {p0, p4}, Linfo/flowersoft/theotown/components/airport/Airplane;->resolveOriginalName(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->name:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/airport/Airplane;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 34
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/components/airport/Airplane;->resolveOriginalName(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public getDraft()Linfo/flowersoft/theotown/draft/FlyingObjectDraft;
    .registers 2

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->airplaneDraft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    return-object v0
.end method

.method public getFrame()I
    .registers 2

    .line 46
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->frame:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 100
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->id:I

    return v0
.end method

.method public getLastDayInCity()J
    .registers 3

    .line 50
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->lastDayInCity:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->originalName:Ljava/lang/String;

    return-object v0

    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->name:Ljava/lang/String;

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 65
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_98

    goto :goto_4c

    :sswitch_16
    const-string v2, "frame"

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
    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_4c

    :cond_35
    const/4 v1, 0x2

    goto :goto_4c

    :sswitch_37
    const-string v2, "last day in city"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_4c

    :cond_40
    const/4 v1, 0x1

    goto :goto_4c

    :sswitch_42
    const-string v2, "airplane"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    packed-switch v1, :pswitch_data_ae

    .line 84
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 81
    :pswitch_53
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->frame:I

    goto :goto_0

    .line 70
    :pswitch_5a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->name:Ljava/lang/String;

    goto :goto_0

    .line 67
    :pswitch_61
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->id:I

    goto :goto_0

    .line 78
    :pswitch_68
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->lastDayInCity:J

    goto :goto_0

    .line 73
    :pswitch_6f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iput-object v1, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->airplaneDraft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    if-eqz v1, :cond_80

    goto :goto_0

    .line 75
    :cond_80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find airplane of id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_97
    return-void

    :sswitch_data_98
    .sparse-switch
        -0x285a60ae -> :sswitch_42
        -0x10614388 -> :sswitch_37
        0xd1b -> :sswitch_2c
        0x337a8b -> :sswitch_21
        0x5d2a96d -> :sswitch_16
    .end sparse-switch

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_68
        :pswitch_61
        :pswitch_5a
        :pswitch_53
    .end packed-switch
.end method

.method public final resolveOriginalName(Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->airplaneDraft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    rem-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->id:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->originalName:Ljava/lang/String;

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->id:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 93
    const-string v0, "name"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 94
    const-string v0, "airplane"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->airplaneDraft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 95
    const-string v0, "last day in city"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->lastDayInCity:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 96
    const-string v0, "frame"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->frame:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setLastDayInCity(J)V
    .registers 3

    .line 54
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->lastDayInCity:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 108
    iput-object p1, p0, Linfo/flowersoft/theotown/components/airport/Airplane;->name:Ljava/lang/String;

    return-void
.end method
