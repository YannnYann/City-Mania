###### Class info.flowersoft.theotown.components.DefaultDate (info.flowersoft.theotown.components.DefaultDate)
.class public final Linfo/flowersoft/theotown/components/DefaultDate;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "DefaultDate.java"


# instance fields
.field public absoluteDay:J

.field public absoluteMS:J

.field public animationTime:I

.field public animationTimeDelta:I

.field public dayPart:F

.field public lastUpdateMS:J

.field public speed:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    const-wide/16 v0, 0x0

    .line 70
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->lastUpdateMS:J

    .line 71
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->absoluteDay:J

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->speed:I

    .line 73
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTime:I

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    .line 45
    :goto_3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 46
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_7c

    goto :goto_4f

    :sswitch_19
    const-string v2, "day part"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_4f

    :cond_22
    const/4 v1, 0x4

    goto :goto_4f

    :sswitch_24
    const-string v2, "animation time delta"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_4f

    :cond_2d
    const/4 v1, 0x3

    goto :goto_4f

    :sswitch_2f
    const-string v2, "speed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_4f

    :cond_38
    const/4 v1, 0x2

    goto :goto_4f

    :sswitch_3a
    const-string v2, "absolute day"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_4f

    :cond_43
    const/4 v1, 0x1

    goto :goto_4f

    :sswitch_45
    const-string v2, "animation time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v1, 0x0

    :goto_4f
    packed-switch v1, :pswitch_data_92

    .line 63
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    .line 60
    :pswitch_56
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->dayPart:F

    goto :goto_3

    .line 57
    :pswitch_5d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTimeDelta:I

    goto :goto_3

    .line 51
    :pswitch_64
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->speed:I

    goto :goto_3

    .line 48
    :pswitch_6b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->absoluteDay:J

    goto :goto_3

    .line 54
    :pswitch_73
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTime:I

    goto :goto_3

    :cond_7a
    return-void

    nop

    :sswitch_data_7c
    .sparse-switch
        -0x59b94617 -> :sswitch_45
        -0x43b0768d -> :sswitch_3a
        0x6890047 -> :sswitch_2f
        0x1c6fb6c1 -> :sswitch_24
        0x6fa3b1f7 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_73
        :pswitch_6b
        :pswitch_64
        :pswitch_5d
        :pswitch_56
    .end packed-switch
.end method


# virtual methods
.method public flushTime()V
    .registers 3

    .line 234
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 235
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->lastUpdateMS:J

    return-void
.end method

.method public getAbsoluteDay()J
    .registers 3

    .line 202
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->absoluteDay:J

    return-wide v0
.end method

.method public getAbsoluteMillis()J
    .registers 3

    .line 182
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->absoluteMS:J

    return-wide v0
.end method

.method public getAnimationTime()I
    .registers 2

    .line 218
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTime:I

    return v0
.end method

.method public getAnimationTimeDelta()I
    .registers 2

    .line 222
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTimeDelta:I

    return v0
.end method

.method public getAnimationTimeFactor()F
    .registers 3

    .line 171
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->speed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_11
    const/high16 v0, 0x3e800000    # 0.25f

    return v0

    :cond_14
    const/high16 v0, 0x41000000    # 8.0f

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_19
    const/high16 v0, 0x40800000    # 4.0f

    return v0
.end method

.method public final getCurrentDayLength()I
    .registers 3

    .line 91
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->speed:I

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    const/4 v0, 0x0

    return v0

    :cond_f
    const/16 v0, 0x1f40

    return v0

    :cond_12
    const/16 v0, 0x1f4

    return v0

    :cond_15
    const/16 v0, 0x3e8

    return v0

    :cond_18
    const/16 v0, 0x7d0

    return v0
.end method

.method public getDay()I
    .registers 5

    .line 186
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->absoluteDay:J

    const-wide/16 v2, 0x1e

    rem-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDayPart()F
    .registers 2

    .line 190
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->dayPart:F

    return v0
.end method

.method public getMonth()I
    .registers 5

    .line 194
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->absoluteDay:J

    const-wide/16 v2, 0x1e

    div-long/2addr v0, v2

    const-wide/16 v2, 0xc

    rem-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSpeed()I
    .registers 2

    .line 226
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->speed:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getYear()I
    .registers 5

    .line 198
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->absoluteDay:J

    const-wide/16 v2, 0x1e

    div-long/2addr v0, v2

    const-wide/16 v2, 0xc

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isInFreezeMode()Z
    .registers 3

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    .line 109
    instance-of v1, v0, Linfo/flowersoft/theotown/tools/BuildTool;

    if-eqz v1, :cond_18

    check-cast v0, Linfo/flowersoft/theotown/tools/BuildTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->hasHistory()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .registers 3

    .line 78
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->prepare()V

    .line 79
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->absoluteMS:J

    return-void
.end method

.method public reset()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 210
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->absoluteDay:J

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTime:I

    const/4 v1, 0x0

    .line 212
    iput v1, p0, Linfo/flowersoft/theotown/components/DefaultDate;->dayPart:F

    .line 213
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    .line 214
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultDate;->flushTime()V

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const-string v0, "absolute day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/DefaultDate;->absoluteDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 84
    const-string v0, "speed"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/DefaultDate;->speed:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 85
    const-string v0, "animation time"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTime:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 86
    const-string v0, "animation time delta"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTimeDelta:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 87
    const-string v0, "day part"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->dayPart:F

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setAbsoluteDay(J)V
    .registers 3

    .line 206
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/DefaultDate;->absoluteDay:J

    return-void
.end method

.method public setSpeed(I)V
    .registers 2

    .line 230
    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultDate;->speed:I

    return-void
.end method

.method public update()V
    .registers 15

    .line 114
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    .line 115
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->absoluteMS:J

    .line 117
    iget-wide v2, p0, Linfo/flowersoft/theotown/components/DefaultDate;->lastUpdateMS:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    .line 118
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->lastUpdateMS:J

    .line 121
    :cond_10
    iget-wide v2, p0, Linfo/flowersoft/theotown/components/DefaultDate;->lastUpdateMS:J

    sub-long v2, v0, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_1e

    move v2, v3

    .line 123
    :cond_1e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultDate;->getCurrentDayLength()I

    move-result v3

    .line 125
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/city/components/Tool;

    .line 127
    iget v6, p0, Linfo/flowersoft/theotown/components/DefaultDate;->speed:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_68

    .line 128
    iget v6, p0, Linfo/flowersoft/theotown/components/DefaultDate;->dayPart:F

    int-to-float v8, v2

    int-to-float v3, v3

    div-float/2addr v8, v3

    add-float/2addr v6, v8

    iput v6, p0, Linfo/flowersoft/theotown/components/DefaultDate;->dayPart:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_68

    const/4 v3, 0x0

    .line 131
    iput v3, p0, Linfo/flowersoft/theotown/components/DefaultDate;->dayPart:F

    .line 133
    iget-wide v8, p0, Linfo/flowersoft/theotown/components/DefaultDate;->absoluteDay:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Linfo/flowersoft/theotown/components/DefaultDate;->absoluteDay:J

    const-wide/16 v10, 0x1e

    .line 135
    rem-long v12, v8, v10

    cmp-long v3, v12, v4

    if-nez v3, :cond_63

    .line 136
    div-long/2addr v8, v10

    const-wide/16 v10, 0xc

    rem-long/2addr v8, v10

    cmp-long v3, v8, v4

    if-nez v3, :cond_5e

    .line 137
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->nextYear()V

    .line 139
    :cond_5e
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->nextMonth()V

    .line 142
    :cond_63
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->nextDay()V

    .line 146
    :cond_68
    iget v3, p0, Linfo/flowersoft/theotown/components/DefaultDate;->speed:I

    const/4 v4, 0x0

    if-eqz v3, :cond_89

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq v3, v5, :cond_85

    if-eq v3, v7, :cond_82

    const/4 v5, 0x3

    if-eq v3, v5, :cond_7d

    if-eq v3, v6, :cond_79

    goto :goto_8b

    .line 151
    :cond_79
    div-int/2addr v2, v6

    iput v2, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTimeDelta:I

    goto :goto_8b

    :cond_7d
    mul-int/lit8 v2, v2, 0x8

    .line 160
    iput v2, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTimeDelta:I

    goto :goto_8b

    .line 148
    :cond_82
    iput v4, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTimeDelta:I

    goto :goto_8b

    :cond_85
    mul-int/2addr v2, v6

    .line 157
    iput v2, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTimeDelta:I

    goto :goto_8b

    .line 154
    :cond_89
    iput v2, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTimeDelta:I

    .line 164
    :goto_8b
    iget v2, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTime:I

    iget v3, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTimeDelta:I

    add-int/2addr v2, v3

    iput v2, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTime:I

    if-gez v2, :cond_96

    .line 165
    iput v4, p0, Linfo/flowersoft/theotown/components/DefaultDate;->animationTime:I

    .line 167
    :cond_96
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/DefaultDate;->lastUpdateMS:J

    return-void
.end method
