###### Class info.flowersoft.theotown.components.notification.condition.ZoneNeededCondition (info.flowersoft.theotown.components.notification.condition.ZoneNeededCondition)
.class public Linfo/flowersoft/theotown/components/notification/condition/ZoneNeededCondition;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "ZoneNeededCondition.java"


# instance fields
.field public state:Z

.field public zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ZoneDraft;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 20
    iput-object p2, p0, Linfo/flowersoft/theotown/components/notification/condition/ZoneNeededCondition;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/notification/condition/ZoneNeededCondition;->state:Z

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 4

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/Condition;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 27
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getLastBuildResult()Linfo/flowersoft/theotown/components/BuildCommandResult;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 29
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/condition/ZoneNeededCondition;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v1, v2, :cond_40

    .line 30
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/BuildCommandResult;->isRemove()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getPressure()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_37

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/BuildCommandResult;->getArea()I

    move-result v1

    if-nez v1, :cond_37

    .line 31
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/BuildCommandResult;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_37

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/condition/ZoneNeededCondition;->state:Z

    goto :goto_40

    .line 33
    :cond_37
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/BuildCommandResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/condition/ZoneNeededCondition;->state:Z

    .line 38
    :cond_40
    :goto_40
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/notification/condition/ZoneNeededCondition;->state:Z

    return v0
.end method
