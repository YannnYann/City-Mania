###### Class info.flowersoft.theotown.components.traffic.flyingobjectcontroller.RocketController (info.flowersoft.theotown.components.traffic.flyingobjectcontroller.RocketController)
.class public Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;
.super Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;
.source "RocketController.java"


# instance fields
.field public final baseDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public causedDisaster:Z

.field public final date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public final rocketDraft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V

    .line 37
    sget-object p2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v0, "$mltry_missilesilo00"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;->baseDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 38
    sget-object p2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v0, "$rocket_mltry00"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;->rocketDraft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    const/4 p2, 0x1

    .line 40
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    return-void
.end method


# virtual methods
.method public final create(Linfo/flowersoft/theotown/city/objects/Building;II)Linfo/flowersoft/theotown/city/objects/FlyingObject;
    .registers 10

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->spawner:Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;->rocketDraft:Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result p1

    mul-int/lit8 p1, p1, 0xc

    add-int/lit8 v5, p1, -0x24

    const/4 v4, 0x0

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;->spawn(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;IIII)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    move-result-object p1

    .line 109
    invoke-virtual {p0, p1, v2, v3}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;->setState(Linfo/flowersoft/theotown/city/objects/FlyingObject;II)V

    return-object p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 141
    const-string v0, "rocket"

    return-object v0
.end method

.method public hasCausedDisasterAndReset()Z
    .registers 3

    .line 102
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;->causedDisaster:Z

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;->causedDisaster:Z

    return v0
.end method

.method public final onDespawnRocket()V
    .registers 4

    .line 88
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_41

    .line 89
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    .line 90
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->isActive()Z

    move-result v2

    if-nez v2, :cond_41

    .line 91
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v2, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_33

    .line 92
    const-class v0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/MeteoriteDisaster;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Disaster;->issue()Z

    goto :goto_3e

    .line 94
    :cond_33
    const-class v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Disaster;->issue()Z

    :goto_3e
    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;->causedDisaster:Z

    :cond_41
    return-void
.end method

.method public onSpawned(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setSpeed(F)V

    return-void
.end method

.method public onTarget(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 5

    .line 45
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getNextHeight()F

    move-result v0

    const/high16 v1, 0x42100000    # 36.0f

    add-float/2addr v0, v1

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x22

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->flyTo(IIF)V

    .line 47
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getHeight()F

    move-result v0

    const/high16 v1, 0x45000000    # 2048.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_29

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->spawner:Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;->remove(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    .line 49
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;->onDespawnRocket()V

    :cond_29
    return-void
.end method

.method public final setState(Linfo/flowersoft/theotown/city/objects/FlyingObject;II)V
    .registers 16

    .line 114
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    const/16 v3, 0x36

    int-to-long v4, p2

    const/16 v2, 0xa

    .line 115
    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v6

    const/16 v9, 0x2c

    int-to-long v10, p3

    const/16 v8, 0xa

    .line 116
    invoke-static/range {v6 .. v11}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide p2

    .line 117
    iput-wide p2, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    return-void
.end method

.method public update()V
    .registers 9

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;->baseDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    .line 61
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v1

    .line 63
    new-instance v2, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v2, v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 64
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_1b

    .line 66
    :cond_2e
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 67
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 69
    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getFlyingObject(II)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    move-result-object v5

    if-eqz v5, :cond_4d

    goto :goto_1b

    .line 72
    :cond_4d
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getAnimationTimeShift(I)I

    move-result v5

    .line 73
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_6d

    .line 74
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const v4, 0x3d4ccccd    # 0.05f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1b

    const/4 v3, 0x1

    .line 75
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/objects/Building;->setFrame(I)V

    .line 76
    invoke-virtual {v2, v1, v7}, Linfo/flowersoft/theotown/city/objects/Building;->setAnimationTimeShift(II)V

    goto :goto_1b

    :cond_6d
    const/16 v6, 0x2710

    if-le v5, v6, :cond_78

    .line 79
    invoke-virtual {v2, v7}, Linfo/flowersoft/theotown/city/objects/Building;->setFrame(I)V

    .line 80
    invoke-virtual {v2, v1, v7}, Linfo/flowersoft/theotown/city/objects/Building;->setAnimationTimeShift(II)V

    goto :goto_1b

    :cond_78
    const/16 v6, 0x7d0

    if-le v5, v6, :cond_1b

    .line 82
    invoke-virtual {p0, v2, v3, v4}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/RocketController;->create(Linfo/flowersoft/theotown/city/objects/Building;II)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    goto :goto_1b

    :cond_80
    return-void
.end method
