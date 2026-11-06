###### Class info.flowersoft.theotown.components.notification.BuildingPropertyNotification (info.flowersoft.theotown.components.notification.BuildingPropertyNotification)
.class public Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "BuildingPropertyNotification.java"


# instance fields
.field public final property:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;IFF)V
    .registers 6

    .line 19
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 20
    iput p2, p0, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;->property:I

    .line 21
    new-instance v0, Linfo/flowersoft/theotown/components/notification/condition/BuildingPropertyCondition;

    invoke-direct {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/notification/condition/BuildingPropertyCondition;-><init>(Linfo/flowersoft/theotown/city/City;IFF)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    return-void
.end method


# virtual methods
.method public getLocationBuilding()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 3

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Notification;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 32
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v0

    .line 33
    iget-object v0, v0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    iget v1, p0, Linfo/flowersoft/theotown/components/notification/BuildingPropertyNotification;->property:I

    aget-object v0, v0, v1

    .line 34
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->getBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

.method public hasLocation()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
