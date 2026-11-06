###### Class info.flowersoft.theotown.city.components.Notification (info.flowersoft.theotown.city.components.Notification)
.class public abstract Linfo/flowersoft/theotown/city/components/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;
    }
.end annotation


# instance fields
.field public activeCallback:Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;

.field public city:Linfo/flowersoft/theotown/city/City;

.field public closeMe:Z

.field public condition:Linfo/flowersoft/theotown/city/components/AbstractCondition;

.field public counter:I

.field public lastShownDay:J

.field public locationY:F

.field public rebuildMe:Z

.field public translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/city/components/Notification;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/AbstractCondition;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    .line 47
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 48
    iput-object p2, p0, Linfo/flowersoft/theotown/city/components/Notification;->condition:Linfo/flowersoft/theotown/city/components/AbstractCondition;

    return-void
.end method


# virtual methods
.method public addSubActions(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public checkCondition()Z
    .registers 2

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->activeCallback:Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;->isActive()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->condition:Linfo/flowersoft/theotown/city/components/AbstractCondition;

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/components/AbstractCondition;->evaluate()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->closeMe:Z

    return-void
.end method

.method public closeMe()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->closeMe:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 257
    instance-of v0, p1, Linfo/flowersoft/theotown/city/components/Notification;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getID()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Linfo/flowersoft/theotown/city/components/Notification;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/Notification;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public getActions()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->isCloseable()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 164
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->isImmersive()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 165
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    new-instance v3, Linfo/flowersoft/theotown/city/components/Notification$1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/city/components/Notification$1;-><init>(Linfo/flowersoft/theotown/city/components/Notification;)V

    const/4 v4, 0x0

    const/16 v5, 0x78d

    invoke-direct {v1, v2, v5, v3, v4}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(IILjava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 175
    :cond_24
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    new-instance v3, Linfo/flowersoft/theotown/city/components/Notification$2;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/city/components/Notification$2;-><init>(Linfo/flowersoft/theotown/city/components/Notification;)V

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_33
    :goto_33
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->hasLocation()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 185
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCATE:I

    new-instance v3, Linfo/flowersoft/theotown/city/components/Notification$3;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/city/components/Notification$3;-><init>(Linfo/flowersoft/theotown/city/components/Notification;)V

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_48
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/components/Notification;->addSubActions(Ljava/util/List;)V

    return-object v0
.end method

.method public getCounter()I
    .registers 2

    .line 107
    iget v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->counter:I

    return v0
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public abstract getIconID()I
.end method

.method public getLastShownDay()J
    .registers 3

    .line 103
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->lastShownDay:J

    return-wide v0
.end method

.method public getLocationBuilding()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLocationX()F
    .registers 5

    .line 221
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getLocationBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 223
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/city/components/Notification;->locationY:F

    .line 224
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v1, v0

    return v1

    :cond_27
    const/4 v0, 0x0

    .line 226
    iput v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->locationY:F

    return v0
.end method

.method public getLocationY()F
    .registers 2

    .line 232
    iget v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->locationY:F

    return v0
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 56
    const-string v0, ""

    return-object v0
.end method

.method public getX()F
    .registers 2

    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getY()F
    .registers 2

    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasLocation()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPosition()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 241
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCloseable()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isImmersive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isImportant()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public keepOpen()Z
    .registers 2

    .line 145
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->isImportant()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->isCloseable()Z

    move-result v0

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

    .line 112
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 113
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_5a

    goto :goto_36

    :sswitch_16
    const-string v2, "counter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_36

    :cond_1f
    const/4 v1, 0x2

    goto :goto_36

    :sswitch_21
    const-string v2, "condition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_36

    :cond_2a
    const/4 v1, 0x1

    goto :goto_36

    :sswitch_2c
    const-string v2, "last shown day"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    packed-switch v1, :pswitch_data_68

    .line 128
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 115
    :pswitch_3d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->counter:I

    goto :goto_0

    .line 121
    :pswitch_44
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->condition:Linfo/flowersoft/theotown/city/components/AbstractCondition;

    if-eqz v0, :cond_4e

    .line 123
    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/util/Saveable;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 125
    :cond_4e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_0

    .line 118
    :pswitch_52
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->lastShownDay:J

    goto :goto_0

    :cond_59
    return-void

    :sswitch_data_5a
    .sparse-switch
        -0x51f268fd -> :sswitch_2c
        -0x335692e5 -> :sswitch_21
        0x391755fc -> :sswitch_16
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_52
        :pswitch_44
        :pswitch_3d
    .end packed-switch
.end method

.method public onClose()V
    .registers 3

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->closeMe:Z

    .line 98
    iget v1, p0, Linfo/flowersoft/theotown/city/components/Notification;->counter:I

    add-int/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/city/components/Notification;->counter:I

    .line 99
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->lastShownDay:J

    return-void
.end method

.method public onLocationClick()V
    .registers 1

    .line 0
    return-void
.end method

.method public onShow()V
    .registers 3

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->closeMe:Z

    .line 92
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->rebuildMe:Z

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->lastShownDay:J

    return-void
.end method

.method public rebuild()V
    .registers 2

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->rebuildMe:Z

    return-void
.end method

.method public rebuildMe()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->rebuildMe:Z

    return v0
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    const-string v0, "counter"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/city/components/Notification;->counter:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 136
    const-string v0, "last shown day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/city/components/Notification;->lastShownDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->condition:Linfo/flowersoft/theotown/city/components/AbstractCondition;

    if-eqz v0, :cond_2b

    .line 138
    const-string v0, "condition"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->condition:Linfo/flowersoft/theotown/city/components/AbstractCondition;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/util/Saveable;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 140
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    :cond_2b
    return-void
.end method

.method public setIsActive(Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;)Linfo/flowersoft/theotown/city/components/Notification;
    .registers 2

    .line 66
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/Notification;->activeCallback:Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;

    return-object p0
.end method

.method public showOnlyOnce()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", counter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.city.components.Notification.AnonymousClass1 (info.flowersoft.theotown.city.components.Notification$1)
.class Linfo/flowersoft/theotown/city/components/Notification$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/city/components/Notification;->getActions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/city/components/Notification;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/components/Notification;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 168
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/Notification$1;->this$0:Linfo/flowersoft/theotown/city/components/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 171
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification$1;->this$0:Linfo/flowersoft/theotown/city/components/Notification;

    const/4 v1, 0x1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/city/components/Notification;->closeMe:Z

    return-void
.end method

###### Class info.flowersoft.theotown.city.components.Notification.AnonymousClass2 (info.flowersoft.theotown.city.components.Notification$2)
.class Linfo/flowersoft/theotown/city/components/Notification$2;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/city/components/Notification;->getActions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/city/components/Notification;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/components/Notification;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 175
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/Notification$2;->this$0:Linfo/flowersoft/theotown/city/components/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification$2;->this$0:Linfo/flowersoft/theotown/city/components/Notification;

    const/4 v1, 0x1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/city/components/Notification;->closeMe:Z

    return-void
.end method

###### Class info.flowersoft.theotown.city.components.Notification.AnonymousClass3 (info.flowersoft.theotown.city.components.Notification$3)
.class Linfo/flowersoft/theotown/city/components/Notification$3;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/city/components/Notification;->getActions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/city/components/Notification;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/components/Notification;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 185
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/Notification$3;->this$0:Linfo/flowersoft/theotown/city/components/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification$3;->this$0:Linfo/flowersoft/theotown/city/components/Notification;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 189
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification$3;->this$0:Linfo/flowersoft/theotown/city/components/Notification;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->onLocationClick()V

    .line 190
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification$3;->this$0:Linfo/flowersoft/theotown/city/components/Notification;

    iget-object v1, v0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Notification;->getLocationX()F

    move-result v0

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Notification$3;->this$0:Linfo/flowersoft/theotown/city/components/Notification;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/Notification;->getLocationY()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v1, v0, v2, v3}, Linfo/flowersoft/theotown/city/City;->focus(FFF)V

    :cond_20
    return-void
.end method

###### Class info.flowersoft.theotown.city.components.Notification.ActiveCallback (info.flowersoft.theotown.city.components.Notification$ActiveCallback)
.class public interface abstract Linfo/flowersoft/theotown/city/components/Notification$ActiveCallback;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/components/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActiveCallback"
.end annotation


# virtual methods
.method public abstract isActive()Z
.end method
