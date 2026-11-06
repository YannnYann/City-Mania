###### Class info.flowersoft.theotown.components.notification.condition.DelayedConditionDecorator (info.flowersoft.theotown.components.notification.condition.DelayedConditionDecorator)
.class public Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;
.super Linfo/flowersoft/theotown/components/notification/condition/ConditionDecorator;
.source "DelayedConditionDecorator.java"


# instance fields
.field public delayDays:J

.field public isTriggered:Z

.field public triggerDay:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/notification/condition/Condition;J)V
    .registers 4

    .line 22
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/notification/condition/ConditionDecorator;-><init>(Linfo/flowersoft/theotown/components/notification/condition/Condition;)V

    .line 23
    iput-wide p2, p0, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;->delayDays:J

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;->isTriggered:Z

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 8

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/ConditionDecorator;->condition:Linfo/flowersoft/theotown/components/notification/condition/Condition;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/condition/Condition;->evaluate()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/Condition;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v3

    .line 62
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;->isTriggered:Z

    if-nez v0, :cond_1e

    .line 63
    iput-boolean v2, p0, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;->isTriggered:Z

    .line 64
    iput-wide v3, p0, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;->triggerDay:J

    .line 66
    :cond_1e
    iget-wide v5, p0, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;->triggerDay:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;->delayDays:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_28

    return v2

    :cond_28
    return v1

    .line 68
    :cond_29
    iput-boolean v1, p0, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;->isTriggered:Z

    return v1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 31
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_58

    goto :goto_36

    :sswitch_16
    const-string v2, "triggerDay"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_36

    :cond_1f
    const/4 v1, 0x2

    goto :goto_36

    :sswitch_21
    const-string v2, "delayDays"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_36

    :cond_2a
    const/4 v1, 0x1

    goto :goto_36

    :sswitch_2c
    const-string v2, "condition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    packed-switch v1, :pswitch_data_66

    .line 44
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 36
    :pswitch_3d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;->triggerDay:J

    goto :goto_0

    .line 33
    :pswitch_44
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;->delayDays:J

    goto :goto_0

    .line 39
    :pswitch_4b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/ConditionDecorator;->condition:Linfo/flowersoft/theotown/components/notification/condition/Condition;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/notification/condition/Condition;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 41
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_0

    :cond_57
    return-void

    :sswitch_data_58
    .sparse-switch
        -0x335692e5 -> :sswitch_2c
        -0x1bfd5b86 -> :sswitch_21
        0x51453ac4 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_44
        :pswitch_3d
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    const-string v0, "delayDays"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;->delayDays:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 52
    const-string v0, "triggerDay"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/notification/condition/DelayedConditionDecorator;->triggerDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 53
    const-string v0, "condition"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/ConditionDecorator;->condition:Linfo/flowersoft/theotown/components/notification/condition/Condition;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/notification/condition/Condition;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 55
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
