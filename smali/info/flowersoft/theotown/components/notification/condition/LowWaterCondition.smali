###### Class info.flowersoft.theotown.components.notification.condition.LowWaterCondition (info.flowersoft.theotown.components.notification.condition.LowWaterCondition)
.class public Linfo/flowersoft/theotown/components/notification/condition/LowWaterCondition;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "LowWaterCondition.java"


# instance fields
.field public final triggerRatio:F

.field public triggered:Z

.field public final untriggerRatio:F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;FF)V
    .registers 4

    .line 18
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 19
    iput p2, p0, Linfo/flowersoft/theotown/components/notification/condition/LowWaterCondition;->triggerRatio:F

    .line 20
    iput p3, p0, Linfo/flowersoft/theotown/components/notification/condition/LowWaterCondition;->untriggerRatio:F

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 6

    .line 25
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/Condition;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 27
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/Condition;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultWater;

    const/4 v2, 0x0

    move v3, v1

    .line 29
    :goto_16
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWater;->countNetworks()I

    move-result v4

    if-ge v3, v4, :cond_27

    .line 30
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/components/DefaultWater;->usageRatio(I)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 33
    :cond_27
    iget v0, p0, Linfo/flowersoft/theotown/components/notification/condition/LowWaterCondition;->triggerRatio:F

    cmpl-float v0, v2, v0

    if-gez v0, :cond_37

    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/condition/LowWaterCondition;->triggered:Z

    if-eqz v0, :cond_38

    iget v0, p0, Linfo/flowersoft/theotown/components/notification/condition/LowWaterCondition;->untriggerRatio:F

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_38

    :cond_37
    const/4 v1, 0x1

    :cond_38
    iput-boolean v1, p0, Linfo/flowersoft/theotown/components/notification/condition/LowWaterCondition;->triggered:Z

    return v1
.end method
