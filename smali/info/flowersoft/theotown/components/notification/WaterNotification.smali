###### Class info.flowersoft.theotown.components.notification.WaterNotification (info.flowersoft.theotown.components.notification.WaterNotification)
.class public Linfo/flowersoft/theotown/components/notification/WaterNotification;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "WaterNotification.java"


# instance fields
.field public final textId:I

.field public final value:F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;IFF)V
    .registers 6

    .line 21
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 22
    new-instance v0, Linfo/flowersoft/theotown/components/notification/condition/LowWaterCondition;

    invoke-direct {v0, p1, p3, p4}, Linfo/flowersoft/theotown/components/notification/condition/LowWaterCondition;-><init>(Linfo/flowersoft/theotown/city/City;FF)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    .line 23
    iput p2, p0, Linfo/flowersoft/theotown/components/notification/WaterNotification;->textId:I

    .line 24
    iput p3, p0, Linfo/flowersoft/theotown/components/notification/WaterNotification;->value:F

    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .registers 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$water"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/components/notification/WaterNotification;->value:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconID()I
    .registers 2

    .line 34
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_WORKMAN:I

    return v0
.end method

.method public getLocationBuilding()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 6

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultWater;

    .line 50
    new-instance v1, Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-direct {v1}, Lio/blueflower/stapel2d/util/MinimumSelector;-><init>()V

    const/4 v2, 0x0

    .line 52
    :goto_10
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWater;->countNetworks()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/DefaultWater;->usageRatio(I)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Lio/blueflower/stapel2d/util/MinimumSelector;->assume(Ljava/lang/Object;F)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 56
    :cond_25
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/MinimumSelector;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 57
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/MinimumSelector;->getMinimum()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultWater;->sampleProducer(I)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    if-nez v2, :cond_40

    .line 59
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultWater;->sampleConsumer(I)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0

    :cond_40
    return-object v2

    :cond_41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/notification/WaterNotification;->textId:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLocation()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
