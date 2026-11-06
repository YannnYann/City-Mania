###### Class info.flowersoft.theotown.components.traffic.carcontroller.GenericCarController (info.flowersoft.theotown.components.traffic.carcontroller.GenericCarController)
.class public Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;
.super Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;
.source "GenericCarController.java"


# instance fields
.field public final buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final carDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/CarDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final carSpawnerDraft:Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

.field public final eventMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

.field public final targetBuildingIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final targetBuildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final targetBusStopIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final targetBusStops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BusStopDraft;",
            ">;"
        }
    .end annotation
.end field

.field public transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

.field public final upgradeDraft:Linfo/flowersoft/theotown/draft/UpgradeDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;Linfo/flowersoft/theotown/draft/BuildingDraft;Linfo/flowersoft/theotown/draft/UpgradeDraft;Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;)V
    .registers 7

    const/4 v0, -0x1

    .line 50
    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;I)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBuildings:Ljava/util/List;

    .line 39
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBuildingIds:Ljava/util/Set;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBusStops:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBusStopIds:Ljava/util/Set;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->carDrafts:Ljava/util/List;

    .line 52
    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 53
    iput-object p3, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->upgradeDraft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 54
    iput-object p4, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->carSpawnerDraft:Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    .line 56
    iget-object p3, p4, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->targetIds:[Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->addTargetsById(Linfo/flowersoft/theotown/draft/BuildingDraft;[Ljava/lang/String;)V

    .line 57
    iget-object p3, p4, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->targetTags:[Ljava/lang/String;

    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->addTargetsByTag([Ljava/lang/String;)V

    .line 59
    iget-object p3, p4, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->cars:[Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 60
    :goto_41
    iget-object p3, p4, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->tags:[Ljava/lang/String;

    array-length v0, p3

    if-ge p1, v0, :cond_52

    .line 61
    aget-object p3, p3, p1

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->carDrafts:Ljava/util/List;

    const-class v1, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {v0, p3, v1}, Linfo/flowersoft/theotown/resources/Drafts;->collectDraftsWithTag(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Class;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_41

    .line 65
    :cond_52
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    const-string p3, "event"

    invoke-virtual {p1, p3, p2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->eventMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    return-void
.end method


# virtual methods
.method public final addTargetsById(Linfo/flowersoft/theotown/draft/BuildingDraft;[Ljava/lang/String;)V
    .registers 7

    if-nez p2, :cond_3

    goto :goto_51

    :cond_3
    const/4 v0, 0x0

    .line 91
    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_51

    .line 92
    aget-object v1, p2, v0

    if-eqz v1, :cond_42

    .line 93
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_42

    .line 97
    :cond_12
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    .line 98
    instance-of v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v2, :cond_2e

    .line 99
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBuildings:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBuildingIds:Ljava/util/Set;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 101
    :cond_2e
    instance-of v2, v1, Linfo/flowersoft/theotown/draft/BusStopDraft;

    if-eqz v2, :cond_4e

    .line 102
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBusStops:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBusStopIds:Ljava/util/Set;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 94
    :cond_42
    :goto_42
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBuildings:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBuildingIds:Ljava/util/Set;

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4e
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_51
    :goto_51
    return-void
.end method

.method public final addTargetsByTag([Ljava/lang/String;)V
    .registers 9

    if-nez p1, :cond_3

    goto :goto_51

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 71
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_51

    .line 72
    aget-object v2, p1, v1

    .line 73
    const-class v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 74
    const-class v4, Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-static {v2, v4}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 76
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBuildings:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v4, v0

    .line 77
    :goto_1c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_32

    .line 78
    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBuildingIds:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 81
    :cond_32
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBusStops:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v3, v0

    .line 82
    :goto_38
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4e

    .line 83
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBusStopIds:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v5, v5, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_51
    :goto_51
    return-void
.end method

.method public configureSampler(Linfo/flowersoft/theotown/city/BuildingSampler;)V
    .registers 6

    .line 231
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->configureSampler(Linfo/flowersoft/theotown/city/BuildingSampler;)V

    .line 232
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBuildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 233
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBuildings:Ljava/util/List;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/BuildingSampler;->setBuildings(Linfo/flowersoft/theotown/util/SortedList;)V

    :cond_2a
    return-void
.end method

.method public final emitCarEvent(Linfo/flowersoft/theotown/city/objects/Car;Ljava/lang/String;I)V
    .registers 13

    .line 134
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getBuildingData(Linfo/flowersoft/theotown/city/objects/Car;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 135
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-ne v0, v1, :cond_47

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    if-eqz v0, :cond_2d

    .line 137
    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->onEventTransitions:Ljava/util/List;

    .line 139
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v3

    iget-object v5, v3, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 140
    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v6

    move-object v3, p2

    .line 137
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->accept(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;Ljava/lang/String;Ljava/lang/String;Lvm2/LuaValue;Z)Z

    .line 141
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->run()V

    .line 144
    :cond_2d
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->eventMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v3, :cond_47

    .line 146
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    iget p2, p1, Linfo/flowersoft/theotown/city/objects/Car;->frame:I

    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget v0, p1, Linfo/flowersoft/theotown/draft/CarDraft;->framesPerVariant:I

    div-int v6, p2, v0

    iget-object v8, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    move v7, p3

    .line 145
    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(IIIILvm2/LuaValue;)Z

    :cond_47
    return-void
.end method

.method public getCarDrafts(Linfo/flowersoft/theotown/draft/BuildingDraft;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/CarDraft;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->carDrafts:Ljava/util/List;

    return-object p1
.end method

.method public getMaxCarCountOf(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 2

    .line 282
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->carSpawnerDraft:Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->count:I

    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenericCarController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->carSpawnerDraft:Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoadLevel()I
    .registers 2

    .line 272
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->carSpawnerDraft:Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->level:I

    return v0
.end method

.method public getSoundID(Linfo/flowersoft/theotown/city/objects/Car;)I
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getStationRadius(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 2

    .line 277
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->carSpawnerDraft:Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->radius:I

    return p1
.end method

.method public getStations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    return-object v0
.end method

.method public getWealthLevel()I
    .registers 2

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public hasBusStopTargets()Z
    .registers 2

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBusStops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isValidStation(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 3

    .line 225
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->isValidStation(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->upgradeDraft:Linfo/flowersoft/theotown/draft/UpgradeDraft;

    if-eqz v0, :cond_10

    .line 226
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_10
    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public onSpawn(Linfo/flowersoft/theotown/city/objects/Car;)Z
    .registers 4

    .line 189
    const-string v0, "car spawned"

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->emitCarEvent(Linfo/flowersoft/theotown/city/objects/Car;Ljava/lang/String;I)V

    .line 193
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->onSpawn(Linfo/flowersoft/theotown/city/objects/Car;)Z

    move-result p1

    return p1
.end method

.method public onTarget(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 7

    .line 180
    const-string v0, "car reached"

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->emitCarEvent(Linfo/flowersoft/theotown/city/objects/Car;Ljava/lang/String;I)V

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->onTarget(Linfo/flowersoft/theotown/city/objects/Car;III)Z

    move-result p1

    return p1
.end method

.method public onWorkDone(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 5

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public prepare(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 126
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->prepare(Linfo/flowersoft/theotown/city/City;)V

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->onEventTransitions:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 129
    new-instance v0, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    :cond_10
    return-void
.end method

.method public register(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 4

    .line 120
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->flags:I

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->carSpawnerDraft:Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft$CarSpawnerDraft;->carFlags:I

    or-int/2addr v0, v1

    iput v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->flags:I

    .line 121
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->register(Linfo/flowersoft/theotown/city/objects/Car;)V

    return-void
.end method

.method public sampleBusStopTarget(Linfo/flowersoft/theotown/city/objects/Building;II)Linfo/flowersoft/theotown/city/objects/BusStop;
    .registers 12

    .line 244
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->getStationRadius(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 245
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v3

    div-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 246
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    div-int/2addr p1, v2

    add-int/2addr v3, p1

    const/4 p1, 0x0

    .line 248
    :goto_20
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/BusStopList;->size()I

    move-result v4

    const/16 v5, 0xa

    div-int/2addr v4, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge p1, v4, :cond_83

    .line 250
    :try_start_33
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/BusStopList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 251
    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v5

    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/city/BusStopList;->get(I)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v4

    if-eqz v4, :cond_80

    .line 252
    sget-object v5, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->DISTANCE:Linfo/flowersoft/theotown/util/Distance;

    .line 253
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v6

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v7

    invoke-virtual {v5, p2, p3, v6, v7}, Linfo/flowersoft/theotown/util/Distance;->get(IIII)I

    move-result v6

    if-lt v6, v2, :cond_80

    .line 254
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v6

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v7

    invoke-virtual {v5, v6, v7, v1, v3}, Linfo/flowersoft/theotown/util/Distance;->get(IIII)I

    move-result v5

    if-gt v5, v0, :cond_80

    iget-object v5, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->targetBusStopIds:Ljava/util/Set;

    .line 255
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object v6

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_79} :catch_7c

    if-eqz v5, :cond_80

    return-object v4

    :catch_7c
    move-exception v4

    .line 259
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_80
    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    :cond_83
    const/4 p1, 0x0

    return-object p1
.end method

.method public unregister(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 4

    .line 198
    const-string v0, "car despawned"

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/GenericCarController;->emitCarEvent(Linfo/flowersoft/theotown/city/objects/Car;Ljava/lang/String;I)V

    .line 200
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->unregister(Linfo/flowersoft/theotown/city/objects/Car;)V

    return-void
.end method
