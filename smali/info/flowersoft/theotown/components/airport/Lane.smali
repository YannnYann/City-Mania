###### Class info.flowersoft.theotown.components.airport.Lane (info.flowersoft.theotown.components.airport.Lane)
.class public Linfo/flowersoft/theotown/components/airport/Lane;
.super Ljava/lang/Object;
.source "Lane.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public airplane:Linfo/flowersoft/theotown/components/airport/Airplane;

.field public id:I

.field public name:Ljava/lang/String;

.field public originalName:Ljava/lang/String;

.field public realLane:Z

.field public sx:I

.field public sy:I

.field public timeUnlockable:Linfo/flowersoft/theotown/util/TimeUnlockable;

.field public tx:I

.field public ty:I


# direct methods
.method public constructor <init>(ILinfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->name:Ljava/lang/String;

    .line 25
    invoke-static {}, Linfo/flowersoft/theotown/util/TimeUnlockable;->createUnlocked()Linfo/flowersoft/theotown/util/TimeUnlockable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->timeUnlockable:Linfo/flowersoft/theotown/util/TimeUnlockable;

    .line 34
    iput p1, p0, Linfo/flowersoft/theotown/components/airport/Lane;->id:I

    .line 36
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/components/airport/Lane;->initOriginalName(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->name:Ljava/lang/String;

    .line 25
    invoke-static {}, Linfo/flowersoft/theotown/util/TimeUnlockable;->createUnlocked()Linfo/flowersoft/theotown/util/TimeUnlockable;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->timeUnlockable:Linfo/flowersoft/theotown/util/TimeUnlockable;

    .line 40
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/airport/Lane;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 42
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/components/airport/Lane;->initOriginalName(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public getAirplane()Linfo/flowersoft/theotown/components/airport/Airplane;
    .registers 2

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->airplane:Linfo/flowersoft/theotown/components/airport/Airplane;

    return-object v0
.end method

.method public getDistance(II)I
    .registers 5

    .line 155
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->sy:I

    iget v1, p0, Linfo/flowersoft/theotown/components/airport/Lane;->ty:I

    if-ne v0, v1, :cond_19

    .line 156
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->sx:I

    sub-int/2addr v0, p1

    iget v1, p0, Linfo/flowersoft/theotown/components/airport/Lane;->tx:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->sy:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1

    :cond_19
    sub-int/2addr v0, p2

    sub-int/2addr p2, v1

    .line 158
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->sx:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p2, p1

    return p2
.end method

.method public getId()I
    .registers 2

    .line 103
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->originalName:Ljava/lang/String;

    return-object v0

    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSx()I
    .registers 2

    .line 135
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->sx:I

    return v0
.end method

.method public getSy()I
    .registers 2

    .line 139
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->sy:I

    return v0
.end method

.method public getTimeUnlockable()Linfo/flowersoft/theotown/util/TimeUnlockable;
    .registers 2

    .line 127
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->timeUnlockable:Linfo/flowersoft/theotown/util/TimeUnlockable;

    return-object v0
.end method

.method public getTx()I
    .registers 2

    .line 143
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->tx:I

    return v0
.end method

.method public getTy()I
    .registers 2

    .line 147
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->ty:I

    return v0
.end method

.method public hasAirplane()Z
    .registers 2

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->airplane:Linfo/flowersoft/theotown/components/airport/Airplane;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public hasRealLane()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->realLane:Z

    return v0
.end method

.method public final initOriginalName(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LANE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->id:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/airport/Lane;->originalName:Ljava/lang/String;

    return-void
.end method

.method public isActive()Z
    .registers 2

    .line 131
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/Lane;->hasRealLane()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/Lane;->hasAirplane()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/airport/Lane;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isUnlocked()Z
    .registers 2

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->timeUnlockable:Linfo/flowersoft/theotown/util/TimeUnlockable;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/TimeUnlockable;->isUnlocked()Z

    move-result v0

    return v0
.end method

.method public length()I
    .registers 3

    .line 151
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->tx:I

    iget v1, p0, Linfo/flowersoft/theotown/components/airport/Lane;->sx:I

    sub-int/2addr v0, v1

    iget v1, p0, Linfo/flowersoft/theotown/components/airport/Lane;->ty:I

    add-int/2addr v0, v1

    iget v1, p0, Linfo/flowersoft/theotown/components/airport/Lane;->sy:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 48
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_9a

    goto :goto_4c

    :sswitch_16
    const-string v2, "time unlockable"

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
    const-string v2, "lane"

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
    const-string v2, "active"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    packed-switch v1, :pswitch_data_b0

    .line 72
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 67
    :pswitch_53
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 68
    new-instance v0, Linfo/flowersoft/theotown/util/TimeUnlockable;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/TimeUnlockable;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->timeUnlockable:Linfo/flowersoft/theotown/util/TimeUnlockable;

    .line 69
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_0

    .line 53
    :pswitch_61
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->name:Ljava/lang/String;

    goto :goto_0

    .line 56
    :pswitch_68
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 57
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->sx:I

    .line 58
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->sy:I

    .line 59
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->tx:I

    .line 60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->ty:I

    .line 61
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 50
    :pswitch_88
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->id:I

    goto/16 :goto_0

    .line 64
    :pswitch_90
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->realLane:Z

    goto/16 :goto_0

    :cond_98
    return-void

    nop

    :sswitch_data_9a
    .sparse-switch
        -0x54d080fa -> :sswitch_42
        0xd1b -> :sswitch_37
        0x3291ec -> :sswitch_2c
        0x337a8b -> :sswitch_21
        0x5ba665d1 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_90
        :pswitch_88
        :pswitch_68
        :pswitch_61
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

    .line 80
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/airport/Lane;->id:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 81
    const-string v0, "name"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/airport/Lane;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 82
    const-string v0, "active"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/components/airport/Lane;->realLane:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 84
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->realLane:Z

    if-eqz v0, :cond_45

    .line 85
    const-string v0, "lane"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 86
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->sx:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 87
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->sy:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 88
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->tx:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 89
    iget v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->ty:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 90
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 93
    :cond_45
    const-string v0, "time unlockable"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->timeUnlockable:Linfo/flowersoft/theotown/util/TimeUnlockable;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/TimeUnlockable;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 95
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 111
    iput-object p1, p0, Linfo/flowersoft/theotown/components/airport/Lane;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 164
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/airport/Lane;->realLane:Z

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lane@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/components/airport/Lane;->sx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Linfo/flowersoft/theotown/components/airport/Lane;->sy:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Linfo/flowersoft/theotown/components/airport/Lane;->tx:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/components/airport/Lane;->ty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    const-string v0, "Lane non realLane"

    return-object v0
.end method
