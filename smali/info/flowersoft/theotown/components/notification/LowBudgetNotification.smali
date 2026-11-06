###### Class info.flowersoft.theotown.components.notification.LowBudgetNotification (info.flowersoft.theotown.components.notification.LowBudgetNotification)
.class public Linfo/flowersoft/theotown/components/notification/LowBudgetNotification;
.super Linfo/flowersoft/theotown/city/components/Notification;
.source "LowBudgetNotification.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 17
    new-instance v0, Linfo/flowersoft/theotown/components/notification/condition/LowBudgetCondition;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1, p1}, Linfo/flowersoft/theotown/components/notification/condition/LowBudgetCondition;-><init>(ILinfo/flowersoft/theotown/city/City;)V

    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/city/components/Notification;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getActions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .line 22
    const-string v0, "$lowbudget"

    return-object v0
.end method

.method public getIconID()I
    .registers 2

    .line 27
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_JUDGE:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 32
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x5e9

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
