###### Class info.flowersoft.theotown.util.TimeUnlockable (info.flowersoft.theotown.util.TimeUnlockable)
.class public Linfo/flowersoft/theotown/util/TimeUnlockable;
.super Ljava/lang/Object;
.source "TimeUnlockable.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# instance fields
.field public locked:Z

.field public paused:Z

.field public startMS:J

.field public waitingTime:J


# direct methods
.method public constructor <init>(J)V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->locked:Z

    .line 21
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->startMS:J

    .line 22
    iput-wide p1, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->waitingTime:J

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->locked:Z

    .line 26
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/TimeUnlockable;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    return-void
.end method

.method public static createUnlocked()Linfo/flowersoft/theotown/util/TimeUnlockable;
    .registers 3

    .line 116
    new-instance v0, Linfo/flowersoft/theotown/util/TimeUnlockable;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/util/TimeUnlockable;-><init>(J)V

    .line 117
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/TimeUnlockable;->unlockImmediately()V

    return-object v0
.end method


# virtual methods
.method public getRemainingTimeMS()J
    .registers 6

    .line 68
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->paused:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->waitingTime:J

    return-wide v0

    .line 70
    :cond_7
    iget-wide v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->startMS:J

    iget-wide v2, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->waitingTime:J

    add-long/2addr v0, v2

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1c

    return-wide v2

    .line 73
    :cond_1c
    iget-wide v2, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->waitingTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    .line 74
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->startMS:J

    .line 75
    iget-wide v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->waitingTime:J

    :cond_2e
    return-wide v0
.end method

.method public isPaused()Z
    .registers 2

    .line 96
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->paused:Z

    return v0
.end method

.method public isUnlocked()Z
    .registers 7

    .line 61
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->locked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 62
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TimeUnlockable;->getRemainingTimeMS()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->locked:Z

    .line 64
    :cond_14
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->locked:Z

    xor-int/2addr v0, v1

    return v0
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

    if-eqz v0, :cond_64

    .line 32
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_66

    goto :goto_41

    :sswitch_16
    const-string v2, "waiting time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_41

    :cond_1f
    const/4 v1, 0x3

    goto :goto_41

    :sswitch_21
    const-string v2, "start ms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_41

    :cond_2a
    const/4 v1, 0x2

    goto :goto_41

    :sswitch_2c
    const-string v2, "paused"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_41

    :cond_35
    const/4 v1, 0x1

    goto :goto_41

    :sswitch_37
    const-string v2, "locked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_41

    :cond_40
    const/4 v1, 0x0

    :goto_41
    packed-switch v1, :pswitch_data_78

    .line 46
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 37
    :pswitch_48
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->waitingTime:J

    goto :goto_0

    .line 34
    :pswitch_4f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->startMS:J

    goto :goto_0

    .line 43
    :pswitch_56
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->paused:Z

    goto :goto_0

    .line 40
    :pswitch_5d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->locked:Z

    goto :goto_0

    :cond_64
    return-void

    nop

    :sswitch_data_66
    .sparse-switch
        -0x4169ccf6 -> :sswitch_37
        -0x3b5366d2 -> :sswitch_2c
        0x4e7bce24 -> :sswitch_21
        0x676294c0 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_56
        :pswitch_4f
        :pswitch_48
    .end packed-switch
.end method

.method public lock(J)V
    .registers 5

    .line 90
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->startMS:J

    .line 91
    iput-wide p1, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->waitingTime:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 92
    :goto_15
    iput-boolean p1, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->locked:Z

    return-void
.end method

.method public declared-synchronized pause()V
    .registers 3

    monitor-enter p0

    .line 100
    :try_start_1
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->paused:Z

    if-nez v0, :cond_11

    .line 101
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/TimeUnlockable;->getRemainingTimeMS()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->waitingTime:J

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->paused:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception v0

    goto :goto_13

    .line 104
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw v0
.end method

.method public declared-synchronized reduceWaitingTime(J)V
    .registers 5

    monitor-enter p0

    .line 82
    :try_start_1
    iget-wide v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->waitingTime:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->waitingTime:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 83
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public declared-synchronized resume()V
    .registers 3

    monitor-enter p0

    .line 107
    :try_start_1
    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->paused:Z

    if-eqz v0, :cond_15

    .line 108
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->startMS:J

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->paused:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_13

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_17

    .line 111
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_13

    throw v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const-string v0, "start ms"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->startMS:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 55
    const-string v0, "waiting time"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->waitingTime:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 56
    const-string v0, "locked"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->locked:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 57
    const-string v0, "paused"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->paused:Z

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public unlockImmediately()V
    .registers 2

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Linfo/flowersoft/theotown/util/TimeUnlockable;->locked:Z

    return-void
.end method
