###### Class info.flowersoft.theotown.components.notification.task.DefaultTask (info.flowersoft.theotown.components.notification.task.DefaultTask)
.class public abstract Linfo/flowersoft/theotown/components/notification/task/DefaultTask;
.super Ljava/lang/Object;
.source "DefaultTask.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/notification/task/Task;


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public growOffset:J

.field public growOnly:Z

.field public icon:I

.field public lastRawValue:J

.field public lastValue:J

.field public once:Z

.field public running:Z

.field public startValue:J

.field public successCounter:I

.field public targetValue:J

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p3, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->city:Linfo/flowersoft/theotown/city/City;

    .line 33
    iput p1, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->icon:I

    .line 34
    iput-object p2, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 144
    iget v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->icon:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    .line 82
    iget v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->successCounter:I

    return v0
.end method

.method public abstract getRawValue()J
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()J
    .registers 11

    .line 97
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->getRawValue()J

    move-result-wide v0

    .line 99
    iget-boolean v2, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->running:Z

    if-eqz v2, :cond_40

    .line 100
    iget-wide v2, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->growOffset:J

    add-long v4, v0, v2

    .line 101
    iget-boolean v6, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->growOnly:Z

    if-eqz v6, :cond_1c

    iget-wide v6, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->lastRawValue:J

    cmp-long v8, v0, v6

    if-gez v8, :cond_1c

    sub-long/2addr v6, v0

    add-long/2addr v2, v6

    .line 102
    iput-wide v2, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->growOffset:J

    add-long v4, v0, v2

    .line 105
    :cond_1c
    iget-wide v2, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->lastValue:J

    sub-long v2, v4, v2

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-lez v6, :cond_3c

    const-wide/16 v6, 0x64

    .line 107
    div-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_3c

    .line 109
    iget-wide v2, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->lastValue:J

    sub-long/2addr v4, v2

    .line 110
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    div-long v2, v4, v2

    .line 113
    :cond_3c
    iget-wide v4, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->lastValue:J

    add-long/2addr v4, v2

    goto :goto_41

    :cond_40
    move-wide v4, v0

    .line 115
    :goto_41
    iput-wide v4, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->lastValue:J

    .line 116
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->lastRawValue:J

    return-wide v4
.end method

.method public growOnly()Linfo/flowersoft/theotown/components/notification/task/DefaultTask;
    .registers 2

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->growOnly:Z

    return-object p0
.end method

.method public isValid()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->running:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->once:Z

    if-eqz v0, :cond_f

    iget v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->successCounter:I

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 40
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_88

    goto :goto_41

    :sswitch_16
    const-string v2, "running"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_41

    :cond_1f
    const/4 v1, 0x3

    goto :goto_41

    :sswitch_21
    const-string v2, "values"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_41

    :cond_2a
    const/4 v1, 0x2

    goto :goto_41

    :sswitch_2c
    const-string v2, "success ctr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_41

    :cond_35
    const/4 v1, 0x1

    goto :goto_41

    :sswitch_37
    const-string v2, "grow offset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    packed-switch v1, :pswitch_data_9a

    .line 60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 42
    :pswitch_48
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->running:Z

    goto :goto_0

    .line 48
    :pswitch_4f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 49
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->startValue:J

    .line 50
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->targetValue:J

    .line 51
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->lastValue:J

    .line 52
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->lastRawValue:J

    .line 53
    :goto_6a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_6a

    .line 54
    :cond_74
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_0

    .line 45
    :pswitch_78
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->successCounter:I

    goto :goto_0

    .line 57
    :pswitch_7f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->growOffset:J

    goto/16 :goto_0

    :cond_87
    return-void

    :sswitch_data_88
    .sparse-switch
        -0x5bf0eac0 -> :sswitch_37
        -0x4bb06b7c -> :sswitch_2c
        -0x311a62de -> :sswitch_21
        0x5c6f15bf -> :sswitch_16
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_78
        :pswitch_4f
        :pswitch_48
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->running:Z

    if-eqz v0, :cond_f

    const-string v0, "running"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->running:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 69
    :cond_f
    iget v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->successCounter:I

    if-eqz v0, :cond_1e

    const-string v0, "success ctr"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->successCounter:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 71
    :cond_1e
    const-string v0, "values"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 72
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->startValue:J

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 73
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->targetValue:J

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 74
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->lastValue:J

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 75
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->lastRawValue:J

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 76
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 78
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->growOffset:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_51

    const-string v0, "grow offset"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->growOffset:J

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_51
    return-void
.end method

.method public start()V
    .registers 3

    .line 129
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->getRawValue()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->startValue:J

    .line 130
    invoke-interface {p0}, Linfo/flowersoft/theotown/components/notification/task/Task;->getTargetValue()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->targetValue:J

    .line 131
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->startValue:J

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->lastValue:J

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->running:Z

    const-wide/16 v0, 0x0

    .line 133
    iput-wide v0, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->growOffset:J

    return-void
.end method

.method public stop(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 138
    iget p1, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->successCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->successCounter:I

    :cond_8
    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->running:Z

    return-void
.end method
