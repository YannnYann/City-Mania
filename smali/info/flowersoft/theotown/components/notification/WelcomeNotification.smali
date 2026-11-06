###### Class info.flowersoft.theotown.components.notification.WelcomeNotification (info.flowersoft.theotown.components.notification.WelcomeNotification)
.class public Linfo/flowersoft/theotown/components/notification/WelcomeNotification;
.super Linfo/flowersoft/theotown/city/components/Notification;
.source "WelcomeNotification.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 16
    new-instance v0, Linfo/flowersoft/theotown/components/notification/condition/TrueCondition;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/notification/condition/TrueCondition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/city/components/Notification;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .registers 2

    .line 21
    const-string v0, "$welcome"

    return-object v0
.end method

.method public getIconID()I
    .registers 2

    .line 26
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MAYOR:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x2e7

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showOnlyOnce()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
