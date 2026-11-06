###### Class info.flowersoft.theotown.components.BuildCommandResult (info.flowersoft.theotown.components.BuildCommandResult)
.class public final Linfo/flowersoft/theotown/components/BuildCommandResult;
.super Ljava/lang/Object;
.source "BuildCommandResult.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public area:I

.field public badAttribute:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

.field public day:J

.field public displacedPeople:I

.field public level:I

.field public maxPeople:I

.field public minPeople:I

.field public noSpace:Z

.field public pressure:F

.field public remove:Z

.field public size:I

.field public successful:Z

.field public x:I

.field public y:I

.field public zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/ZoneDraft;IZFZIJIIIIIIZLinfo/flowersoft/theotown/components/management/attribute/Attribute;)V
    .registers 17

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 38
    iput p2, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->level:I

    .line 39
    iput-boolean p3, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->remove:Z

    .line 40
    iput p4, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->pressure:F

    .line 41
    iput-boolean p5, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->successful:Z

    .line 42
    iput p6, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->area:I

    .line 43
    iput-wide p7, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->day:J

    .line 44
    iput p9, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->x:I

    .line 45
    iput p10, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->y:I

    .line 46
    iput p11, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->size:I

    .line 47
    iput p12, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->displacedPeople:I

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->minPeople:I

    .line 49
    iput p1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->maxPeople:I

    .line 50
    iput-boolean p15, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->noSpace:Z

    move-object/from16 p1, p16

    .line 51
    iput-object p1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->badAttribute:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/BuildCommandResult;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    return-void
.end method


# virtual methods
.method public getArea()I
    .registers 2

    .line 121
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->area:I

    return v0
.end method

.method public getBadAttribute()Linfo/flowersoft/theotown/components/management/attribute/Attribute;
    .registers 2

    .line 157
    iget-object v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->badAttribute:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-object v0
.end method

.method public getDay()J
    .registers 3

    .line 125
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->day:J

    return-wide v0
.end method

.method public getDisplacedPeople()I
    .registers 2

    .line 141
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->displacedPeople:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    .line 105
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->level:I

    return v0
.end method

.method public getMaxPeople()I
    .registers 2

    .line 149
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->maxPeople:I

    return v0
.end method

.method public getMinPeople()I
    .registers 2

    .line 145
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->minPeople:I

    return v0
.end method

.method public getPressure()F
    .registers 2

    .line 113
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->pressure:F

    return v0
.end method

.method public getSize()I
    .registers 2

    .line 137
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->size:I

    return v0
.end method

.method public getX()I
    .registers 2

    .line 129
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .line 133
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->y:I

    return v0
.end method

.method public getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;
    .registers 2

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-object v0
.end method

.method public hasNoSpace()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->noSpace:Z

    return v0
.end method

.method public isRemove()Z
    .registers 2

    .line 109
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->remove:Z

    return v0
.end method

.method public isSuccessful()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->successful:Z

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_142

    .line 61
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_144

    goto/16 :goto_c2

    :sswitch_17
    const-string v2, "max people"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_c2

    :cond_21
    const/16 v1, 0xd

    goto/16 :goto_c2

    :sswitch_25
    const-string v2, "level"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_c2

    :cond_2f
    const/16 v1, 0xc

    goto/16 :goto_c2

    :sswitch_33
    const-string v2, "zone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_c2

    :cond_3d
    const/16 v1, 0xb

    goto/16 :goto_c2

    :sswitch_41
    const-string v2, "size"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_c2

    :cond_4b
    const/16 v1, 0xa

    goto/16 :goto_c2

    :sswitch_4f
    const-string v2, "area"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_c2

    :cond_59
    const/16 v1, 0x9

    goto/16 :goto_c2

    :sswitch_5d
    const-string v2, "day"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_c2

    :cond_67
    const/16 v1, 0x8

    goto/16 :goto_c2

    :sswitch_6b
    const-string v2, "y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_c2

    :cond_74
    const/4 v1, 0x7

    goto :goto_c2

    :sswitch_76
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto :goto_c2

    :cond_7f
    const/4 v1, 0x6

    goto :goto_c2

    :sswitch_81
    const-string v2, "min people"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto :goto_c2

    :cond_8a
    const/4 v1, 0x5

    goto :goto_c2

    :sswitch_8c
    const-string v2, "successful"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_c2

    :cond_95
    const/4 v1, 0x4

    goto :goto_c2

    :sswitch_97
    const-string v2, "no space"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    goto :goto_c2

    :cond_a0
    const/4 v1, 0x3

    goto :goto_c2

    :sswitch_a2
    const-string v2, "remove"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    goto :goto_c2

    :cond_ab
    const/4 v1, 0x2

    goto :goto_c2

    :sswitch_ad
    const-string v2, "people"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    goto :goto_c2

    :cond_b6
    const/4 v1, 0x1

    goto :goto_c2

    :sswitch_b8
    const-string v2, "pressure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    goto :goto_c2

    :cond_c1
    const/4 v1, 0x0

    :goto_c2
    packed-switch v1, :pswitch_data_17e

    .line 77
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 74
    :pswitch_ca
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->maxPeople:I

    goto/16 :goto_0

    .line 63
    :pswitch_d2
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->level:I

    goto/16 :goto_0

    .line 62
    :pswitch_da
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/ZoneDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    goto/16 :goto_0

    .line 71
    :pswitch_ea
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->size:I

    goto/16 :goto_0

    .line 67
    :pswitch_f2
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->area:I

    goto/16 :goto_0

    .line 68
    :pswitch_fa
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->day:J

    goto/16 :goto_0

    .line 70
    :pswitch_102
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->y:I

    goto/16 :goto_0

    .line 69
    :pswitch_10a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->x:I

    goto/16 :goto_0

    .line 73
    :pswitch_112
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->minPeople:I

    goto/16 :goto_0

    .line 66
    :pswitch_11a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->successful:Z

    goto/16 :goto_0

    .line 75
    :pswitch_122
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->noSpace:Z

    goto/16 :goto_0

    .line 64
    :pswitch_12a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->remove:Z

    goto/16 :goto_0

    .line 72
    :pswitch_132
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->displacedPeople:I

    goto/16 :goto_0

    .line 65
    :pswitch_13a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->pressure:F

    goto/16 :goto_0

    :cond_142
    return-void

    nop

    :sswitch_data_144
    .sparse-switch
        -0x4c11e9bb -> :sswitch_b8
        -0x3b1dcd71 -> :sswitch_ad
        -0x37b5077c -> :sswitch_a2
        -0x30470219 -> :sswitch_97
        -0x2bba5566 -> :sswitch_8c
        -0x283e6be3 -> :sswitch_81
        0x78 -> :sswitch_76
        0x79 -> :sswitch_6b
        0x1839c -> :sswitch_5d
        0x2dd08d -> :sswitch_4f
        0x35e001 -> :sswitch_41
        0x3923ac -> :sswitch_33
        0x6219b84 -> :sswitch_25
        0x4469dccb -> :sswitch_17
    .end sparse-switch

    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_13a
        :pswitch_132
        :pswitch_12a
        :pswitch_122
        :pswitch_11a
        :pswitch_112
        :pswitch_10a
        :pswitch_102
        :pswitch_fa
        :pswitch_f2
        :pswitch_ea
        :pswitch_da
        :pswitch_d2
        :pswitch_ca
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz v0, :cond_11

    const-string v0, "zone"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 85
    :cond_11
    const-string v0, "level"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->level:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 86
    const-string v0, "remove"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->remove:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 87
    const-string v0, "pressure"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->pressure:F

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 88
    const-string v0, "successful"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->successful:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 89
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->area:I

    if-eqz v0, :cond_4c

    const-string v0, "area"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->area:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 90
    :cond_4c
    const-string v0, "day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->day:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 91
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->x:I

    if-eqz v0, :cond_66

    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->x:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 92
    :cond_66
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->y:I

    if-eqz v0, :cond_75

    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->y:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 93
    :cond_75
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->size:I

    if-eqz v0, :cond_84

    const-string v0, "size"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->size:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 94
    :cond_84
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->displacedPeople:I

    if-eqz v0, :cond_93

    const-string v0, "people"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->displacedPeople:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 95
    :cond_93
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->minPeople:I

    if-eqz v0, :cond_a2

    const-string v0, "min people"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->minPeople:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 96
    :cond_a2
    iget v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->maxPeople:I

    if-eqz v0, :cond_b1

    const-string v0, "max people"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->maxPeople:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 97
    :cond_b1
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->noSpace:Z

    if-eqz v0, :cond_c0

    const-string v0, "no space"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/BuildCommandResult;->noSpace:Z

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_c0
    return-void
.end method
