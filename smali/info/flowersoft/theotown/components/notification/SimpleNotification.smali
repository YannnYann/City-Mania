###### Class info.flowersoft.theotown.components.notification.SimpleNotification (info.flowersoft.theotown.components.notification.SimpleNotification)
.class public Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.super Linfo/flowersoft/theotown/city/components/Notification;
.source "SimpleNotification.java"


# instance fields
.field public final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;"
        }
    .end annotation
.end field

.field public closeable:Z

.field public currentLocation:[I

.field public icon:I

.field public id:Ljava/lang/String;

.field public immersive:Z

.field public important:Z

.field public location:[F

.field public locationBuilding:Linfo/flowersoft/theotown/city/objects/Building;

.field public locationBuildingProvider:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public locationProvider:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "[F>;"
        }
    .end annotation
.end field

.field public onClose:Ljava/lang/Runnable;

.field public onLocationClick:Ljava/lang/Runnable;

.field public once:Z

.field public text:Ljava/lang/String;

.field public textId:I

.field public textProvider:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public titleId:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/city/components/Notification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->actions:Ljava/util/List;

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->closeable:Z

    .line 57
    const-string p1, "no id set"

    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAction(Linfo/flowersoft/theotown/city/components/NotificationAction;)V
    .registers 3

    .line 196
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSubActions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;)V"
        }
    .end annotation

    .line 191
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/Notification;->addSubActions(Ljava/util/List;)V

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->actions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public clearActions()V
    .registers 2

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIconID()I
    .registers 2

    .line 67
    iget v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->icon:I

    return v0
.end method

.method public getLocationBuilding()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 186
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->locationBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    return-object v0
.end method

.method public getLocationX()F
    .registers 3

    .line 176
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->location:[F

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_8
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getLocationX()F

    move-result v0

    return v0
.end method

.method public getLocationY()F
    .registers 3

    .line 181
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->location:[F

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    :cond_8
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getLocationY()F

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->textProvider:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v0, :cond_b

    .line 73
    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 74
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->text:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 75
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget v1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->textId:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    :cond_17
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->title:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget v1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->titleId:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public hasLocation()Z
    .registers 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 161
    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->locationBuildingProvider:Lio/blueflower/stapel2d/util/Getter;

    const/4 v4, 0x0

    if-eqz v3, :cond_f

    invoke-interface {v3}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    goto :goto_10

    :cond_f
    move-object v3, v4

    :goto_10
    iput-object v3, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->locationBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    .line 162
    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->locationProvider:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v3, :cond_1d

    invoke-interface {v3}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, [F

    :cond_1d
    iput-object v4, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->location:[F

    .line 163
    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->currentLocation:[I

    if-eqz v3, :cond_35

    if-nez v4, :cond_29

    .line 164
    new-array v4, v0, [F

    iput-object v4, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->location:[F

    .line 165
    :cond_29
    iget-object v4, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->location:[F

    aget v5, v3, v1

    int-to-float v5, v5

    aput v5, v4, v1

    .line 166
    aget v3, v3, v2

    int-to-float v3, v3

    aput v3, v4, v2

    .line 168
    :cond_35
    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->location:[F

    if-nez v3, :cond_4d

    iget-object v3, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->locationBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v3, :cond_4d

    .line 169
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getLocationX()F

    move-result v3

    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getLocationY()F

    move-result v4

    new-array v0, v0, [F

    aput v3, v0, v1

    aput v4, v0, v2

    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->location:[F

    .line 171
    :cond_4d
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->location:[F

    if-eqz v0, :cond_52

    return v2

    :cond_52
    return v1
.end method

.method public isCloseable()Z
    .registers 2

    .line 214
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->closeable:Z

    return v0
.end method

.method public isImmersive()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->immersive:Z

    return v0
.end method

.method public isImportant()Z
    .registers 2

    .line 209
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->important:Z

    return v0
.end method

.method public onClose()V
    .registers 2

    .line 227
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->onClose()V

    .line 228
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->onClose:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 229
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method public onLocationClick()V
    .registers 2

    .line 155
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->onLocationClick()V

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->onLocationClick:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method

.method public setCloseable(Z)V
    .registers 2

    .line 218
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->closeable:Z

    return-void
.end method

.method public setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V
    .registers 2

    .line 138
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/Notification;->condition:Linfo/flowersoft/theotown/city/components/AbstractCondition;

    return-void
.end method

.method public setIcon(I)V
    .registers 2

    .line 121
    iput p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->icon:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 117
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->id:Ljava/lang/String;

    return-void
.end method

.method public setImmersive(Z)V
    .registers 2

    .line 105
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->immersive:Z

    return-void
.end method

.method public setImportant(Z)V
    .registers 2

    .line 204
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->important:Z

    return-void
.end method

.method public setLocationBuildingProvider(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->locationBuildingProvider:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

.method public setLocationProvider(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "[F>;)V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->locationProvider:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

.method public setOnClose(Ljava/lang/Runnable;)V
    .registers 2

    .line 222
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->onClose:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnLocationClick(Ljava/lang/Runnable;)V
    .registers 2

    .line 142
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->onLocationClick:Ljava/lang/Runnable;

    return-void
.end method

.method public setShowOnlyOnce(Z)V
    .registers 2

    .line 96
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->once:Z

    return-void
.end method

.method public setText(I)V
    .registers 3

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->text:Ljava/lang/String;

    .line 130
    iput p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->textId:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 125
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->text:Ljava/lang/String;

    return-void
.end method

.method public setTextProvider(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->textProvider:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method

.method public setTitle(I)V
    .registers 2

    .line 109
    iput p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->titleId:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 113
    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->title:Ljava/lang/String;

    return-void
.end method

.method public showOnlyOnce()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->once:Z

    return v0
.end method
