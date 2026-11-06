###### Class info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController (info.flowersoft.theotown.components.traffic.flyingobjectcontroller.OperationalHelicopterController)
.class public abstract Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;
.super Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;
.source "OperationalHelicopterController.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/actionplace/ActionPlaceHandler;


# instance fields
.field public actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

.field public actionPlaceType:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;I)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V

    .line 31
    iput p3, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->actionPlaceType:I

    return-void
.end method


# virtual methods
.method public finishedFlightCommand(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 5

    .line 46
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->onTarget(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    .line 48
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->isImportant(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 49
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->onActionPlace(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    iget v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->actionPlaceType:I

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualX()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualY()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->removeActionPlace(III)V

    return-void

    .line 52
    :cond_1f
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualX()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualY()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->flyTo(Linfo/flowersoft/theotown/city/objects/FlyingObject;IIZ)V

    :cond_2b
    return-void
.end method

.method public flyToBase(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 5

    .line 161
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->getBuildingData(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 163
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->getInnerX(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->getInnerY(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v0

    add-int/2addr v2, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v2, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->flyTo(Linfo/flowersoft/theotown/city/objects/FlyingObject;IIZ)V

    :cond_1c
    return-void
.end method

.method public final getBuildingData(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 7

    .line 132
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    const/16 p1, 0x20

    const/16 v2, 0xa

    .line 133
    invoke-static {v0, v1, v2, p1}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v3

    long-to-int p1, v3

    const/16 v3, 0x2a

    .line 134
    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    long-to-int v0, v0

    .line 136
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p1, v0}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 137
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, v0}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 140
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    if-ne v2, p1, :cond_2f

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p1

    if-ne p1, v0, :cond_2f

    return-object v1

    :cond_2f
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getBuildings()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDraft(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/draft/FlyingObjectDraft;
.end method

.method public getInnerX(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 2

    .line 115
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public getInnerY(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 2

    .line 119
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public final isImportant(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Z
    .registers 7

    .line 149
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    const/16 p1, 0x34

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    const-wide/16 v3, 0x1

    cmp-long p1, v0, v3

    if-nez p1, :cond_10

    return v2

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public notifyAction(Ljava/util/List;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/MapArea;",
            ">;I)V"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 170
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_76

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_76

    const/4 v1, 0x0

    move v2, v1

    .line 171
    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 172
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/MapArea;

    .line 173
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/MapArea;->getCenterX()F

    move-result v4

    float-to-int v4, v4

    .line 174
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/MapArea;->getCenterY()F

    move-result v3

    float-to-int v3, v3

    const/4 v5, -0x1

    const v6, 0x7fffffff

    move v7, v1

    .line 178
    :goto_36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_61

    .line 179
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    .line 180
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualX()I

    move-result v9

    sub-int v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualY()I

    move-result v8

    sub-int v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v8, v6, :cond_5e

    move v5, v7

    move v6, v8

    :cond_5e
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 187
    :cond_61
    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    .line 188
    invoke-virtual {p0, v5, v4, v3, v1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->flyTo(Linfo/flowersoft/theotown/city/objects/FlyingObject;IIZ)V

    const/4 v3, 0x1

    .line 189
    invoke-virtual {p0, v5, v3}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->setImportant(Linfo/flowersoft/theotown/city/objects/FlyingObject;Z)V

    .line 190
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    invoke-virtual {v3, p2}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->registerSolver(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_76
    return-void
.end method

.method public notifyNoAction(I)V
    .registers 4

    const/4 p1, 0x0

    move v0, p1

    .line 197
    :goto_2
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 198
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    invoke-virtual {p0, v1, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->setImportant(Linfo/flowersoft/theotown/city/objects/FlyingObject;Z)V

    .line 199
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->resetTarget(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_23
    return-void
.end method

.method public abstract onActionPlace(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Z
.end method

.method public onSpawnedAfterSetup(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 2

    .line 0
    return-void
.end method

.method public prepare()V
    .registers 3

    .line 36
    invoke-super {p0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->prepare()V

    .line 38
    iget v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->actionPlaceType:I

    if-ltz v0, :cond_1b

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultTraffic;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getActionPlaceController()Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    .line 40
    iget v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->actionPlaceType:I

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->registerHandler(Linfo/flowersoft/theotown/components/actionplace/ActionPlaceHandler;I)V

    :cond_1b
    return-void
.end method

.method public resetTarget(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 2

    .line 157
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->flyToBase(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    return-void
.end method

.method public final setBuildingData(Linfo/flowersoft/theotown/city/objects/FlyingObject;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 16

    .line 123
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    .line 124
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p2

    .line 125
    iget-wide v1, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    const/16 v4, 0x20

    int-to-long v5, v0

    const/16 v3, 0xa

    .line 126
    invoke-static/range {v1 .. v6}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v7

    const/16 v10, 0x2a

    int-to-long v11, p2

    const/16 v9, 0xa

    .line 127
    invoke-static/range {v7 .. v12}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v0

    .line 128
    iput-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    return-void
.end method

.method public final setImportant(Linfo/flowersoft/theotown/city/objects/FlyingObject;Z)V
    .registers 9

    .line 153
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    if-eqz p2, :cond_8

    const-wide/16 v2, 0x1

    :goto_6
    move-wide v4, v2

    goto :goto_b

    :cond_8
    const-wide/16 v2, 0x0

    goto :goto_6

    :goto_b
    const/4 v2, 0x1

    const/16 v3, 0x34

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v0

    iput-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    return-void
.end method

.method public update()V
    .registers 6

    .line 61
    invoke-super {p0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->update()V

    .line 63
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->getBuildings()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_10

    :cond_f
    move v2, v1

    .line 66
    :goto_10
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_7a

    .line 67
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 68
    :goto_1d
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_39

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->getBuildingData(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 71
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 74
    :cond_39
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 75
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 77
    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_43

    :cond_56
    const/4 v1, 0x0

    :cond_57
    if-eqz v1, :cond_a9

    .line 82
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->getDraft(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    move-result-object v0

    .line 83
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->getInnerX(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v3

    add-int/2addr v2, v3

    .line 84
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->getInnerY(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v4

    add-int/2addr v3, v4

    .line 85
    invoke-virtual {p0, v0, v2, v3}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->create(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;II)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->setBuildingData(Linfo/flowersoft/theotown/city/objects/FlyingObject;Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 87
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->onSpawnedAfterSetup(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    return-void

    :cond_7a
    if-eqz v0, :cond_aa

    .line 94
    :goto_7c
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a9

    .line 95
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/OperationalHelicopterController;->getBuildingData(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    if-eqz v2, :cond_9c

    .line 96
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    goto :goto_9c

    :cond_99
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 97
    :cond_9c
    :goto_9c
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->spawner:Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;->remove(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    :cond_a9
    return-void

    .line 102
    :cond_aa
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->spawner:Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;->remove(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    return-void
.end method
