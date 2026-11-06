###### Class info.flowersoft.theotown.components.notification.condition.BuildingPropertyCondition (info.flowersoft.theotown.components.notification.condition.BuildingPropertyCondition)
.class public Linfo/flowersoft/theotown/components/notification/condition/BuildingPropertyCondition;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "BuildingPropertyCondition.java"


# instance fields
.field public final property:I

.field public final threshold:F

.field public triggered:Z

.field public final untriggerThreshold:F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;IFF)V
    .registers 5

    .line 22
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 23
    iput p2, p0, Linfo/flowersoft/theotown/components/notification/condition/BuildingPropertyCondition;->property:I

    .line 24
    iput p3, p0, Linfo/flowersoft/theotown/components/notification/condition/BuildingPropertyCondition;->threshold:F

    .line 25
    iput p4, p0, Linfo/flowersoft/theotown/components/notification/condition/BuildingPropertyCondition;->untriggerThreshold:F

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 5

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/Condition;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 32
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/Condition;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 33
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v0

    .line 34
    iget-object v0, v0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    iget v2, p0, Linfo/flowersoft/theotown/components/notification/condition/BuildingPropertyCondition;->property:I

    aget-object v0, v0, v2

    .line 35
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->isSet()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->getValue()F

    move-result v2

    iget v3, p0, Linfo/flowersoft/theotown/components/notification/condition/BuildingPropertyCondition;->threshold:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_37

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->getBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_37
    iget-boolean v2, p0, Linfo/flowersoft/theotown/components/notification/condition/BuildingPropertyCondition;->triggered:Z

    if-eqz v2, :cond_56

    .line 36
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->isSet()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->getValue()F

    move-result v2

    iget v3, p0, Linfo/flowersoft/theotown/components/notification/condition/BuildingPropertyCondition;->untriggerThreshold:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_56

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->getBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    if-nez v0, :cond_56

    :cond_55
    const/4 v1, 0x1

    :cond_56
    iput-boolean v1, p0, Linfo/flowersoft/theotown/components/notification/condition/BuildingPropertyCondition;->triggered:Z

    return v1
.end method
