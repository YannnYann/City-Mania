###### Class info.flowersoft.theotown.components.notification.CitySizeNotification (info.flowersoft.theotown.components.notification.CitySizeNotification)
.class public Linfo/flowersoft/theotown/components/notification/CitySizeNotification;
.super Linfo/flowersoft/theotown/city/components/Notification;
.source "CitySizeNotification.java"


# instance fields
.field public size:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;I)V
    .registers 3

    .line 19
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/city/components/Notification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 20
    iput p2, p0, Linfo/flowersoft/theotown/components/notification/CitySizeNotification;->size:I

    return-void
.end method


# virtual methods
.method public checkCondition()Z
    .registers 3

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/People;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result v0

    iget v1, p0, Linfo/flowersoft/theotown/components/notification/CitySizeNotification;->size:I

    if-lt v0, v1, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getID()Ljava/lang/String;
    .registers 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$citysize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/components/notification/CitySizeNotification;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconID()I
    .registers 2

    .line 35
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MAYOR:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x409

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/notification/CitySizeNotification;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isImmersive()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public showOnlyOnce()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
